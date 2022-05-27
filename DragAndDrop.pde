public class DragAndDrop extends Button {
  private int sizeX1, sizeX2, sizeY1, sizeY2;
  public DragAndDrop(int x1, int y1, int x2, int y2, String text) {
    super(x1, y1, x2, y2, text);
  }
  public void setOffset() {
    if (this.click() == true) {
      sizeX1 = super.x1-mouseX;
      sizeX2 = super.x2-mouseX;
      sizeY1 = super.y1-mouseY;
      sizeY2 = super.y2-mouseY;
    }
  }
  public void drag() {
    if (this.click() == true) {
      super.x1 = mouseX+sizeX1;
      super.x2 = mouseX+sizeX2;
      super.y1 = mouseY+sizeY1;
      super.y2 = mouseY+sizeY2;
    }
  }
}
