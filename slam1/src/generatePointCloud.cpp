#include<iostream>
#include<string>
#include<opencv2/core/core.hpp>
#include<opencv2/highgui/highgui.hpp>
#include<pcl/io/pcd_io.h>
#include<pcl/point_types.h>

using namespace std;
using namespace cv;
using namespace pcl;
// parameter
const double camera_factor = 1000;
const double camera_cx = 325.5;
const double camera_cy = 253.5;
const double camera_fx = 518.0;
const double camera_fy = 519.0;

int main(int argc,char** argv)
{
    Mat rgb,depth;
    rgb=imread("../data/rgb.png");
    depth=imread("../data/depth.png",-1);//16uc1 -1 represent no modify
    if(rgb.data==NULL || depth.data==NULL)
    {
        cout<<"NO image for using"<<endl;
        return 1;
    }

    PointCloud<PointXYZRGBA>::Ptr cloud(new PointCloud<PointXYZRGBA>);//smart ptr
    for(int r=0;r<depth.rows;++r)
    {
        ushort *depthptr=depth.ptr<ushort>(r);
        uchar *rgbptr=rgb.ptr<uchar>(r);
        for(int c=0;c<depth.cols;++c)
        {
            ushort d=depthptr[c];
            if(d==0)
                continue;
            PointXYZRGBA point;
            point.z=(double)d/camera_factor;
            point.x=(c-camera_cx)*point.z/camera_fx;
            point.y=(r-camera_cy)*point.z/camera_fy;
            point.b=rgbptr[3*c];
            point.g=rgbptr[3*c+1];
            point.r=rgbptr[3*c+2];
            //PointCloud has vector
            cloud->points.push_back(point);
        }
    }
    //
    cloud->height=1;
    cloud->width=cloud->points.size();
    cout<<"point cloud size is: "<<cloud->points.size()<<endl;
    cloud->is_dense=-1;
    io::savePCDFile("../data/pointcloud.pcd",*cloud);
    cloud->points.clear();
    cout<<"pcd file is saved"<<endl;
    return 0;
}
