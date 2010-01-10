package hr.fer.ppj.labos.ppj21.tree;

public class Name extends Expr {
	public Label label;

	public Name(Label label) {
		this.label = label;
	}

	public Expr build(ExpList kids) {
		throw new Error("build() not applicable to Name");
	}

	public ExpList kids() {
		throw new Error("kids() not applicable to Name");
	}
}
