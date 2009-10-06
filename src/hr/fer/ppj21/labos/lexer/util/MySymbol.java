package hr.fer.ppj21.labos.lexer.util;

import java_cup.runtime.Symbol;

public class MySymbol extends Symbol {
	
	private String type;
	private int line;
	private int column;
	private String text;
	private String klasa;
	
	public MySymbol(String type, int line, int column, int left, int right, Object value, String klasa, String text) {
	    super(0, left, right, value);
	    this.type=type;
	    this.line = line;
	    this.column = column;
	    this.text=text;
	    this.klasa = klasa;
	  }
	
	public MySymbol(String type, int line, int column, String klasa, String text) {
		this(type, line, column, -1, -1, null, klasa, text);
	}
	
	public MySymbol(String type, int line, int column, String klasa, Object value, String text) {
	    this(type, line, column, -1, -1, value, klasa, text);
	 }
	
	public String getType() {
		return type;
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
		if(type.equals(""))
			return "<"+ klasa + ">\t"+ text + "\t(line:"+line+",column:"+column+")";
		else
			return "<"+ klasa + "><"+type+">\t"+ text + "\t(line:"+line+",column:"+column+")";
	}
}
