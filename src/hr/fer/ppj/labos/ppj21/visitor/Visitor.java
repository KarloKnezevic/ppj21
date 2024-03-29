//
// Generated by JTB 1.2.2
//

package hr.fer.ppj.labos.ppj21.visitor;
import hr.fer.ppj.labos.ppj21.ast.*;

/**
 * All void visitors must implement this interface.
 */
public interface Visitor{
   //
   // void Auto class visitors
   //
   public void visit(NodeList n) throws Exception;
   public void visit(NodeListOptional n) throws Exception;
   public void visit(NodeOptional n) throws Exception;
   public void visit(NodeSequence n) throws Exception;
   public void visit(NodeToken n) throws Exception;

   //
   // User-generated visitor methods below
   //

   /**
    * f0 -> MainClass()
    * f1 -> ( ClassDecl() )*
    * f2 -> <EOF>
    */
   public void visit(Program n) throws Exception;

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
   public void visit(MainClass n) throws Exception;

   /**
    * f0 -> <CLASS>
    * f1 -> ID()
    * f2 -> ( <EXTENDS> ID() )?
    * f3 -> "{"
    * f4 -> ( VarDecl() )*
    * f5 -> ( MethodDecl() )*
    * f6 -> "}"
    */
   public void visit(ClassDecl n) throws Exception;

   /**
    * f0 -> Type()
    * f1 -> ID()
    * f2 -> ";"
    */
   public void visit(VarDecl n) throws Exception;

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
   public void visit(MethodDecl n) throws Exception;

   /**
    * f0 -> <INT> "[" "]"
    *       | <INT>
    *       | <BOOLEAN>
    *       | ID()
    */
   public void visit(Type n) throws Exception;

   /**
    * f0 -> "{" ( Statement() )* "}"
    *       | <IF> "(" Exp() ")" Statement() <ELSE> Statement()
    *       | <WHILE> "(" Exp() ")" Statement()
    *       | "System.out.println" "(" Exp() ")" ";"
    *       | ID() "=" Exp() ";"
    *       | ID() "[" Exp() "]" "=" Exp() ";"
    */
   public void visit(Statement n) throws Exception;

   /**
    * f0 -> BoolExp()
    * f1 -> ( "&&" BoolExp() )*
    */
   public void visit(Exp n) throws Exception;

   /**
    * f0 -> MathExp()
    * f1 -> ( "<" MathExp() )*
    */
   public void visit(BoolExp n) throws Exception;

   /**
    * f0 -> Term()
    * f1 -> ( ( "+" | "-" ) Term() )*
    */
   public void visit(MathExp n) throws Exception;

   /**
    * f0 -> Factor()
    * f1 -> ( "*" Factor() )*
    */
   public void visit(Term n) throws Exception;

   /**
    * f0 -> ( "!" )*
    * f1 -> ( <NEW> <INT> "[" Exp() "]" | <NEW> ID() "(" ")" | Atom() )
    * f2 -> ( MethodCall() )*
    */
   public void visit(Factor n) throws Exception;

   /**
    * f0 -> "." <LENGTH>
    *       | "." ID() "(" ( Exp() ( "," Exp() )* )? ")"
    *       | "[" Exp() "]"
    */
   public void visit(MethodCall n) throws Exception;

   /**
    * f0 -> "(" Exp() ")"
    *       | ID()
    *       | <INTEGER_LITERAL>
    *       | <TRUE>
    *       | <FALSE>
    *       | <THIS>
    */
   public void visit(Atom n) throws Exception;

   /**
    * f0 -> <IDENTIFIER>
    */
   public void visit(ID n) throws Exception;

}

