public class Button {
  private int x1, x2, y1, y2;
  private color c = color(0, 0, 0);
  public Button(int x1, int y1, int x2, int y2, color c) {
    this.x1 = x1;
    this.x2 = x2;
    this.y1 = y1;
    this.y2 = y2;
    this.c = c;
  }
  public void show() {
    rectMode(CORNERS);
    fill(c);
    rect(x1, y1, x2, y2);
  }
  public boolean click() {
    if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
      return true;
    }
    return false;
  }
}
