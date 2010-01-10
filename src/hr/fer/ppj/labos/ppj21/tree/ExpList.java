package hr.fer.ppj.labos.ppj21.tree;

public class ExpList {
  public Expr head;
  public ExpList tail;
  public ExpList(Expr h, ExpList t) {head=h; tail=t;}
}