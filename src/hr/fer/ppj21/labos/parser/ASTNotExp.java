/* Generated By:JJTree: Do not edit this line. ASTNotExp.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package hr.fer.ppj21.labos.parser;

public
@SuppressWarnings("all")
class ASTNotExp extends SimpleNode {
  public ASTNotExp(int id) {
    super(id);
  }

  public ASTNotExp(MiniJava p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(MiniJavaVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=6fc2388caf55b2520d7199fa65e9ce94 (do not edit this line) */