package hr.fer.ppj21.labos.lexer;

import java_cup.runtime.Symbol;

public class MySymbol extends Symbol {
	
	private int line;
	private int column;
	private String text;
	private String klasa;
	
	public MySymbol(int type, int line, int column, int left, int right, Object value, String klasa, String text) {
	    super(type, left, right, value);
	    this.line = line;
	    this.column = column;
	    this.text=text;
	    this.klasa = klasa;
	  }
	
	public MySymbol(int type, int line, int column, String klasa, String text) {
		this(type, line, column, -1, -1, null, klasa, text);
	}
	
	public MySymbol(int type, int line, int column, String klasa, Object value, String text) {
	    this(type, line, column, -1, -1, value, klasa, text);
	 }
	
	public String getKlasa(){
		  return klasa;
	  }
	  public int getLine() {
	    return line;
	  }

	  public int getColumn() {
	    return column;
	  }
	  
	  public String getText(){
		  return this.value ==null ?this.text : this.value.toString();
	  }
	  
	  public String toString() {   
	    return "(row:"+line+",column:"+column+") - <"+ klasa + ">  "+ text;
	  }
}
