



class Display_Cam
{


  //----GLOBAL VARIABLES----
  int CX;
  int CY;
  int CZ;
  int TX;
  int TY;
  int TZ;
  float UpX;
  float UpY;
  float UpZ;
  PImage img;
  //----GLOBAL VARIABLES----

  //----CONSTRUCTOR----
  Display_Cam(int cx, int cy, int cz, int tx, int ty, int tz, float upx, float upy, float upz) {
    CX = cx;
    CY = cy;
    CZ = cz;
    TX = tx;
    TY = ty;
    TZ = tz;
    UpX = upx;
    UpY = upy;
    UpZ = upz;
  }    // Close constructor  
  //----CONSTRUCTOR----

  PImage Image(int W, int H) {

    img = createImage(W, H, RGB);
    return img;
  }
}    // Close the class

