


class SaveImg implements Runnable 
{


  //----GLOBAL VARIABLES----
  String path;                     // this will hold the file path of the sketch
  Capture cam;                     // this is to record from the camera

  //int count = 0;                   // used for naming the movie files
  int w ;                         // screen resolution
  int h ;
  //----GLOBAL VARIABLES----


  //----CONSTRUCTOR----
  SaveImg(PApplet app, int W, int H, String PATH) {
    path = PATH;
    w = W;
    h = H;

    CreateFolders(path + "Cam_Images");

String[] cameras = Capture.list();                                         // get camera list

    if (cameras == null) {                                                   // if the camera is nothing
      println("FAILED TO RETRIEVE LIST OF AVAILABLE CAMERAS");
      cam = new Capture(app, w, h);
    } 

    if (cameras.length == 0) {                                                 // if there are no cameras
      println("THERE ARE NO CAMERAS AVAILABLE");
      exit();
    } else {                                                                   // if there are cameras
      println("AVAILABLE CAMERAS: ");
      for (int i = 0; i < cameras.length; i++) {                        
        println(cameras[i]);
      }  //close for

      cam = new Capture(app, w, h, 30);
      cam.start();
    }
  }//----CLOSE CONSTRUCTOR----


  //----SAVE IMAGES----
  void SaveImages(int count) {

    cam.read();
    PImage img = cam;
    try {
      img.save("Cam_Images\\Img_" + count + ".jpg");
    }
    finally {
    }
  }
  //----SAVE IMAGES----


  //----RUN THREAD----
  void run(int count) {
    SaveImages(count);
  }
  //----RUN THREAD----


  //----RUN THREAD----
  void run() {
    //SaveImages(count);
  }
  //----RUN THREAD----


  //-------------------------------------------------------------------------------
  // Create the appropiate file paths
  private void CreateFolders(String FilePath) {

    File folder = new File(FilePath);
    if (!folder.exists()) {                            //check if file path exists
      println("creating directory: " + FilePath);
      folder.mkdir();                                  //make the file path
    } else {
      println("Path: '" + FilePath + "' already exists");
    }
  }
  //-------------------------------------------------------------------------------
}        //----CLOSE CLASS----

