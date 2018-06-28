#include<iostream>
#include<opencv2/highgui/highgui.hpp>
#include<opencv/cv.h>
#include<string>
using namespace cv;

int main(int argc, char ** argv)
{
  string video_file = "./hiro.mp4";
  CvCapture * capture = 0;
  IplImage * frame, * gray_frame = 0;

  cvNamedWindow("capturevedio-demo", 1 );
  capture = cvCreateFileCapture(video_file.c_str());
  int64 timer = cvGetTickCount();

  bool stop = false;
  do 
  {
       if (cvGrabFrame(capture) == 0) break;
           frame = cvRetrieveFrame(capture); 

       if (frame == 0) break;

       if (gray_frame == 0)
           gray_frame = cvCreateImage(cvSize(frame->width,frame->height), IPL_DEPTH_8U, 1);

    cvCvtColor(frame, gray_frame, CV_RGB2GRAY);

    if (frame->origin != IPL_ORIGIN_TL)
      cvFlip(gray_frame, gray_frame, 0);

    cvShowImage("capturevedio-demo",gray_frame);

    int64 now = cvGetTickCount();
    double fps = 1e6 * cvGetTickFrequency()/double(now-timer);
    timer = now;
    std::cout << "Detection frame rate: " << fps << " fps         \r"<<std::endl;

    int key = cvWaitKey(10);

  } while(!stop);

  cvReleaseImage(&gray_frame);
  cvReleaseCapture(&capture);
  cvDestroyWindow("ferns-demo");

  return 0;
}
