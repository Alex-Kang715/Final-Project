public class Button {
  private int x1, x2, y1, y2;
  private color c = color(255, 255, 255);
  private String text;

  public Button(int x1, int y1, int x2, int y2, String text) {
    this.x1 = x1;
    this.x2 = x2;
    this.y1 = y1;
    this.y2 = y2;
    this.text = text;
  }
  public void show() {
    rectMode(CORNERS);
    fill(c);
    rect(x1, y1, x2, y2);
    textAlign(CENTER);
    fill(0);
    textSize(26);
    text(text, ((x1+x2)/2), ((y1+y2)/2));
  }
  public boolean click() {
    boolean clicked = false;
    if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2 && mousePressed) {
      return true;
    }
    return clicked;
  }
}
