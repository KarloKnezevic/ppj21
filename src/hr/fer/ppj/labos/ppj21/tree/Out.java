package hr.fer.ppj.labos.ppj21.tree;

public class Out extends Stm {
	public Expr value;
	
	public Out(Expr value) {
		this.value = value;
	}

	public ExpList kids() {
		return new ExpList(value, null);
	}

	public Stm build(ExpList kids) {
		return new Out(kids.head);
	}

}
