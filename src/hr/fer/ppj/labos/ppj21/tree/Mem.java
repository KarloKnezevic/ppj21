package hr.fer.ppj.labos.ppj21.tree;

public class Mem extends Expr {
  public Expr exp;
  public Mem(Expr e) {exp=e;}
  public ExpList kids() {return new ExpList(exp,null);}
  public Expr build(ExpList kids) {
    return new Mem(kids.head);
  }
}