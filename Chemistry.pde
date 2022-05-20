BufferedReader reader;
Button b = new Button(100, 100, 200, 200, 128);
public void setup() {
  size(600, 400);
  reader();
}
public void draw() {
  b.show();
}

public void mousePressed() {
  b.click();
}

public void reader() {
  Table table;
  table = loadTable("Chemicals.tsv", "tsv");
  for (int i = 0; i < table.getRowCount(); i++) {
    String formula = table.getString(i, 0);
    String name = table.getString(i, 1);
    println(formula);
  }
}
