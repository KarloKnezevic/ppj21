//
// Generated by JTB 1.2.2
//

package hr.fer.ppj.labos.ppj21.ast;
import hr.fer.ppj.labos.ppj21.visitor.*;
/**
 * Grammar production:
 * f0 -> BoolExp()
 * f1 -> ( "&&" BoolExp() )*
 */
public class Exp implements Node {
	static final long serialVersionUID = 0;
   public BoolExp f0;
   public NodeListOptional f1;

   public Exp(BoolExp n0, NodeListOptional n1) {
      f0 = n0;
      f1 = n1;
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

}

