package hr.fer.ppj.labos.ppj21.tree;

public class ESeq extends Expr {
  public Stm stm;
  public Expr exp;
  public ESeq(Stm s, Expr e) {stm=s; exp=e;}
  public ExpList kids() {throw new Error("kids() not applicable to ESeq");}
  public Expr build(ExpList kids) {throw new Error("build() not applicable to ESeq");}
}