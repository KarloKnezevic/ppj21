//
// Generated by JTB 1.2.2
//

package hr.fer.ppj.labos.ppj21.syntaxtree;
import hr.fer.ppj.labos.ppj21.gui.util.tree.SimpleNodeVisitor;
import hr.fer.ppj.labos.ppj21.visitor.*;
/**
 * Grammar production:
 * f0 -> <INT> "[" "]"
 *       | <INT>
 *       | <BOOLEAN>
 *       | ID()
 */
public class Type implements Node {
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
public NodeChoice f0;

   public Type(NodeChoice n0) {
      f0 = n0;
   }
   
   public String typeName(){
   		switch(f0.which){
   			case 0:
   				return "int[]";
   			case 1:
   				return "int";
   			case 2:
   				return "boolean";
   			case 3:
   				return ((ID)f0.choice).f0.tokenImage;
   		}
   		return null;
   }

   public void accept(Visitor v) throws Exception {
      v.visit(this);
   }
   public Object accept(ObjectVisitor v, Object argu) throws Exception {
      return v.visit(this,argu);
   }
	public Object accept(ObjectVisitor v) throws Exception {
		return v.visit(this, null);
	}
	public Object accept(SimpleNodeVisitor v) throws Exception {
		return v.visit(this);
	}

}