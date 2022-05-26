public class Specie {
  private double molarMass, gibbs, enthalpy, entropy;
  private String[] names = new String[3];
  private String state, stateToDisplay;

  public Specie(String formula, String name1, String name2, String stateToDisplay, double h, double s, double g) {
    this.names[0] = formula;
    this.names[1] = name1;
    this.names[2] = name2;
    this.stateToDisplay = stateToDisplay;
    state = stateToDisplay.substring(1, 2);
    this.enthalpy = h;
    this.entropy = s;
    this.gibbs = g;
  }
  public double getGibbs(){
    return gibbs;
  }

  public void getComponentElements() {
    String substring = this.names[0].substring(0, 1);
  }

  public void getMolarMass() {
    String substring = this.names[0].substring(0, 1);
  }
}
