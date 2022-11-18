class Transition {
  int input;
  Node a;
  Node b;
  
  public Transition(int input, Node a, Node b) {
    this.input = input;
    this.a = a;
    this.b = b;
  }
  
  public int getInput() {
    return input;
  }
  
  public Node getSource() {
    return a;
  }
  
  public Node getDestination() {
    return b;
  }
}
