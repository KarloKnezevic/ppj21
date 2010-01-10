package hr.fer.ppj.labos.ppj21.tree;
public class Binop extends Expr {
  public int binop;
  public Expr left, right;
  public Binop(int b, Expr l, Expr r) {
    binop=b; left=l; right=r; 
  }
  public final static int PLUS=0, MINUS=1, MUL=2, AND=3, LT = 4;
  public ExpList kids() {return new ExpList(left, new ExpList(right,null));}
  public Expr build(ExpList kids) {
    return new Binop(binop,kids.head,kids.tail.head);
  }
}
