/* Generated By:JJTree: Do not edit this line. ASTArrayAssignmentStatement.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package hr.fer.ppj21.labos.parser;

public
@SuppressWarnings("all")
class ASTArrayAssignmentStatement extends SimpleNode {
  public ASTArrayAssignmentStatement(int id) {
    super(id);
  }

  public ASTArrayAssignmentStatement(MiniJava p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(MiniJavaVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=15ae6ee880ccc81993249fc123f283a9 (do not edit this line) */