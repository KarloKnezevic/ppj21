package hr.fer.ppj.labos.ppj21.tree;

//This class stands for : if (condition == 1) goto iftrue; else goto iffalse; 
public class CJump extends Stm {
  public Expr condition;
  public Label iftrue, iffalse;
  public CJump(Expr condition, Label t, Label f) {
     this.condition = condition; iftrue=t; iffalse=f;
  }
    public ExpList kids() {return new ExpList(condition ,null);}
  public Stm build(ExpList kids) {
    return new CJump(kids.head,iftrue,iffalse);
  }
}
