public class ChemButton extends Button {
  private Specie specie;

  public ChemButton(double x, double y, double sizeX, double sizeY, Specie specie) {
    super( x, y, sizeX, sizeY, (specie.names[1] + " " + specie.stateToDisplay));
    super.x = x;
    super.y = y;
    super.sizeX = sizeX;
    super.sizeY = sizeY;
    this.specie = specie;
  }

  public void displayName() {
    if (click()) {
      textSize(100);
      text(specie.names[0] + " " + specie.stateToDisplay, 75 + finalPanelWidth, height/4);
      textSize(40);
      text(specie.names[1] + " " + specie.stateToDisplay, 75 + finalPanelWidth, height/8);

      textSize(20);

      text("ΔH: " + Double.toString(specie.enthalpy), 100 + finalPanelWidth, 300);
      text("ΔS: " + Double.toString(specie.entropy), 250 + finalPanelWidth, 300);
      text("ΔG: " + Double.toString(specie.gibbs), 400 + finalPanelWidth, 300);
    }
  }
  public void scrollDown() {
    double itemsPerScroll = 0.25;
    super.y -= itemsPerScroll * height/maxOnScreen;
  }

  public void scrollUp() {
    double itemsPerScroll = 0.35;
    super.y += itemsPerScroll * height/maxOnScreen;
  }
}
