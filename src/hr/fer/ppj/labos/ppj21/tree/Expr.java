package hr.fer.ppj.labos.ppj21.tree;

//This class was changed to Expr so that we can distunguish it with class syntaxtree.exp
public abstract class Expr {
	abstract public ExpList kids();

	abstract public Expr build(ExpList kids);
}