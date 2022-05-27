public class Button {
  private double x, y, sizeX, sizeY;
  private color c = color(255, 255, 255);
  private String text;

  public Button(double x, double y, double sizeX, double sizeY, String text) {
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.text = text;
  }
  public void show() {
    fill(c);
    rect((float)x, (float) y, (float)sizeX, (float)sizeY);
    textAlign(LEFT, CENTER);
    fill(0);
    textSize(16);
    text(text, (float)((x+sizeX)/8 + (7*x/8)), (float) (y+sizeY/2));
  }
  public boolean click() {
    boolean clicked = false;
    if (mouseX > x && mouseX < x+sizeX && mouseY > y && mouseY < y+sizeY && mousePressed) {
      c = color(200);
      return true;
    }
    c = color(255);
    return clicked;
  }
  public double getY(){
    return y;
  }
}
