//Superscript
//Subscript
Table species;
ArrayList<ChemButton> Buttons = new ArrayList<ChemButton>();
ArrayList<Specie> Species = new ArrayList<Specie>();
Display display = new Display();
int maxOnScreen = 24, panelWidth = 300, scrollWidth = 100;
int finalPanelWidth = panelWidth + scrollWidth;


//ScrollWheel s = new ScrollWheel(400, 200, 100, 100, "");

public void setup() {
  size(1000, 800);
  getElements();
  spawnSpecies();
  createFont("arial-unicode-ms.ttf", 12);
}
Button nextPage = new Button(panelWidth, 400, scrollWidth, 400, "Scroll Down");
Button prevPage = new Button(panelWidth, 0, scrollWidth, 400, "Scroll Up");
public void draw() {
  background(255);
  scroll();
  prevPage.click();
  nextPage.click();
  showLeftPanel();

  nextPage.show();
  prevPage.show();
}

public void spawnSpecies() {
  species = loadTable("Chemicals.tsv", "tsv");
  fill(255, 0, 0);
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
    Buttons.add(new ChemButton(0, i * height/( maxOnScreen), panelWidth, height/maxOnScreen+1, Species.get(i)));
  }
}

public void showLeftPanel() {
  for (int i = 1; i < Species.size(); i++) {
    Buttons.get(i).show();
    Buttons.get(i).click();
    Buttons.get(i).displayName();
  }
  fill(255);
  rect(0, 0, panelWidth, height/maxOnScreen);
  fill(0);
  textSize(16);
  text("Chemicals", panelWidth/8, 10);
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

public void scroll() {
  if (Buttons.get(Buttons.size()-1).getY() >= height) {
    if (nextPage.click()) {
      for (int i = 1; i < Species.size(); i++) {
        Buttons.get(i).scrollDown();
      }
    }
  }
  println(Buttons.get(1).getY());
  println(height/maxOnScreen);
  if (Buttons.get(1).getY() <= height/maxOnScreen-10) {
    if (prevPage.click()) {
      for (int i = 1; i < Species.size(); i++) {
        Buttons.get(i).scrollUp();
      }
    }
  }
}



/*
public void mousePressed() {
 s.setOffset();
 }
 
 public void mouseDragged() {
 s.click();
 s.drag();
 }
 */
