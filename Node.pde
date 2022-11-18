class Node {
  ArrayList<Transition> transitions = new ArrayList<Transition>();
  String output;
  boolean isAcceptingState;
  
  public Node (String output, boolean accepts) {
    this.output = output;
    isAcceptingState = accepts;
  }
  
  public void makeTransition(int x, Node destination) {
    transitions.add(new Transition(x, this, destination));
  }
  
  public ArrayList<Transition> getTransitions() {
    return transitions;
  }
  
  public boolean isAcceptingState() {
    return isAcceptingState;
  }
  
  public Transition takeInput(int i) {
    for(Transition t : transitions)
      if(t.getInput() == i ) return t;
    return null;
  }
  
  public String getOutput() {
    return output;
  }
  
  
}
