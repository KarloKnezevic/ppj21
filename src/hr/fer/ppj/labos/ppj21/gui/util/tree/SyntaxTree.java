package hr.fer.ppj.labos.ppj21.gui.util.tree;


import hr.fer.ppj.labos.ppj21.syntaxtree.Node;
import hr.fer.ppj.labos.ppj21.syntaxtree.NodeListInterface;

import javax.swing.Icon;
import javax.swing.JTree;
import javax.swing.tree.DefaultTreeCellRenderer;
import javax.swing.tree.TreeSelectionModel;

public class SyntaxTree extends JTree {
	 
	public SyntaxTree(NodeListInterface graphNode) {
	        super(new SyntaxTreeModel(graphNode));
	        getSelectionModel().setSelectionMode(TreeSelectionModel.SINGLE_TREE_SELECTION);
	        DefaultTreeCellRenderer renderer = new DefaultTreeCellRenderer();
	        Icon personIcon = null;
	        renderer.setLeafIcon(personIcon);
	        renderer.setClosedIcon(personIcon);
	        renderer.setOpenIcon(personIcon);
	        setCellRenderer(renderer);
	    }

}
