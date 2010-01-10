package hr.fer.ppj.labos.ppj21.tree;

public class Jump extends Stm {
  public Expr target;
  public Jump(Expr target) {
      this.target = target;
  }
  public ExpList kids() {throw new Error("kids() not applicable to Jump");}
  public Stm build(ExpList kids) {throw new Error("build() not applicable to Jump");}
}