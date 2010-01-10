package hr.fer.ppj.labos.ppj21.tree;

public class Label extends Stm {
	String name;
	public Label(String name) {
		this.name = name;
	}
	public String toString() {return name;}
	public ExpList kids(){throw new Error("kids() not applicable to Label");}
	public Stm build(ExpList kids){throw new Error("build() not applicable to Label");}
}
