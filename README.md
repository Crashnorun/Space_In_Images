# Space In Images

This project is a little exploration in taking 2D images from a webcam and gives each pixel a depth value based on its color value. This is an experiment in creating 3D spaces from 2D images. This app was developed using Processing version 3.2.3, on Windows PC. Newer versions of Processing might need some minor modifications to the code.

## Intro:

This project takes live images from a web camera, saves them locally to the hard drive, and then analyzes the pixels in each image for their color value. This project was the first exploration in trying run a multithreaded Processing app. (I&#39;m not convinced the multithreading code is working correctly.) The goal was to have one thread that controlled the web camera and saving the images to a folder location on the hard drive. The second thread was intended to read the saved web camera images and preform the necessary analysis and visuals in the processing viewport.
![Diagram](https://github.com/Crashnorun/Space_In_Images/blob/master/Diagrams/Code_03.jpg)

## Requirements:

- Processing 3.2.3 or later
- Webcam (either from laptop or USB webcam)
- Canvas size must match the aspect ratio supported by the webcam

## Inputs / Controls:

This app has some basic keyboard controls to move the virtual camera around the viewport.

- **+** (plus symbol) – zoom in
- **–** (minus symbol) – zoom out
- **\*** (asterisk) – increase scale factor of the Z depth
- **/** (forward slash) – decrease the scale factor of the Z depth
- **UP** arrow – move camera up
- **DOWN** arrow – move camera down
- **LEFT** arrow – move camera left
- **RIGHT** arrow – move camera right
- **1** – reset camera position
- **2** – reset color scale
- **3** – show original captured image
- **4** – alternate camera angle
- **5** – alternate camera angle

## Results:

The resultant images are saved to a separate folder on the hard drive. Below is an example of what the app produces.
![Example result](https://github.com/Crashnorun/Space_In_Images/blob/master/Diagrams/Image_31.png)
