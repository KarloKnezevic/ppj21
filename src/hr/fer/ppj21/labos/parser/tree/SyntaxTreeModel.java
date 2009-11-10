package hr.fer.ppj21.labos.parser.tree;

import hr.fer.ppj21.labos.parser.Node;

import java.util.Vector;

import javax.swing.event.TreeModelListener;
import javax.swing.tree.TreeModel;
import javax.swing.tree.TreePath;

public class SyntaxTreeModel implements TreeModel {

	private Node rootNode;
	private Vector<TreeModelListener> treeModelListeners = new Vector<TreeModelListener>();
	public SyntaxTreeModel(Node rootNode) {
		this.rootNode=rootNode;
	}
	
	@Override
	public void addTreeModelListener(TreeModelListener l) {
		treeModelListeners.addElement(l);

	}

	@Override
	public Object getChild(Object parent, int idx) {
		return ((Node)parent).jjtGetChild(idx);
	}

	@Override
	public int getChildCount(Object parent) {
		return ((Node)parent).jjtGetNumChildren();
	}

	@Override
	public int getIndexOfChild(Object parent, Object child) {
		Node p = (Node)parent;
		Node c = (Node)child;
		for(int i=0;i<p.jjtGetNumChildren();i++)
			if(c.equals(p.jjtGetChild(i)))
				return i;
		return -1;
	}

	@Override
	public Object getRoot() {
		return rootNode;
	}

	@Override
	public boolean isLeaf(Object parent) {
		return ((Node)parent).jjtGetNumChildren()==0;
	}

	@Override
	public void removeTreeModelListener(TreeModelListener l) {
		treeModelListeners.remove(l);

	}

	@Override
	public void valueForPathChanged(TreePath arg0, Object arg1) {
		//nije implementirano (nepotrebno)
	}

}
