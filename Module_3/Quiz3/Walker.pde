public class Walker
{
  public float x;
  public float y;
  public float tx = 0, ty = 10000;
  public float t = 0;
  public float s;
  public float r;
  public float g;
  public float b;
  public float a;
  
  void render()
  {
    noStroke();
    float s = randomGaussian();
    circle(x, y, s * 50);
  }
  
  void perlinWalk()
  {
    x = map(noise(tx),0, 1,-640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
   
    tx += 0.01f;
    ty += 0.01f;
    
    
  }
  
   void randomColor()
    {
      int r = int(random(0,255));
      int g = int(random(0,255));
      int b = int(random(0,255));
      int a = int(random(10, 100));
    
      fill(r, g, b, a);
      
    }
    
   
}
