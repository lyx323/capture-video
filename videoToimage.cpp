#include<iostream>
#include<opencv2/highgui/highgui.hpp>
#include<opencv/cv.h>
#include<string>
#include<fstream>
using namespace std;
using namespace cv;

int main(int argc, char ** argv)
{
	ofstream file;
	file.open("/home/lyx/datasets/vedio/hiro.txt");
    cv::VideoCapture cap("/home/lyx/datasets/vedio/hiro.mp4");
    long totalFrameNum = cap.get(CV_CAP_PROP_FRAME_COUNT);
    std::cout << "total frame" << totalFrameNum << std::endl;
    cv::Mat frame;
    bool flags = true;
    long currentFrame = 0;
    int count(1);
    //namedWindow("src");
    while (flags)
    {
        cap.read(frame);
        // imshow("src",frame);
        //waitKey(50);
        std::stringstream str;
        std::cout << "dealing " << currentFrame << " frame" << std::endl;
        //str << currentFrame << ".jpg";
        if (currentFrame % 10 == 0)
        {
			
            str << count<< ".jpg";
			string s;
			str >> s;
            if(file.is_open())
				file << s <<endl;
		    imwrite("/home/lyx/datasets/vedio/hiro/" +str.str(), frame);
            count++;
        }


        if (currentFrame>=totalFrameNum)
        {
            flags = false;
        }

        currentFrame++;

    }
    cap.release();
	file.close();

  return 0;
}
