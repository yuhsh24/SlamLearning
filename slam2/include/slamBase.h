#ifndef _SLAMBASE_H_
#define _SLAMBASE_H_

#include<fstream>
#include<vector>

#include<opencv2/core/core.hpp>
#include<opencv2/highgui/highgui.hpp>

#include<pcl/io/pcd_io.h>
#include<pcl/point_types.h>

struct CAMERA_INTRINSIC_PARAMETERS
{
    double cx;
    double cy;
    double fx;
    double fy;
    double scale;
};

pcl::PointCloud<PointXYZRGBA>::Ptr image2PoiintCloud(const cv::Mat& rgb,const cv::Mat& depth,
                                                     const CAMERA_INTRINSIC_PARAMETERS& camera);
cv::Point3f point2dTo3d(const cv::Point3f& point,const CAMERA_INTRINSIC_PARAMETERS& camera);

#endif
