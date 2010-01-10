package hr.fer.ppj.labos.ppj21.tree;
abstract public class Stm {
	abstract public ExpList kids();
	abstract public Stm build(ExpList kids);
}
