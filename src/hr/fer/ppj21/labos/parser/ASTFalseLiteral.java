/* Generated By:JJTree: Do not edit this line. ASTFalseLiteral.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package hr.fer.ppj21.labos.parser;

public
@SuppressWarnings("all")
class ASTFalseLiteral extends SimpleNode {
  public ASTFalseLiteral(int id) {
    super(id);
  }

  public ASTFalseLiteral(MiniJava p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(MiniJavaVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=87e8c96e73911ac18a5cb0449650b617 (do not edit this line) */
