package hr.fer.ppj.labos.ppj21.gui.util.tree;

import hr.fer.ppj.labos.ppj21.syntaxtree.*;

public class SimpleNodeVisitor {

	private SimpleNode visit(Node n) throws Exception {
		if(n==null)
			return null;
		if(n instanceof NodeList)
			return visit((NodeList)n);
		if(n instanceof NodeListOptional)
			return visit((NodeListOptional)n);
		if(n instanceof NodeOptional)
			return visit((NodeOptional)n);
		if(n instanceof NodeSequence)
			return visit((NodeSequence)n);
		if(n instanceof NodeToken)
			return visit((NodeToken)n);
		if(n instanceof Program)
			return visit((Program)n);
		if(n instanceof MainClass)
			return visit((MainClass)n);
		if(n instanceof ClassDecl)
			return visit((ClassDecl)n);
		if(n instanceof VarDecl)
			return visit((VarDecl)n);
		if(n instanceof MethodDecl)
			return visit((MethodDecl)n);
		if(n instanceof Type)
			return visit((Type)n);
		if(n instanceof Statement)
			return visit((Statement)n);
		if(n instanceof Exp)
			return visit((Exp)n);
		if(n instanceof BoolExp)
			return visit((BoolExp)n);
		if(n instanceof MathExp)
			return visit((MathExp)n);
		if(n instanceof Term)
			return visit((Term)n);
		if(n instanceof Factor)
			return visit((Factor)n);
		if(n instanceof MethodCall)
			return visit((MethodCall)n);
		if(n instanceof Atom)
			return visit((Atom)n);
		if(n instanceof ID)
			return visit((ID)n);
		SimpleNode node = new SimpleNode();
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}
	
	public SimpleNode visit(NodeList n) throws Exception {
		SimpleNode node=new SimpleNode();
		for(int i=0;i<n.size();i++) {
			node.addChild(visit(n.elementAt(i)), i);
		}
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(NodeListOptional n) throws Exception {
		SimpleNode node=new SimpleNode();
		for(int i=0;i<n.size();i++) {
			node.addChild(visit(n.elementAt(i)), i);
		}
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(NodeOptional n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.node), 0);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}
	
	public SimpleNode visit(NodeChoice n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.choice), 0);
		node.setValue(Integer.toString(n.which));
		return node;
	}

	public SimpleNode visit(NodeSequence n) throws Exception {
		SimpleNode node=new SimpleNode();
		for(int i=0;i<n.size();i++) {
			node.addChild(visit(n.elementAt(i)), i);
		}
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(NodeToken n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.setValue(n.tokenImage);
		return node;
	}

	public SimpleNode visit(Program n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.addChild(visit(n.f1), 1);
		node.addChild(visit(n.f2), 2);
		node.setValue(n.getClass().getName());
		return node;
	}

	public SimpleNode visit(MainClass n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.addChild(visit(n.f1), 1);
		node.addChild(visit(n.f2), 2);
		node.addChild(visit(n.f3), 3);
		node.addChild(visit(n.f4), 4);
		node.addChild(visit(n.f5), 5);
		node.addChild(visit(n.f6), 6);
		node.addChild(visit(n.f7), 7);
		node.addChild(visit(n.f8), 8);
		node.addChild(visit(n.f9), 9);
		node.addChild(visit(n.f10), 10);
		node.addChild(visit(n.f11), 11);
		node.addChild(visit(n.f12), 12);
		node.addChild(visit(n.f13), 13);
		node.addChild(visit(n.f14), 14);
		node.addChild(visit(n.f15), 15);
		node.addChild(visit(n.f16), 16);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(ClassDecl n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.addChild(visit(n.f1), 1);
		node.addChild(visit(n.f2), 2);
		node.addChild(visit(n.f3), 3);
		node.addChild(visit(n.f4), 4);
		node.addChild(visit(n.f5), 5);
		node.addChild(visit(n.f6), 6);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(VarDecl n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.addChild(visit(n.f1), 1);
		node.addChild(visit(n.f2), 2);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(MethodDecl n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.addChild(visit(n.f1), 1);
		node.addChild(visit(n.f2), 2);
		node.addChild(visit(n.f3), 3);
		node.addChild(visit(n.f4), 4);
		node.addChild(visit(n.f5), 5);
		node.addChild(visit(n.f6), 6);
		node.addChild(visit(n.f7), 7);
		node.addChild(visit(n.f8), 8);
		node.addChild(visit(n.f9), 9);
		node.addChild(visit(n.f10), 10);
		node.addChild(visit(n.f11), 11);
		node.addChild(visit(n.f12), 12);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(Type n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(Statement n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(Exp n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.addChild(visit(n.f1), 1);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(BoolExp n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.addChild(visit(n.f1), 1);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(MathExp n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.addChild(visit(n.f1), 1);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(Term n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.addChild(visit(n.f1), 1);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(Factor n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.addChild(visit(n.f1), 1);
		node.addChild(visit(n.f2), 2);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(MethodCall n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(Atom n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

	public SimpleNode visit(ID n) throws Exception {
		SimpleNode node=new SimpleNode();
		node.addChild(visit(n.f0), 0);
		node.setValue(n.getClass().getCanonicalName());
		return node;
	}

}
