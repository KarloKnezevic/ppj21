package hr.fer.ppj21.labos.lexer;

import hr.fer.ppj21.labos.lexer.util.*;
import java.io.*;
import java.util.*;
import java_cup.*;
%%

%public
%class Lexer
%type MySymbol
%char
%line
%column

%{
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
%}

%init{
yybegin(NORMALNO);
%init}

cijeliBroj = [0-9]+
decimalniBroj = [0-9]+"."[0-9]+
oktalnaZnamenka = [0-7]
hexZnamenka = [0-9a-fA-F]
escchar = \\([ntbrfva\\\'\"\?]|{oktalnaZnamenka}+|[xX]{hexZnamenka}+)
schar = [^\'\"\\\r\n]|{escchar}
znak = \'{schar}\'
string = \"{schar}*\"
identifikator = [A-Za-z][A-Za-z0-9]*
razmak = [\ \t]
noviRed = \r|\n|\r\n
%state NORMALNO KOMENTAR1 KOMENTAR2 LEXERROR

%%
<NORMALNO> {
{noviRed} { }
{razmak} { }
if		{	return symbol(MySym.IF, MySym.KEYWORD); }
then	{	return symbol(MySym.THEN, MySym.KEYWORD); }
else	{	return symbol(MySym.ELSE, MySym.KEYWORD); }
elseif	{	return symbol(MySym.ELSEIF, MySym.KEYWORD); }
begin	{	return symbol(MySym.BEGIN, MySym.KEYWORD); }
end		{	return symbol(MySym.END, MySym.KEYWORD); }
while	{	return symbol(MySym.WHILE, MySym.KEYWORD); }
do		{	return symbol(MySym.DO, MySym.KEYWORD); }
for		{	return symbol(MySym.FOR, MySym.KEYWORD); }
return	{	return symbol(MySym.RETURN, MySym.KEYWORD); }
null	{	return symbol(MySym.NULL, MySym.KEYWORD); }
int		{	return symbol(MySym.INT, MySym.KEYWORD); }
char	{	return symbol(MySym.CHAR, MySym.KEYWORD); }
bool	{	return symbol(MySym.BOOL, MySym.KEYWORD); }
void	{	return symbol(MySym.VOID, MySym.KEYWORD); }
class	{	return symbol(MySym.CLASS, MySym.KEYWORD); }
extends	{	return symbol(MySym.EXTENDS, MySym.KEYWORD); }
this	{	return symbol(MySym.THIS, MySym.KEYWORD); }
";" 	{	return symbol(MySym.SEMICOL, MySym.SEMICOLON); }
"=" 	{	return symbol(MySym.ASSIGN, MySym.OPERATOR); }
"||" 	{	return symbol(MySym.OR, MySym.OPERATOR); }
"&&" 	{	return symbol(MySym.AND, MySym.OPERATOR); }
"!" 	{	return symbol(MySym.NOT, MySym.OPERATOR); }
"<" 	{	return symbol(MySym.LT, MySym.OPERATOR); }
">" 	{	return symbol(MySym.GT, MySym.OPERATOR); }
"<=" 	{	return symbol(MySym.LE, MySym.OPERATOR); }
">=" 	{	return symbol(MySym.GE, MySym.OPERATOR); }
"==" 	{	return symbol(MySym.EQ, MySym.OPERATOR); }
"!=" 	{	return symbol(MySym.NE, MySym.OPERATOR); }
"+" 	{	return symbol(MySym.PLUS, MySym.OPERATOR); }
"-" 	{	return symbol(MySym.MINUS, MySym.OPERATOR); }
"*" 	{	return symbol(MySym.TIMES, MySym.OPERATOR); }
"/" 	{	return symbol(MySym.DIV, MySym.OPERATOR); }
"%"		{	return symbol(MySym.MOD, MySym.OPERATOR); }
"++" 	{	return symbol(MySym.INC, MySym.OPERATOR); }
"--" 	{	return symbol(MySym.DEC, MySym.OPERATOR); }
"&" 	{	return symbol(MySym.AMP, MySym.OPERATOR); }
"^" 	{	return symbol(MySym.PTR, MySym.OPERATOR); }
"(" 	{	return symbol(MySym.LN, MySym.OBRACKET); }
")" 	{	return symbol(MySym.RN, MySym.CBRACKET); }
"[" 	{	return symbol(MySym.LS, MySym.OBRACKET); }
"]" 	{	return symbol(MySym.RS, MySym.CBRACKET); }
"{"		{	return symbol(MySym.LC, MySym.OBRACKET); }
"}"		{	return symbol(MySym.RC, MySym.CBRACKET); }
"." 	{	return symbol(MySym.DOT, MySym.SPECIAL); }
"," 	{	return symbol(MySym.COMMA, MySym.SPECIAL); }
"..." 	{	return symbol(MySym.ETC, MySym.SPECIAL); }
{cijeliBroj} 	{ return symbol(0, MySym.C_KONST, new Integer(yytext())); }
{decimalniBroj} { return symbol(1, MySym.D_KONST, new Double(yytext())); }
{znak} 			{ return symbol(2, MySym.ZNAK, new String(yytext())); }
{string} 		{ return symbol(3, MySym.STRING, new String(yytext())); }
{identifikator} { return symbol(4, MySym.IDENTIFIKATOR, new String(yytext())); }

"//" { yybegin(KOMENTAR1); }
"/*" { yybegin(KOMENTAR2); }
. {
yybegin(LEXERROR);
return symbol(MySym.ERROR);
}
}

<LEXERROR> {
";" {
yybegin(NORMALNO);
return symbol(MySym.SEMICOLON);
}
{noviRed} {
yybegin(NORMALNO);
}
. { return symbol(MySym.ERROR); }
}
<KOMENTAR1> {
{noviRed} { yybegin(NORMALNO); }
. { }
}
<KOMENTAR2> {
"*/" { yybegin(NORMALNO); }
{noviRed} { }
. { }
}
<<EOF>> { return symbol(MySym.EOF); }