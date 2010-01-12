package hr.fer.ppj.labos.ppj21.gui.util.tree;



public class SimpleNode {
	protected SimpleNode[] children;
	protected int id;
	protected Object value;
	protected SimpleNode root;
	
	public SimpleNode(SimpleNode n) {
		this.root=n;
	}
	public SimpleNode() {
		
	}
	public SimpleNode(Object value) {
		this.value=value;
	}
	
	public void addChild(SimpleNode simpleNode, int i) {
	    if (children == null) {
	      children = new SimpleNode[i + 1];
	    } else if (i >= children.length) {
	      SimpleNode c[] = new SimpleNode[i + 1];
	      System.arraycopy(children, 0, c, 0, children.length);
	      children = c;
	    }
	    children[i] = simpleNode;
	 }
	
	 public SimpleNode getChild(int i) {
		 return children[i];
	 }
	 
	 public int getNumChildren() {
		 return (children == null) ? 0 : children.length;
	 }

	 public void setValue(Object value) { this.value = value; }
	 public Object getValue() { return value; } 
	 
	 public String toString() {
		 return (String) value;
	 }
	 public void dump(String prefix) {
		 System.out.println(value);
	 	if (children != null) {
	 		for (int i = 0; i < children.length; ++i) {
	 			SimpleNode n = (SimpleNode)children[i];
	 			if (n != null) {
	 				n.dump(prefix + " ");
	 			}
	 		}
	 	}
	  }

}
