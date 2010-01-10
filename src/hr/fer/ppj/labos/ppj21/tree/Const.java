package hr.fer.ppj.labos.ppj21.tree;

public class Const extends Expr {
  public int value;
  public Const(int v) {value=v;}
  public ExpList kids() {throw new Error("kids() not applicable to Const");}
  public Expr build(ExpList kids) {throw new Error("build() not applicable to Const");}
}