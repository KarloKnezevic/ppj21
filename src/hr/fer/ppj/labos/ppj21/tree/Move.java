package hr.fer.ppj.labos.ppj21.tree;

public class Move extends Stm {
  public Expr dst, src;
  public Move(Expr d, Expr s) {dst=d; src=s;}
  public ExpList kids() {
        if (dst instanceof Mem)
	   return new ExpList(((Mem)dst).exp, new ExpList(src,null));
	else return new ExpList(src,null);
  }
  public Stm build(ExpList kids) {
        if (dst instanceof Mem)
	   return new Move(new Mem(kids.head), kids.tail.head);
	else return new Move(dst, kids.head);
  }
}