/* Generated By:JJTree: Do not edit this line. ASTAdditiveExpression.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package hr.fer.ppj21.labos.parser;

public
@SuppressWarnings("all")
class ASTAdditiveExpression extends SimpleNode {
  public ASTAdditiveExpression(int id) {
    super(id);
  }

  public ASTAdditiveExpression(MiniJava p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(MiniJavaVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=85d320e52edfc3dc07108f21d6ee2f54 (do not edit this line) */
