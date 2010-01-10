package hr.fer.ppj.labos.ppj21.tree;

public class RuntimeError extends Stm {
	public String message;
	
	public RuntimeError(String m) {
		this.message = m;
	}

	public String toString() {
		return message;
	}
	
	public ExpList kids() {
		throw new Error("kids() not applicable to RuntimeError");
	}

	public Stm build(ExpList kids) {
		throw new Error("build() not applicable to RuntimeError");
	}

}
