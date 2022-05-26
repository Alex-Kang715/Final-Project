//Superscript
//Subscript
BufferedReader reader;
DragAndDrop b = new DragAndDrop(100, 100, 200, 200, "Na");
ArrayList<DragAndDrop> Buttons = new ArrayList<DragAndDrop>();
ArrayList<Specie> Species = new ArrayList<Specie>();
public void setup() {
  size(600, 400);
  getElements();
  reader();
  createFont("arial-unicode-ms.ttf", 16);
}
public void draw() {
  background(255);
  b.show();
  b.drag();
  for (int i = 0; i < Buttons.size(); i++) {
    Buttons.get(i).show();
  }
  //System.out.println(b.click());
}

public void mousePressed() {
  b.setOffset();
  for (int i = 0; i < Buttons.size(); i++) {
    Buttons.get(i).setOffset();
  }
}
public void mouseDragged() {
  b.click();
  b.drag();
  for (int i = 0; i < Buttons.size(); i++) {
    Buttons.get(i).click();
    Buttons.get(i).drag();
  }
}

public void reader() {
  Table species;
  species = loadTable("Chemicals.tsv", "tsv");

  for (int i = 0; i < species.getRowCount(); i++) {
    String formula = species.getString(i, 0);
    String name = species.getString(i, 1);
    String name2 = species.getString(i, 2);
    String state = species.getString(i, 3);
    double h = species.getDouble(i, 4);
    double s = species.getDouble(i, 5);
    double g = species.getDouble(i, 6);
    PFont font = createFont("Arial Unicode MS", 24);
    textFont(font);
    Species.add(new Specie(formula, name, name2, state, h, s, g));
    Buttons.add(new DragAndDrop((int)random(100, 200), (int)random(100, 200), (int)random(300, 400), (int)random(300, 400), Species.get(i).names[0]));
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
