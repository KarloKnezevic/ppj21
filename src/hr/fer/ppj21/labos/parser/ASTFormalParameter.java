/* Generated By:JJTree: Do not edit this line. ASTFormalParameter.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package hr.fer.ppj21.labos.parser;

public
@SuppressWarnings("all")
class ASTFormalParameter extends SimpleNode {
  public ASTFormalParameter(int id) {
    super(id);
  }

  public ASTFormalParameter(MiniJava p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(MiniJavaVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=d6be58170fbee1e2383dc7f6f6050f37 (do not edit this line) */
