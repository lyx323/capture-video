#include<iostream>
#include<opencv2/highgui/highgui.hpp>
#include<opencv/cv.h>
#include<string>

int main(int argc, char ** argv)
{
     //cv::VideoCapture cap("/home/lyx/datasets/vedio/hiro.mp4");
     //cv::VideoCapture capture("../hiro.mp4");
    // long totalFrameNum = cap.get(CV_CAP_PROP_FRAME_COUNT);
    // cout << "total frame" << totalFrameNum << endl;
    // Mat frame;
    // bool flags = true;
    // long currentFrame = 0;
    // int count(1);
    // //namedWindow("src");
    // while (flags)
    // {
    //     cap.read(frame);
    //     // imshow("src",frame);
    //     //waitKey(50);
    //     stringstream str;
    //     cout << "dealing " << currentFrame << " frame" << endl;
    //     //str << currentFrame << ".jpg";
    //     if (currentFrame % 10 == 0)
    //     {
    //         str << count<< ".jpg";
    //         imwrite("/home/lyx/datasets/vedio/hiro/" +str.str(), frame);
    //         count++;
    //     }


    //     if (currentFrame>=totalFrameNum)
    //     {
    //         flags = false;
    //     }

    //     currentFrame++;

    // }
    // cap.release();

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

  return 0;
}
