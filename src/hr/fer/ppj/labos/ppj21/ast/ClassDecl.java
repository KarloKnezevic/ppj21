//
// Generated by JTB 1.2.2
//

package hr.fer.ppj.labos.ppj21.ast;
import hr.fer.ppj.labos.ppj21.visitor.*;
/**
 * Grammar production:
 * f0 -> <CLASS>
 * f1 -> ID()
 * f2 -> ( <EXTENDS> ID() )?
 * f3 -> "{"
 * f4 -> ( VarDecl() )*
 * f5 -> ( MethodDecl() )*
 * f6 -> "}"
 */
public class ClassDecl implements Node {
	static final long serialVersionUID = 0;
   public NodeToken f0;
   public ID f1;
   public NodeOptional f2;
   public NodeToken f3;
   public NodeListOptional f4;
   public NodeListOptional f5;
   public NodeToken f6;

   public ClassDecl(NodeToken n0, ID n1, NodeOptional n2, NodeToken n3, NodeListOptional n4, NodeListOptional n5, NodeToken n6) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
      f4 = n4;
      f5 = n5;
      f6 = n6;
   }

   public ClassDecl(ID n0, NodeOptional n1, NodeListOptional n2, NodeListOptional n3) {
      f0 = new NodeToken("class");
      f1 = n0;
      f2 = n1;
      f3 = new NodeToken("{");
      f4 = n2;
      f5 = n3;
      f6 = new NodeToken("}");
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