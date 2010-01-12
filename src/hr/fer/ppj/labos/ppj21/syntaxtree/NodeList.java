//
// Generated by JTB 1.2.2
//

package hr.fer.ppj.labos.ppj21.syntaxtree;
import hr.fer.ppj.labos.ppj21.gui.util.tree.SimpleNodeVisitor;
import hr.fer.ppj.labos.ppj21.visitor.*;
import java.util.*;

/**
 * Represents a grammar list, e.g. ( A )+
 */
public class NodeList implements NodeListInterface {
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public NodeList() {
      nodes = new Vector<Node>();
   }

   public NodeList(Node firstNode) {
      nodes = new Vector<Node>();
      addNode(firstNode);
   }

   public void addNode(Node n) {
      nodes.addElement(n);
   }

   public Enumeration elements() { return nodes.elements(); }
   public Node elementAt(int i)  { return (Node)nodes.elementAt(i); }
   public int size()             { return nodes.size(); }
   public void accept(Visitor v) throws Exception {
      v.visit(this);
   }
   public Object accept(ObjectVisitor v, Object argu) throws Exception {
      return v.visit(this,argu);
   }
   
   public Object accept(SimpleNodeVisitor v) throws Exception {
		return v.visit(this);
	}


   public Vector<Node> nodes;

/*public ArrayList<Node> toList() {
	ArrayList<Node> result = new ArrayList<Node>();
	for (Node it : nodes)
		result.addAll(it.toList());
	return result;
	}*/
}

