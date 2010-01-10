package hr.fer.ppj.labos.ppj21.gui.util.tree;

import hr.fer.ppj.labos.ppj21.syntaxtree.Node;
import hr.fer.ppj.labos.ppj21.syntaxtree.NodeListInterface;

import java.util.Vector;

import javax.swing.event.TreeModelListener;
import javax.swing.tree.TreeModel;
import javax.swing.tree.TreePath;

public class SyntaxTreeModel implements TreeModel {

	private NodeListInterface rootNode;
	private Vector<TreeModelListener> treeModelListeners = new Vector<TreeModelListener>();
	public SyntaxTreeModel(NodeListInterface rootNode) {
		this.rootNode=rootNode;
	}
	
	@Override
	public void addTreeModelListener(TreeModelListener l) {
		treeModelListeners.addElement(l);

	}

	@Override
	public Object getChild(Object parent, int idx) {
		return ((NodeListInterface)parent).elementAt(idx);
	}

	@Override
	public int getChildCount(Object parent) {
		return ((NodeListInterface)parent).size();
	}

	@Override
	public int getIndexOfChild(Object parent, Object child) {
		NodeListInterface p = (NodeListInterface)parent;
		NodeListInterface c = (NodeListInterface)child;
		for(int i=0;i<p.size();i++)
			if(c.equals(p.elementAt(i)))
				return i;
		return -1;
	}

	@Override
	public Object getRoot() {
		return rootNode;
	}

	@Override
	public boolean isLeaf(Object parent) {
		return ((NodeListInterface)parent).size()==0;
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
