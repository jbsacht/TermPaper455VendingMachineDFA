public class VendingMachine {
  DFA dfa = new DFA();
  ArrayList<Button> buttons = new ArrayList<Button>();

  public VendingMachine() {
    Node start = new Node("Free stuff! Press a button!", false);
    Node a = new Node("Which drink do you want?", false);
    Node b = new Node("Which snack do you want?", false);
    Node aa = new Node("Enjoy your Coke!", true);
    Node ab = new Node("Enjoy your Pepsi!", true);
    Node ba = new Node("Enjoy your Pop Tart", true);
    Node bb = new Node("Enjoy your Apple!", true);
    Node invalid = new Node("Press clear to restart!", false);
    
    dfa.addNode(start);
    dfa.addNode(a);
    dfa.addNode(b);
    dfa.addNode(aa);
    dfa.addNode(ab);
    dfa.addNode(ba);
    dfa.addNode(bb);
    dfa.addNode(invalid);


    buttons.add(new Button(350, 200, 1));
    buttons.add(new Button(350, 300, 0));
    buttons.add(new Button(350, 400, 2));
    
    dfa.addTransition(0, start, start);
    dfa.addTransition(1, start, a);
    dfa.addTransition(2, start, b);
    dfa.addTransition(0, a, start);
    dfa.addTransition(1, a, aa);
    dfa.addTransition(2, a, ab);
    dfa.addTransition(0, b, start);
    dfa.addTransition(1, b, ba);
    dfa.addTransition(2, b, bb);
    dfa.addTransition(0, aa, start);
    dfa.addTransition(1, aa, invalid);
    dfa.addTransition(2, aa, invalid);
    dfa.addTransition(0, ab, start);
    dfa.addTransition(1, ab, invalid);
    dfa.addTransition(2, ab, invalid);
    dfa.addTransition(0, ba, start);
    dfa.addTransition(1, ba, invalid);
    dfa.addTransition(2, ba, invalid);
    dfa.addTransition(0, bb, start);
    dfa.addTransition(1, bb, invalid);
    dfa.addTransition(2, bb, invalid);
    dfa.addTransition(0, invalid, start);
    dfa.addTransition(1, invalid, invalid);
    dfa.addTransition(2, invalid, invalid);
    
  }
  
  
  
  public void ButtonClicked(int a) {
    dfa.takeInput(a);
    print(dfa.DFAAcceptsString());
  }
  
  public void checkButtonPress() {
    int input = -1;
    for(Button b : buttons)
      if(b.isPressed()) input = b.getOutput();
    if(input != -1) {
      dfa.takeInput(input);
    }
    print(dfa.DFAAcceptsString());
  }
  
  public void display() {
    fill(170, 170, 170);
    rect(10, 10, 580, 580);
    fill(120, 160, 230);
    rect(30, 30, 290, 540);
    for(Button b : buttons)
      b.display();
    fill(20, 20, 20);
    rect(350, 100, 210, 95);
    fill(255, 255, 255);
    textSize(15);
    text(dfa.getOutput(), 360, 150);
    
  }
}
