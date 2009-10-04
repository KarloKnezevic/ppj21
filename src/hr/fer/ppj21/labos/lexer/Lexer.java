/* The following code was generated by JFlex 1.4.3 on 04.10.09. 15:38 */

package hr.fer.ppj21.labos.lexer;

import hr.fer.ppj21.labos.lexer.util.*;
import java.io.*;
import java.util.*;
import java_cup.*;

/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.4.3
 * on 04.10.09. 15:38 from the specification file
 * <tt>C:/Users/Tin Franovic/Documents/[CODING]/Java/PPJprojekt21/src/hr/fer/ppj21/labos/lexer/lex.flex</tt>
 */
public class Lexer {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int YYINITIAL = 0;
  public static final int KOMENTAR2 = 6;
  public static final int LEXERROR = 8;
  public static final int KOMENTAR1 = 4;
  public static final int NORMALNO = 2;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = { 
     0,  0,  1,  1,  2,  2,  3,  3,  4, 4
  };

  /** 
   * Translates characters to character classes
   */
  private static final String ZZ_CMAP_PACKED = 
    "\11\0\1\16\1\11\2\0\1\17\22\0\1\16\1\45\1\12\2\0"+
    "\1\54\1\44\1\13\1\56\1\57\1\52\1\50\1\64\1\51\1\2"+
    "\1\53\10\3\2\1\1\0\1\41\1\46\1\42\1\47\1\6\1\0"+
    "\6\4\21\14\1\10\2\14\1\60\1\5\1\61\1\55\2\0\1\7"+
    "\1\30\1\37\1\32\1\24\1\21\1\31\1\23\1\20\2\14\1\26"+
    "\1\14\1\25\1\34\2\14\1\35\1\27\1\22\1\36\1\15\1\33"+
    "\1\40\2\14\1\62\1\43\1\63\uff82\0";

  /** 
   * Translates characters to character classes
   */
  private static final char [] ZZ_CMAP = zzUnpackCMap(ZZ_CMAP_PACKED);

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\5\0\1\1\1\2\1\3\1\4\1\5\2\1\1\4"+
    "\1\5\12\4\1\6\1\7\1\1\1\10\1\11\1\12"+
    "\1\13\1\14\1\15\1\16\1\17\1\20\1\21\1\22"+
    "\1\23\1\24\1\25\1\26\1\27\1\30\2\31\1\5"+
    "\1\32\1\33\4\0\1\34\2\0\1\4\1\35\11\4"+
    "\1\36\4\4\1\37\1\40\1\41\1\42\1\43\1\44"+
    "\1\45\1\46\1\47\1\50\1\51\1\52\1\0\1\53"+
    "\2\0\1\4\1\54\1\55\2\4\1\56\11\4\1\0"+
    "\1\57\1\60\1\61\1\62\1\4\1\63\1\4\1\64"+
    "\2\4\1\65\3\4\1\66\1\67\1\4\1\70\1\71"+
    "\1\4\1\72\1\73";

  private static int [] zzUnpackAction() {
    int [] result = new int[126];
    int offset = 0;
    offset = zzUnpackAction(ZZ_ACTION_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAction(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /** 
   * Translates a state to a row index in the transition table
   */
  private static final int [] ZZ_ROWMAP = zzUnpackRowMap();

  private static final String ZZ_ROWMAP_PACKED_0 =
    "\0\0\0\65\0\152\0\237\0\324\0\0\0\u0109\0\u013e"+
    "\0\u0173\0\0\0\u01a8\0\u01dd\0\u0212\0\u0247\0\u027c\0\u02b1"+
    "\0\u02e6\0\u031b\0\u0350\0\u0385\0\u03ba\0\u03ef\0\u0424\0\u0459"+
    "\0\0\0\u048e\0\u04c3\0\u04f8\0\u052d\0\u0562\0\u0597\0\u05cc"+
    "\0\u0601\0\0\0\u0636\0\0\0\0\0\0\0\0\0\0"+
    "\0\0\0\0\0\0\0\0\0\0\0\u066b\0\u06a0\0\0"+
    "\0\0\0\u06d5\0\u070a\0\u01a8\0\u073f\0\0\0\u0774\0\u07a9"+
    "\0\u07de\0\u0173\0\u0813\0\u0848\0\u087d\0\u08b2\0\u08e7\0\u091c"+
    "\0\u0951\0\u0986\0\u09bb\0\u0173\0\u09f0\0\u0a25\0\u0a5a\0\u0a8f"+
    "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"+
    "\0\0\0\0\0\u06d5\0\0\0\u0ac4\0\0\0\u0af9\0\u0b2e"+
    "\0\u0b63\0\u0173\0\u0173\0\u0b98\0\u0bcd\0\u0173\0\u0c02\0\u0c37"+
    "\0\u0c6c\0\u0ca1\0\u0cd6\0\u0d0b\0\u0d40\0\u0d75\0\u0daa\0\u0ddf"+
    "\0\u0173\0\u0173\0\u0173\0\u0e14\0\u0e49\0\u0173\0\u0e7e\0\u0173"+
    "\0\u0eb3\0\u0ee8\0\u0173\0\u0f1d\0\u0f52\0\u0f87\0\u0173\0\u0173"+
    "\0\u0fbc\0\u0173\0\u0173\0\u0ff1\0\u0173\0\u0173";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[126];
    int offset = 0;
    offset = zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackRowMap(String packed, int offset, int [] result) {
    int i = 0;  /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int high = packed.charAt(i++) << 16;
      result[j++] = high | packed.charAt(i++);
    }
    return j;
  }

  /** 
   * The transition table of the DFA
   */
  private static final int [] ZZ_TRANS = zzUnpackTrans();

  private static final String ZZ_TRANS_PACKED_0 =
    "\65\0\1\6\1\7\1\10\1\7\1\11\2\6\2\11"+
    "\1\12\1\13\1\14\1\11\1\15\1\12\1\16\1\17"+
    "\1\20\1\21\1\11\1\22\1\23\2\11\1\24\1\11"+
    "\1\25\1\26\1\11\1\27\1\11\1\30\1\11\1\31"+
    "\1\32\1\33\1\34\1\35\1\36\1\37\1\40\1\41"+
    "\1\42\1\43\1\44\1\45\1\46\1\47\1\50\1\51"+
    "\1\52\1\53\1\54\11\12\1\55\5\12\1\56\64\12"+
    "\1\16\32\12\1\57\12\12\11\60\1\55\5\60\1\56"+
    "\21\60\1\61\23\60\1\0\1\7\1\62\1\7\63\0"+
    "\1\63\63\0\1\11\1\0\2\11\2\0\2\11\3\0"+
    "\2\11\2\0\21\11\24\0\5\64\1\65\3\64\1\0"+
    "\1\66\1\0\3\64\1\0\45\64\5\67\1\70\3\67"+
    "\3\0\3\67\1\0\45\67\1\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\14\11\1\71\4\11"+
    "\35\0\1\12\54\0\1\11\1\0\2\11\2\0\2\11"+
    "\3\0\2\11\2\0\1\11\1\72\3\11\1\73\13\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\14\11\1\74\4\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\3\11\1\75\15\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\5\11\1\76\1\77\11\11\1\100\25\0\1\11"+
    "\1\0\2\11\2\0\2\11\3\0\2\11\2\0\16\11"+
    "\1\101\2\11\25\0\1\11\1\0\2\11\2\0\2\11"+
    "\3\0\2\11\2\0\4\11\1\102\7\11\1\103\4\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\14\11\1\104\4\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\3\11\1\105\15\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\4\11\1\106\14\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\3\11\1\107\2\11"+
    "\1\110\12\11\66\0\1\111\65\0\1\112\65\0\1\113"+
    "\62\0\1\114\64\0\1\115\64\0\1\116\72\0\1\117"+
    "\65\0\1\120\65\0\1\121\1\122\22\0\1\55\126\0"+
    "\1\55\12\0\1\123\1\0\1\123\63\0\1\124\65\0"+
    "\1\64\1\0\3\64\1\125\1\0\2\64\1\0\1\64"+
    "\3\0\2\64\2\0\1\64\2\0\1\64\4\0\1\64"+
    "\2\0\1\125\37\0\1\126\54\0\1\127\1\0\3\67"+
    "\1\130\1\0\2\67\1\0\1\67\3\0\2\67\2\0"+
    "\1\67\2\0\1\67\4\0\1\67\2\0\1\130\25\0"+
    "\1\11\1\0\2\11\2\0\2\11\3\0\2\11\2\0"+
    "\1\131\20\11\25\0\1\11\1\0\2\11\2\0\2\11"+
    "\3\0\2\11\2\0\2\11\1\132\16\11\25\0\1\11"+
    "\1\0\2\11\2\0\2\11\3\0\2\11\2\0\15\11"+
    "\1\133\3\11\25\0\1\11\1\0\2\11\2\0\2\11"+
    "\3\0\2\11\2\0\1\134\3\11\1\135\14\11\25\0"+
    "\1\11\1\0\2\11\2\0\2\11\3\0\2\11\2\0"+
    "\12\11\1\136\6\11\25\0\1\11\1\0\2\11\2\0"+
    "\2\11\3\0\2\11\2\0\7\11\1\137\11\11\25\0"+
    "\1\11\1\0\2\11\2\0\2\11\3\0\2\11\2\0"+
    "\2\11\1\140\16\11\25\0\1\11\1\0\2\11\2\0"+
    "\2\11\3\0\2\11\2\0\6\11\1\141\12\11\25\0"+
    "\1\11\1\0\2\11\2\0\2\11\3\0\2\11\2\0"+
    "\11\11\1\142\7\11\25\0\1\11\1\0\2\11\2\0"+
    "\2\11\3\0\2\11\2\0\14\11\1\143\4\11\25\0"+
    "\1\11\1\0\2\11\2\0\2\11\3\0\2\11\2\0"+
    "\1\144\20\11\25\0\1\11\1\0\2\11\2\0\2\11"+
    "\3\0\2\11\2\0\2\11\1\145\16\11\25\0\1\11"+
    "\1\0\2\11\2\0\1\146\1\11\3\0\2\11\2\0"+
    "\21\11\25\0\1\11\1\0\2\11\2\0\1\147\1\11"+
    "\3\0\2\11\2\0\21\11\25\0\1\64\1\0\2\64"+
    "\2\0\1\64\11\0\1\64\2\0\1\64\3\0\1\64"+
    "\1\0\1\64\4\0\1\64\30\0\1\127\7\0\1\126"+
    "\52\0\1\150\1\0\2\150\2\0\1\150\11\0\1\150"+
    "\2\0\1\150\3\0\1\150\1\0\1\150\4\0\1\150"+
    "\26\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\12\11\1\151\6\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\7\11\1\152\11\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\5\11\1\153\13\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\4\11\1\154\14\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\4\11\1\155\14\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\6\11\1\156\12\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\1\157\20\11\25\0\1\11\1\0\2\11\2\0"+
    "\2\11\3\0\2\11\2\0\6\11\1\160\12\11\25\0"+
    "\1\11\1\0\2\11\2\0\2\11\3\0\2\11\2\0"+
    "\6\11\1\161\12\11\25\0\1\11\1\0\2\11\2\0"+
    "\2\11\3\0\2\11\2\0\16\11\1\162\2\11\25\0"+
    "\1\11\1\0\2\11\2\0\2\11\3\0\2\11\2\0"+
    "\15\11\1\163\3\11\25\0\1\11\1\0\2\11\2\0"+
    "\2\11\3\0\2\11\2\0\7\11\1\164\11\11\25\0"+
    "\1\150\1\0\2\150\2\0\1\150\3\0\1\126\5\0"+
    "\1\150\2\0\1\150\3\0\1\150\1\0\1\150\4\0"+
    "\1\150\26\0\1\11\1\0\2\11\2\0\2\11\3\0"+
    "\2\11\2\0\1\165\20\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\5\11\1\166\13\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\5\11\1\167\13\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\4\11\1\170\14\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\15\11\1\171\3\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\7\11\1\172\11\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\1\11\1\173\17\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\12\11\1\174\6\11"+
    "\25\0\1\11\1\0\2\11\2\0\2\11\3\0\2\11"+
    "\2\0\5\11\1\175\13\11\25\0\1\11\1\0\2\11"+
    "\2\0\2\11\3\0\2\11\2\0\7\11\1\176\11\11"+
    "\24\0";

  private static int [] zzUnpackTrans() {
    int [] result = new int[4134];
    int offset = 0;
    offset = zzUnpackTrans(ZZ_TRANS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackTrans(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      value--;
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /* error codes */
  private static final int ZZ_UNKNOWN_ERROR = 0;
  private static final int ZZ_NO_MATCH = 1;
  private static final int ZZ_PUSHBACK_2BIG = 2;

  /* error messages for the codes above */
  private static final String ZZ_ERROR_MSG[] = {
    "Unkown internal scanner error",
    "Error: could not match input",
    "Error: pushback value was too large"
  };

  /**
   * ZZ_ATTRIBUTE[aState] contains the attributes of state <code>aState</code>
   */
  private static final int [] ZZ_ATTRIBUTE = zzUnpackAttribute();

  private static final String ZZ_ATTRIBUTE_PACKED_0 =
    "\1\10\4\0\1\11\3\1\1\11\16\1\1\11\10\1"+
    "\1\11\1\1\12\11\2\1\2\11\4\0\1\11\2\0"+
    "\20\1\12\11\1\1\1\11\1\0\1\11\2\0\17\1"+
    "\1\0\26\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[126];
    int offset = 0;
    offset = zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAttribute(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /** the input device */
  private java.io.Reader zzReader;

  /** the current state of the DFA */
  private int zzState;

  /** the current lexical state */
  private int zzLexicalState = YYINITIAL;

  /** this buffer contains the current text to be matched and is
      the source of the yytext() string */
  private char zzBuffer[] = new char[ZZ_BUFFERSIZE];

  /** the textposition at the last accepting state */
  private int zzMarkedPos;

  /** the current text position in the buffer */
  private int zzCurrentPos;

  /** startRead marks the beginning of the yytext() string in the buffer */
  private int zzStartRead;

  /** endRead marks the last character in the buffer, that has been read
      from input */
  private int zzEndRead;

  /** number of newlines encountered up to the start of the matched text */
  private int yyline;

  /** the number of characters up to the start of the matched text */
  private int yychar;

  /**
   * the number of characters from the last newline up to the start of the 
   * matched text
   */
  private int yycolumn;

  /** 
   * zzAtBOL == true <=> the scanner is currently at the beginning of a line
   */
  private boolean zzAtBOL = true;

  /** zzAtEOF == true <=> the scanner is at the EOF */
  public boolean zzAtEOF;

  /** denotes if the user-EOF-code has already been executed */
  private boolean zzEOFDone;

  /* user code: */
StringBuffer string = new StringBuffer();

private MySymbol symbol(String klasa) {
return symbol(0, klasa);
}

private MySymbol symbol(int type, String klasa) {
return new MySymbol(type, yyline, yycolumn, klasa, yytext());
}
private MySymbol symbol(int type, String klasa, Object value) {
return new MySymbol(type, yyline, yycolumn, klasa, value, yytext());
}


  /**
   * Creates a new scanner
   * There is also a java.io.InputStream version of this constructor.
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public Lexer(java.io.Reader in) {
  yybegin(NORMALNO);
    this.zzReader = in;
  }

  /**
   * Creates a new scanner.
   * There is also java.io.Reader version of this constructor.
   *
   * @param   in  the java.io.Inputstream to read input from.
   */
  public Lexer(java.io.InputStream in) {
    this(new java.io.InputStreamReader(in));
  }

  /** 
   * Unpacks the compressed character translation table.
   *
   * @param packed   the packed character translation table
   * @return         the unpacked character translation table
   */
  private static char [] zzUnpackCMap(String packed) {
    char [] map = new char[0x10000];
    int i = 0;  /* index in packed string  */
    int j = 0;  /* index in unpacked array */
    while (i < 132) {
      int  count = packed.charAt(i++);
      char value = packed.charAt(i++);
      do map[j++] = value; while (--count > 0);
    }
    return map;
  }


  /**
   * Refills the input buffer.
   *
   * @return      <code>false</code>, iff there was new input.
   * 
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  private boolean zzRefill() throws java.io.IOException {

    /* first: make room (if you can) */
    if (zzStartRead > 0) {
      System.arraycopy(zzBuffer, zzStartRead,
                       zzBuffer, 0,
                       zzEndRead-zzStartRead);

      /* translate stored positions */
      zzEndRead-= zzStartRead;
      zzCurrentPos-= zzStartRead;
      zzMarkedPos-= zzStartRead;
      zzStartRead = 0;
    }

    /* is the buffer big enough? */
    if (zzCurrentPos >= zzBuffer.length) {
      /* if not: blow it up */
      char newBuffer[] = new char[zzCurrentPos*2];
      System.arraycopy(zzBuffer, 0, newBuffer, 0, zzBuffer.length);
      zzBuffer = newBuffer;
    }

    /* finally: fill the buffer with new input */
    int numRead = zzReader.read(zzBuffer, zzEndRead,
                                            zzBuffer.length-zzEndRead);

    if (numRead > 0) {
      zzEndRead+= numRead;
      return false;
    }
    // unlikely but not impossible: read 0 characters, but not at end of stream    
    if (numRead == 0) {
      int c = zzReader.read();
      if (c == -1) {
        return true;
      } else {
        zzBuffer[zzEndRead++] = (char) c;
        return false;
      }     
    }

	// numRead < 0
    return true;
  }

    
  /**
   * Closes the input stream.
   */
  public final void yyclose() throws java.io.IOException {
    zzAtEOF = true;            /* indicate end of file */
    zzEndRead = zzStartRead;  /* invalidate buffer    */

    if (zzReader != null)
      zzReader.close();
  }


  /**
   * Resets the scanner to read from a new input stream.
   * Does not close the old reader.
   *
   * All internal variables are reset, the old input stream 
   * <b>cannot</b> be reused (internal buffer is discarded and lost).
   * Lexical state is set to <tt>ZZ_INITIAL</tt>.
   *
   * @param reader   the new input stream 
   */
  public final void yyreset(java.io.Reader reader) {
    zzReader = reader;
    zzAtBOL  = true;
    zzAtEOF  = false;
    zzEOFDone = false;
    zzEndRead = zzStartRead = 0;
    zzCurrentPos = zzMarkedPos = 0;
    yyline = yychar = yycolumn = 0;
    zzLexicalState = YYINITIAL;
  }


  /**
   * Returns the current lexical state.
   */
  public final int yystate() {
    return zzLexicalState;
  }


  /**
   * Enters a new lexical state
   *
   * @param newState the new lexical state
   */
  public final void yybegin(int newState) {
    zzLexicalState = newState;
  }


  /**
   * Returns the text matched by the current regular expression.
   */
  public final String yytext() {
    return new String( zzBuffer, zzStartRead, zzMarkedPos-zzStartRead );
  }


  /**
   * Returns the character at position <tt>pos</tt> from the 
   * matched text. 
   * 
   * It is equivalent to yytext().charAt(pos), but faster
   *
   * @param pos the position of the character to fetch. 
   *            A value from 0 to yylength()-1.
   *
   * @return the character at position pos
   */
  public final char yycharat(int pos) {
    return zzBuffer[zzStartRead+pos];
  }


  /**
   * Returns the length of the matched text region.
   */
  public final int yylength() {
    return zzMarkedPos-zzStartRead;
  }


  /**
   * Reports an error that occured while scanning.
   *
   * In a wellformed scanner (no or only correct usage of 
   * yypushback(int) and a match-all fallback rule) this method 
   * will only be called with things that "Can't Possibly Happen".
   * If this method is called, something is seriously wrong
   * (e.g. a JFlex bug producing a faulty scanner etc.).
   *
   * Usual syntax/scanner level error handling should be done
   * in error fallback rules.
   *
   * @param   errorCode  the code of the errormessage to display
   */
  private void zzScanError(int errorCode) {
    String message;
    try {
      message = ZZ_ERROR_MSG[errorCode];
    }
    catch (ArrayIndexOutOfBoundsException e) {
      message = ZZ_ERROR_MSG[ZZ_UNKNOWN_ERROR];
    }

    throw new Error(message);
  } 


  /**
   * Pushes the specified amount of characters back into the input stream.
   *
   * They will be read again by then next call of the scanning method
   *
   * @param number  the number of characters to be read again.
   *                This number must not be greater than yylength()!
   */
  public void yypushback(int number)  {
    if ( number > yylength() )
      zzScanError(ZZ_PUSHBACK_2BIG);

    zzMarkedPos -= number;
  }


  /**
   * Resumes scanning until the next regular expression is matched,
   * the end of input is encountered or an I/O-Error occurs.
   *
   * @return      the next token
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  public MySymbol yylex() throws java.io.IOException {
    int zzInput;
    int zzAction;

    // cached fields:
    int zzCurrentPosL;
    int zzMarkedPosL;
    int zzEndReadL = zzEndRead;
    char [] zzBufferL = zzBuffer;
    char [] zzCMapL = ZZ_CMAP;

    int [] zzTransL = ZZ_TRANS;
    int [] zzRowMapL = ZZ_ROWMAP;
    int [] zzAttrL = ZZ_ATTRIBUTE;

    while (true) {
      zzMarkedPosL = zzMarkedPos;

      yychar+= zzMarkedPosL-zzStartRead;

      boolean zzR = false;
      for (zzCurrentPosL = zzStartRead; zzCurrentPosL < zzMarkedPosL;
                                                             zzCurrentPosL++) {
        switch (zzBufferL[zzCurrentPosL]) {
        case '\u000B':
        case '\u000C':
        case '\u0085':
        case '\u2028':
        case '\u2029':
          yyline++;
          yycolumn = 0;
          zzR = false;
          break;
        case '\r':
          yyline++;
          yycolumn = 0;
          zzR = true;
          break;
        case '\n':
          if (zzR)
            zzR = false;
          else {
            yyline++;
            yycolumn = 0;
          }
          break;
        default:
          zzR = false;
          yycolumn++;
        }
      }

      if (zzR) {
        // peek one character ahead if it is \n (if we have counted one line too much)
        boolean zzPeek;
        if (zzMarkedPosL < zzEndReadL)
          zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        else if (zzAtEOF)
          zzPeek = false;
        else {
          boolean eof = zzRefill();
          zzEndReadL = zzEndRead;
          zzMarkedPosL = zzMarkedPos;
          zzBufferL = zzBuffer;
          if (eof) 
            zzPeek = false;
          else 
            zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        }
        if (zzPeek) yyline--;
      }
      zzAction = -1;

      zzCurrentPosL = zzCurrentPos = zzStartRead = zzMarkedPosL;
  
      zzState = ZZ_LEXSTATE[zzLexicalState];


      zzForAction: {
        while (true) {
    
          if (zzCurrentPosL < zzEndReadL)
            zzInput = zzBufferL[zzCurrentPosL++];
          else if (zzAtEOF) {
            zzInput = YYEOF;
            break zzForAction;
          }
          else {
            // store back cached positions
            zzCurrentPos  = zzCurrentPosL;
            zzMarkedPos   = zzMarkedPosL;
            boolean eof = zzRefill();
            // get translated positions and possibly new buffer
            zzCurrentPosL  = zzCurrentPos;
            zzMarkedPosL   = zzMarkedPos;
            zzBufferL      = zzBuffer;
            zzEndReadL     = zzEndRead;
            if (eof) {
              zzInput = YYEOF;
              break zzForAction;
            }
            else {
              zzInput = zzBufferL[zzCurrentPosL++];
            }
          }
          int zzNext = zzTransL[ zzRowMapL[zzState] + zzCMapL[zzInput] ];
          if (zzNext == -1) break zzForAction;
          zzState = zzNext;

          int zzAttributes = zzAttrL[zzState];
          if ( (zzAttributes & 1) == 1 ) {
            zzAction = zzState;
            zzMarkedPosL = zzCurrentPosL;
            if ( (zzAttributes & 8) == 8 ) break zzForAction;
          }

        }
      }

      // store back cached position
      zzMarkedPos = zzMarkedPosL;

      switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
        case 50: 
          { return symbol(MySym.ELSE, MySym.KEYWORD);
          }
        case 60: break;
        case 36: 
          { return symbol(MySym.GE, MySym.OPERATOR);
          }
        case 61: break;
        case 8: 
          { return symbol(MySym.AMP, MySym.OPERATOR);
          }
        case 62: break;
        case 48: 
          { return symbol(MySym.THIS, MySym.KEYWORD);
          }
        case 63: break;
        case 38: 
          { return symbol(MySym.DEC, MySym.OPERATOR);
          }
        case 64: break;
        case 10: 
          { return symbol(MySym.LT, MySym.OPERATOR);
          }
        case 65: break;
        case 59: 
          { return symbol(MySym.EXTENDS, MySym.KEYWORD);
          }
        case 66: break;
        case 54: 
          { return symbol(MySym.BEGIN, MySym.KEYWORD);
          }
        case 67: break;
        case 31: 
          { return symbol(MySym.EQ, MySym.OPERATOR);
          }
        case 68: break;
        case 34: 
          { return symbol(MySym.NE, MySym.OPERATOR);
          }
        case 69: break;
        case 12: 
          { return symbol(MySym.PLUS, MySym.OPERATOR);
          }
        case 70: break;
        case 2: 
          { return symbol(0, MySym.C_KONST, new Integer(yytext()));
          }
        case 71: break;
        case 1: 
          { yybegin(LEXERROR);
return symbol(MySym.ERROR);
          }
        case 72: break;
        case 9: 
          { return symbol(MySym.NOT, MySym.OPERATOR);
          }
        case 73: break;
        case 3: 
          { return symbol(MySym.DOT, MySym.SPECIAL);
          }
        case 74: break;
        case 4: 
          { return symbol(4, MySym.IDENTIFIKATOR, new String(yytext()));
          }
        case 75: break;
        case 24: 
          { return symbol(MySym.COMMA, MySym.SPECIAL);
          }
        case 76: break;
        case 23: 
          { return symbol(MySym.RC, MySym.CBRACKET);
          }
        case 77: break;
        case 39: 
          { yybegin(KOMENTAR2);
          }
        case 78: break;
        case 41: 
          { return symbol(1, MySym.D_KONST, new Double(yytext()));
          }
        case 79: break;
        case 35: 
          { return symbol(MySym.LE, MySym.OPERATOR);
          }
        case 80: break;
        case 44: 
          { return symbol(MySym.INT, MySym.KEYWORD);
          }
        case 81: break;
        case 40: 
          { yybegin(KOMENTAR1);
          }
        case 82: break;
        case 16: 
          { return symbol(MySym.MOD, MySym.OPERATOR);
          }
        case 83: break;
        case 22: 
          { return symbol(MySym.LC, MySym.OBRACKET);
          }
        case 84: break;
        case 13: 
          { return symbol(MySym.MINUS, MySym.OPERATOR);
          }
        case 85: break;
        case 45: 
          { return symbol(MySym.FOR, MySym.KEYWORD);
          }
        case 86: break;
        case 43: 
          { return symbol(2, MySym.ZNAK, new String(yytext()));
          }
        case 87: break;
        case 27: 
          { yybegin(NORMALNO);
return symbol(MySym.SEMICOLON);
          }
        case 88: break;
        case 49: 
          { return symbol(MySym.THEN, MySym.KEYWORD);
          }
        case 89: break;
        case 21: 
          { return symbol(MySym.RS, MySym.CBRACKET);
          }
        case 90: break;
        case 42: 
          { return symbol(MySym.ETC, MySym.SPECIAL);
          }
        case 91: break;
        case 15: 
          { return symbol(MySym.DIV, MySym.OPERATOR);
          }
        case 92: break;
        case 32: 
          { return symbol(MySym.OR, MySym.OPERATOR);
          }
        case 93: break;
        case 53: 
          { return symbol(MySym.CHAR, MySym.KEYWORD);
          }
        case 94: break;
        case 17: 
          { return symbol(MySym.PTR, MySym.OPERATOR);
          }
        case 95: break;
        case 56: 
          { return symbol(MySym.CLASS, MySym.KEYWORD);
          }
        case 96: break;
        case 11: 
          { return symbol(MySym.GT, MySym.OPERATOR);
          }
        case 97: break;
        case 19: 
          { return symbol(MySym.RN, MySym.CBRACKET);
          }
        case 98: break;
        case 55: 
          { return symbol(MySym.WHILE, MySym.KEYWORD);
          }
        case 99: break;
        case 20: 
          { return symbol(MySym.LS, MySym.OBRACKET);
          }
        case 100: break;
        case 57: 
          { return symbol(MySym.ELSEIF, MySym.KEYWORD);
          }
        case 101: break;
        case 28: 
          { return symbol(3, MySym.STRING, new String(yytext()));
          }
        case 102: break;
        case 7: 
          { return symbol(MySym.ASSIGN, MySym.OPERATOR);
          }
        case 103: break;
        case 52: 
          { return symbol(MySym.BOOL, MySym.KEYWORD);
          }
        case 104: break;
        case 14: 
          { return symbol(MySym.TIMES, MySym.OPERATOR);
          }
        case 105: break;
        case 29: 
          { return symbol(MySym.IF, MySym.KEYWORD);
          }
        case 106: break;
        case 47: 
          { return symbol(MySym.VOID, MySym.KEYWORD);
          }
        case 107: break;
        case 37: 
          { return symbol(MySym.INC, MySym.OPERATOR);
          }
        case 108: break;
        case 18: 
          { return symbol(MySym.LN, MySym.OBRACKET);
          }
        case 109: break;
        case 58: 
          { return symbol(MySym.RETURN, MySym.KEYWORD);
          }
        case 110: break;
        case 25: 
          { yybegin(NORMALNO);
          }
        case 111: break;
        case 30: 
          { return symbol(MySym.DO, MySym.KEYWORD);
          }
        case 112: break;
        case 46: 
          { return symbol(MySym.END, MySym.KEYWORD);
          }
        case 113: break;
        case 26: 
          { return symbol(MySym.ERROR);
          }
        case 114: break;
        case 51: 
          { return symbol(MySym.NULL, MySym.KEYWORD);
          }
        case 115: break;
        case 33: 
          { return symbol(MySym.AND, MySym.OPERATOR);
          }
        case 116: break;
        case 5: 
          { 
          }
        case 117: break;
        case 6: 
          { return symbol(MySym.SEMICOL, MySym.SEMICOLON);
          }
        case 118: break;
        default: 
          if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
            zzAtEOF = true;
              {
                return symbol(MySym.EOF);
              }
          } 
          else {
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }


}
