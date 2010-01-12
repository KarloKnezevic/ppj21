package hr.fer.ppj.labos.ppj21.gui.util.tree;

import hr.fer.ppj.labos.ppj21.tree.Stm;

import java.util.Vector;

import javax.swing.event.TreeModelListener;
import javax.swing.tree.TreeModel;
import javax.swing.tree.TreePath;

public class SyntaxTreeModel implements TreeModel {

	private Stm rootNode;
	private Vector<TreeModelListener> treeModelListeners = new Vector<TreeModelListener>();
	public SyntaxTreeModel(Stm node) {
		this.rootNode=node;
	}
	
	@Override
	public void addTreeModelListener(TreeModelListener l) {
		treeModelListeners.addElement(l);

	}

	@Override
	public Object getChild(Object parent, int idx) {
		return ((SimpleNode)parent).getChild(idx);
	}

	@Override
	public int getChildCount(Object parent) {
		return ((SimpleNode)parent).getNumChildren();
	}

	@Override
	public int getIndexOfChild(Object parent, Object child) {
		SimpleNode p = (SimpleNode)parent;
		SimpleNode c = (SimpleNode)child;
		for(int i=0;i<p.getNumChildren();i++)
			if(c.equals(p.getChild(i)))
				return i;
		return -1;
	}

	@Override
	public Object getRoot() {
		return rootNode;
	}

	@Override
	public boolean isLeaf(Object parent) {
		return ((SimpleNode)parent).getNumChildren()==0;
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
