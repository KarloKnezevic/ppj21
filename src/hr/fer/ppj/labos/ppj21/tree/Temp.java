package hr.fer.ppj.labos.ppj21.tree;

public class Temp extends Expr {
  public String name;
  public Temp(String name) {
	  this.name = name;
  }
  public String toString(){return name;}
  public ExpList kids() {throw new Error("kids() not applicable to Temp");};
  public Expr build(ExpList kids) {throw new Error("build() not applicable to Temp");}
}
