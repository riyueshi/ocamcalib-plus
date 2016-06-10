This code has been made to be also used separately from the toolbox. The executable works without OpenCV installed.
If you want for any reason to compile this code for other uses, then you require to install the OpenCV library.

<1> make sure you have opencv library installed. If you have it, please go to step <2>; if not, follow the tips below:
   - Go to http://sourceforge.net/projects/opencvlibrary/ and download the last version of the OpenCV library (it is free!)
   - Install OpenCV
   - go to step <2>
<2> if you have opencv already installed 
   - create a new project with you favorite integrated development environment (I use for instace Dev C++) by including the files: main.cpp, cvcalibinit3.cpp, cvcalibinit3.h
   - you will need to link the include and lib folder of OpenCV in the compiler options.
   - the OpenCV libraries that need to be linked are:  opencv_core, opencv_highgui, opencv_imgproc
<3> compile the project;

for testing, you can set the VIS flag in cvcalibinit3.cpp to 1. This will display all the processing steps.
The output corners are in the cToMatlab folder.
If you want to test the generated EXE in the toolbox, just copy the generated FindCorners.exe into the "autoCornerFinder" folder in your toolbox path, replacing the existing one.
Then, test it by the "Extract grid corners" button in the toolbox, after "Load images". 

NOTE THAT THE CODE WORKS ONLY WITH JPEG IMAGES. But under Matlab it works with any image format because Matlab pre-converts all images into JPG.
Note, if you want to display all the processing steps of the corner extraction, just change the flag VIS in cvcalibinit3.cpp to 1.
Please observe that the exetutable is called withing the "click_ima_calib_rufli.m". 


Please, if you use this code cite the following articles:

1. Scaramuzza, D., Martinelli, A. and Siegwart, R. (2006), A Toolbox for Easily Calibrating Omnidirectional Cameras, Proceedings of the IEEE/RSJ International Conference on Intelligent Robots and Systems  (IROS 2006), Beijing, China, October 2006.

2. Scaramuzza, D., Martinelli, A. and Siegwart, R., (2006). "A Flexible Technique for Accurate Omnidirectional Camera Calibration and Structure from Motion", Proceedings of IEEE International Conference of Vision Systems  (ICVS'06), New York, January 5-7, 2006.

3. Rufli, M., Scaramuzza, D., and Siegwart, R. (2008), Automatic Detection of Checkerboards on Blurred and Distorted Images, Proceedings of the IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS 2008), Nice, France, September 2008.