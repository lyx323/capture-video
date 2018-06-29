#include<iostream>
#include<opencv2/highgui/highgui.hpp>
#include<opencv/cv.h>
#include<string>

int main(int argc, char ** argv)
{
	cv::VideoCapture capture("../hiro.mp4");
	if(!capture.isOpened())
		return 1;
	double rate = capture.get(CV_CAP_PROP_FPS);
	std::cout<<"Video rate: "<<rate<<std::endl;
	bool stop(false);
	cv::Mat frame;
	cv::namedWindow("capturevedio-demo");
	int delay = 1000/rate;
	while(!stop)
	{
		if(!capture.read(frame))
		break;
		cv::imshow("capturevedio-demo",frame);
		//cv::waitKey(10);
		if(cv::waitKey(delay)>0)
			stop = true;
	}
	capture.release();

  return 0;
}
