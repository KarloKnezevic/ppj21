package hr.fer.ppj.labos.ppj21.gui.util.tree;


import hr.fer.ppj.labos.ppj21.tree.Stm;

import javax.swing.Icon;
import javax.swing.JTree;
import javax.swing.tree.DefaultTreeCellRenderer;
import javax.swing.tree.TreeSelectionModel;

public class SyntaxTree extends JTree {
	 
	public SyntaxTree(Stm node) {
	        super(new SyntaxTreeModel(node));
	        getSelectionModel().setSelectionMode(TreeSelectionModel.SINGLE_TREE_SELECTION);
	        DefaultTreeCellRenderer renderer = new DefaultTreeCellRenderer();
	        Icon personIcon = null;
	        renderer.setLeafIcon(personIcon);
	        renderer.setClosedIcon(personIcon);
	        renderer.setOpenIcon(personIcon);
	        setCellRenderer(renderer);
	    }

}
