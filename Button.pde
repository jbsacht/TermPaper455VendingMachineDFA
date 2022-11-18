public class Button {
  int x;
  int y;
  int output;
  String text = "";
  public Button(int x, int y, int output) {
    this.x = x;
    this.y = y;
    this.output = output;
    if(output == 0) text = "clear";
    if(output == 1) text = "A";
    if(output == 2) text = "B";
  }
  
  public void display() {
    fill(255, 0, 0);
    rect(x, y, 210, 95);
    fill(0, 0, 0);
    text(text, x + 80, y + 30);
  }
  
  public boolean isPressed(){
    return mouseX >= x && mouseX <= x+210 && mouseY>=y && mouseY <= y+100;
  }
  
  public int getOutput() {
    return output;
  }
}
