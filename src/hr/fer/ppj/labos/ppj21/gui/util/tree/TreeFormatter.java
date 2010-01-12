package hr.fer.ppj.labos.ppj21.gui.util.tree;

import hr.fer.ppj.labos.ppj21.syntaxtree.Atom;
import hr.fer.ppj.labos.ppj21.syntaxtree.BoolExp;
import hr.fer.ppj.labos.ppj21.syntaxtree.ClassDecl;
import hr.fer.ppj.labos.ppj21.syntaxtree.Exp;
import hr.fer.ppj.labos.ppj21.syntaxtree.Factor;
import hr.fer.ppj.labos.ppj21.syntaxtree.ID;
import hr.fer.ppj.labos.ppj21.syntaxtree.MainClass;
import hr.fer.ppj.labos.ppj21.syntaxtree.MathExp;
import hr.fer.ppj.labos.ppj21.syntaxtree.MethodCall;
import hr.fer.ppj.labos.ppj21.syntaxtree.MethodDecl;
import hr.fer.ppj.labos.ppj21.syntaxtree.Node;
import hr.fer.ppj.labos.ppj21.syntaxtree.NodeList;
import hr.fer.ppj.labos.ppj21.syntaxtree.NodeListInterface;
import hr.fer.ppj.labos.ppj21.syntaxtree.NodeListOptional;
import hr.fer.ppj.labos.ppj21.syntaxtree.NodeOptional;
import hr.fer.ppj.labos.ppj21.syntaxtree.NodeSequence;
import hr.fer.ppj.labos.ppj21.syntaxtree.NodeToken;
import hr.fer.ppj.labos.ppj21.syntaxtree.Program;
import hr.fer.ppj.labos.ppj21.syntaxtree.Statement;
import hr.fer.ppj.labos.ppj21.syntaxtree.Term;
import hr.fer.ppj.labos.ppj21.syntaxtree.Type;
import hr.fer.ppj.labos.ppj21.syntaxtree.VarDecl;
import hr.fer.ppj.labos.ppj21.visitor.Visitor;

import java.util.*;

import EDU.purdue.jtb.visitor.DepthFirstVisitor;

/**
* A skeleton output formatter for your language grammar.  Using the
* add() method along with force(), indent(), and outdent(), you can
* easily specify how this visitor will format the given syntax tree.
* See the JTB documentation for more details.
*
* Pass your syntax tree to this visitor, and then to the TreeDumper
* visitor in order to "pretty print" your tree.
*/
public class TreeFormatter extends DepthFirstVisitor implements Visitor {
private Vector cmdQueue = new Vector();
private boolean lineWrap;
private int wrapWidth;
private int indentAmt;
private int curLine = 1;
private int curColumn = 1;
private int curIndent = 0;

/**
 * The default constructor assumes an indentation amount of 3 spaces
 * and no line-wrap.  You may alternately use the other constructor to
 * specify your own indentation amount and line width.
 */
public TreeFormatter() { this(3, 0); }

/**
 * This constructor accepts an indent amount and a line width which is
 * used to wrap long lines.  If a token's beginColumn value is greater
 * than the specified wrapWidth, it will be moved to the next line and
 * indented one extra level.  To turn off line-wrapping, specify a
 * wrapWidth of 0.
 *
 * @param   indentAmt   Amount of spaces per indentation level.
 * @param   wrapWidth   Wrap lines longer than wrapWidth.  0 for no wrap.
 */
public TreeFormatter(int indentAmt, int wrapWidth) {
   this.indentAmt = indentAmt;
   this.wrapWidth = wrapWidth;

   if ( wrapWidth > 0 )
      lineWrap = true;
   else
      lineWrap = false;
}

/**
 * Accepts a NodeListInterface object and performs an optional format
 * command between each node in the list (but not after the last node).
 * @throws Exception 
 */
protected void processList(NodeListInterface n) throws Exception {
   processList(n, null);
}

protected void processList(NodeListInterface n, FormatCommand cmd) throws Exception {
   for ( Enumeration e = n.elements(); e.hasMoreElements(); ) {
      ((Node)e.nextElement()).accept(this);
      if ( cmd != null && e.hasMoreElements() )
         cmdQueue.addElement(cmd);
   }
}

/**
 * A Force command inserts a line break and indents the next line to
 * the current indentation level.  Use "add(force());".
 */
protected FormatCommand force() { return force(1); }
protected FormatCommand force(int i) {
   return new FormatCommand(FormatCommand.FORCE, i);
}

/**
 * An Indent command increases the indentation level by one (or a
 * user-specified amount).  Use "add(indent());".
 */
protected FormatCommand indent() { return indent(1); }
protected FormatCommand indent(int i) {
   return new FormatCommand(FormatCommand.INDENT, i);
}

/**
 * An Outdent command is the reverse of the Indent command: it reduces
 * the indentation level.  Use "add(outdent());".
 */
protected FormatCommand outdent() { return outdent(1); }
protected FormatCommand outdent(int i) {
   return new FormatCommand(FormatCommand.OUTDENT, i);
}

/**
 * A Space command simply adds one or a user-specified number of
 * spaces between tokens.  Use "add(space());".
 */
protected FormatCommand space() { return space(1); }
protected FormatCommand space(int i) {
   return new FormatCommand(FormatCommand.SPACE, i);
}

/**
 * Use this method to add FormatCommands to the command queue to be
 * executed when the next token in the tree is visited.
 */
protected void add(FormatCommand cmd) {
   cmdQueue.addElement(cmd);
}

/**
 * Executes the commands waiting in the command queue, then inserts the
 * proper location information into the current NodeToken.
 *
 * If there are any special tokens preceding this token, they will be
 * given the current location information.  The token will follow on
 * the next line, at the proper indentation level.  If this is not the
 * behavior you want from special tokens, feel free to modify this
 * method.
 */
public void visit(NodeToken n) {
   for ( Enumeration e = cmdQueue.elements(); e.hasMoreElements(); ) {
      FormatCommand cmd = (FormatCommand)e.nextElement();
      switch ( cmd.getCommand() ) {
      case FormatCommand.FORCE :
         curLine += cmd.getNumCommands();
         curColumn = curIndent + 1;
         break;
      case FormatCommand.INDENT :
         curIndent += indentAmt * cmd.getNumCommands();
         break;
      case FormatCommand.OUTDENT :
         if ( curIndent >= indentAmt )
            curIndent -= indentAmt * cmd.getNumCommands();
         break;
      case FormatCommand.SPACE :
         curColumn += cmd.getNumCommands();
         break;
      default :
         throw new TreeFormatterException(
            "Invalid value in command queue.");
      }
   }

   cmdQueue.removeAllElements();

   //
   // Handle all special tokens preceding this NodeToken
   //
   if ( n.numSpecials() > 0 )
      for ( Enumeration e = n.specialTokens.elements();
            e.hasMoreElements(); ) {
         NodeToken special = (NodeToken)e.nextElement();

         //
         // -Place the token.
         // -Move cursor to next line after the special token.
         // -Don't update curColumn--want to keep current indent level.
         //
         placeToken(special, curLine, curColumn);
         curLine = special.endLine + 1;
      }

   placeToken(n, curLine, curColumn);
   curLine = n.endLine;
   curColumn = n.endColumn;
}

/**
 * Inserts token location (beginLine, beginColumn, endLine, endColumn)
 * information into the NodeToken.  Takes into account line-wrap.
 * Does not update curLine and curColumn.
 */
private void placeToken(NodeToken n, int line, int column) {
   int length = n.tokenImage.length();

   //
   // Find beginning of token.  Only line-wrap for single-line tokens
   //
   if ( !lineWrap || n.tokenImage.indexOf('\n') != -1 ||
        column + length <= wrapWidth )
      n.beginColumn = column;
   else {
      ++line;
      column = curIndent + indentAmt + 1;
      n.beginColumn = column;
   }

   n.beginLine = line;

   //
   // Find end of token; don't count \n if it's the last character
   //
   for ( int i = 0; i < length; ++i ) {
      if ( n.tokenImage.charAt(i) == '\n' && i < length - 1 ) {
         ++line;
         column = 1;
      }
      else
         ++column;
   }

   n.endLine = line;
   n.endColumn = column;
}

//
// User-generated visitor methods below
//

/**
 * f0 -> MainClass()
 * f1 -> ( ClassDecl() )*
 * f2 -> <EOF>
 */
public void visit(Program n) throws Exception {
}

/**
 * f0 -> <CLASS>
 * f1 -> ID()
 * f2 -> "{"
 * f3 -> <PUBLIC>
 * f4 -> <STATIC>
 * f5 -> <VOID>
 * f6 -> <MAIN>
 * f7 -> "("
 * f8 -> <STRING>
 * f9 -> "["
 * f10 -> "]"
 * f11 -> ID()
 * f12 -> ")"
 * f13 -> "{"
 * f14 -> Statement()
 * f15 -> "}"
 * f16 -> "}"
 */
public void visit(MainClass n) throws Exception {
}

/**
 * f0 -> <CLASS>
 * f1 -> ID()
 * f2 -> ( <EXTENDS> ID() )?
 * f3 -> "{"
 * f4 -> ( VarDecl() )*
 * f5 -> ( MethodDecl() )*
 * f6 -> "}"
 */
public void visit(ClassDecl n) throws Exception {
	
}

/**
 * f0 -> Type()
 * f1 -> ID()
 * f2 -> ";"
 */
public void visit(VarDecl n) throws Exception {
	
}

/**
 * f0 -> <PUBLIC>
 * f1 -> Type()
 * f2 -> ID()
 * f3 -> "("
 * f4 -> [ VarDecl() ( "," VarDecl() )* ]
 * f5 -> ")"
 * f6 -> "{"
 * f7 -> ( VarDecl() )*
 * f8 -> ( Statement() )*
 * f9 -> <RETURN>
 * f10 -> Exp()
 * f11 -> ";"
 * f12 -> "}"
 */
public void visit(MethodDecl n) throws Exception {
	
}

/**
 * f0 -> <INT> "[" "]"
 *       | <INT>
 *       | <BOOLEAN>
 *       | ID()
 */
public void visit(Type n) throws Exception {
}

/**
 * f0 -> "{" ( Statement() )* "}"
 *       | <IF> "(" Exp() ")" Statement() <ELSE> Statement()
 *       | <WHILE> "(" Exp() ")" Statement()
 *       | "System.out.println" "(" Exp() ")" ";"
 *       | ID() "=" Exp() ";"
 *       | ID() "[" Exp() "]" "=" Exp() ";"
 */
public void visit(Statement n) throws Exception {
}

/**
 * f0 -> BoolExp()
 * f1 -> ( "&&" BoolExp() )*
 */
public void visit(Exp n) throws Exception {
}

/**
 * f0 -> MathExp()
 * f1 -> ( "<" MathExp() )*
 */
public void visit(BoolExp n) throws Exception {
}

/**
 * f0 -> Term()
 * f1 -> ( ( "+" | "-" ) Term() )*
 */
public void visit(MathExp n) throws Exception {
}

/**
 * f0 -> Factor()
 * f1 -> ( "*" Factor() )*
 */
public void visit(Term n) throws Exception {
}

/**
 * f0 -> ( "!" )*
 * f1 -> ( <NEW> <INT> "[" Exp() "]" | <NEW> ID() "(" ")" | Atom() )
 * f2 -> ( MethodCall() )*
 */
public void visit(Factor n) throws Exception {
}

/**
 * f0 -> "." <LENGTH>
 *       | "." ID() "(" ( Exp() ( "," Exp() )* )? ")"
 *       | "[" Exp() "]"
 */
public void visit(MethodCall n) throws Exception {
}

/**
 * f0 -> "(" Exp() ")"
 *       | ID()
 *       | <INTEGER_LITERAL>
 *       | <TRUE>
 *       | <FALSE>
 *       | <THIS>
 */
public void visit(Atom n) throws Exception {
}

/**
 * f0 -> <IDENTIFIER>
 */
public void visit(ID n) throws Exception {
}

class FormatCommand {
public static final int FORCE = 0;
public static final int INDENT = 1;
public static final int OUTDENT = 2;
public static final int SPACE = 3;

private int command;
private int numCommands;

FormatCommand(int command, int numCommands) {
   this.command = command;
   this.numCommands = numCommands;
}

public int getCommand()             { return command; }
public int getNumCommands()         { return numCommands; }
public void setCommand(int i)       { command = i; }
public void setNumCommands(int i)   { numCommands = i; }
}

class TreeFormatterException extends RuntimeException {
TreeFormatterException()         { super(); }
TreeFormatterException(String s) { super(s); }
}

@Override
public void visit(NodeList n) throws Exception {
	// TODO Auto-generated method stub
	
}

@Override
public void visit(NodeListOptional n) throws Exception {
	// TODO Auto-generated method stub
	
}

@Override
public void visit(NodeOptional n) throws Exception {
	// TODO Auto-generated method stub
	
}

@Override
public void visit(NodeSequence n) throws Exception {
	// TODO Auto-generated method stub
	
}

}