public void setup () {
  size(600, 600);
}


VendingMachine v = new VendingMachine();

public void draw () {
  background(150, 190, 255);
  v.display();
}

public void mouseClicked() {
  v.checkButtonPress();
}
