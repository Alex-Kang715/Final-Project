//Superscript
//Subscript
BufferedReader reader;
Button b = new Button(100, 100, 200, 200, 128);
public void setup() {
  size(600, 400);
  reader();
  getElements();
}
public void draw() {
  b.show();
}

public void mousePressed() {
  b.click();
}

public void reader() {
  Table species;
  ArrayList<Specie> Species = new ArrayList<Specie>();
  species = loadTable("Chemicals.tsv", "tsv");
  for (int i = 0; i < species.getRowCount(); i++) {
    String formula = species.getString(i, 0);
    String name = species.getString(i, 1);
    String name2 = species.getString(i, 2);
    String state = species.getString(i, 3);
    double h = species.getDouble(i, 4);
    double s = species.getDouble(i, 5);
    double g = species.getInt(i, 6);
    Species.add(new Specie(formula, name, name2, state, h, s, g));
    System.out.println(species.getDouble(i,6));
  }
  
}

public ArrayList getElements() {
  Table elements;
  ArrayList<Element> Elements = new ArrayList<Element>(0);
  elements = loadTable("Elements.tsv", "tsv");
  for (int i = 0; i < elements.getRowCount(); i++) {
    Elements.add(new Element(elements.getString(i, 0), elements.getInt(i, 1)));
  }
  return Elements;
}
