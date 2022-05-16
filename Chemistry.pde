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
  table = loadTable("Chemicals.tsv", "header");
  for (int i = 0; i < table.getRowCount(); i++) {
    println(table.getString("name"));
  }
}
