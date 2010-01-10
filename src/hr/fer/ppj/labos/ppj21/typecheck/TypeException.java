
package hr.fer.ppj.labos.ppj21.typecheck;
import hr.fer.ppj.labos.ppj21.syntaxtree.*;

/**
 * This exception is thrown when type-check errors are encountered.
 */

public class TypeException extends Exception {

	private static final long serialVersionUID = 1L;
	private NodeToken token;
	
	/**
	 * "token" is the token in which the type error is detected.  
	 */
	
	public TypeException(String message, NodeToken token){
		super(message);
		this.token = token;
	}
	
	public String getMessage(){
		return super.getMessage() + " at line:" + token.beginLine + " column:" + token.beginColumn;
	}
}
