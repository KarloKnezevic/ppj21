//
// Generated by JTB 1.2.2
//

package hr.fer.ppj.labos.ppj21.ast;
import hr.fer.ppj.labos.ppj21.visitor.*;
/**
 * Grammar production:
 * f0 -> <IDENTIFIER>
 */
public class ID implements Node {
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
public NodeToken f0;

   public ID(NodeToken n0) {
      f0 = n0;
   }

   public void accept(Visitor v) throws Exception {
      v.visit(this);
   }
   public Object accept(ObjectVisitor v, Object argu) throws Exception {
      return v.visit(this,argu);
   }
   
   public String toString() {
	   return f0.tokenImage;
   }
	public Object accept(ObjectVisitor v) throws Exception {
		return v.visit(this, null);
	}
}

