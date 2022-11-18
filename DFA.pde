public class DFA {
  
  ArrayList<Node> states;
  Node currentNode;
  
  public DFA () {
    states = new ArrayList<Node>();
  }
  
  public void addNode(Node a) {
    states.add(a);
    currentNode = states.get(0);
  }

  
  public void addTransition(int input, Node a, Node b) {
    states.get(states.indexOf(a)).makeTransition(input, b);
  }
  
  public String takeInput(int input) {
    Transition t = currentNode.takeInput(input);
    currentNode = t.getDestination();
    return currentNode.getOutput();
  }
  
  public boolean DFAAcceptsString() {
    return currentNode.isAcceptingState();
  }
  
  public String getOutput() {
    return currentNode.getOutput();
  }
}
