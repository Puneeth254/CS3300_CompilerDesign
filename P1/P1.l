%{
#include "P1.tab.h"
%}
%%

"+" {return ADD;}
"-" {return SUB;}
"*" {return MUL;}
"/" {return DIV;}
"(" {yylval.str = strdup(yytext); return LEFT;}
")" {yylval.str = strdup(yytext); return RIGHT;}
"{" {yylval.str = strdup(yytext);return CUR_LEFT;}
"}" {yylval.str = strdup(yytext);return CUR_RIGHT;}
"[" {yylval.str = strdup(yytext); return SQ_LEFT;}
"]" {yylval.str = strdup(yytext); return SQ_RIGHT;}
"System.out.println" {yylval.str = strdup(yytext);return PRINT;}
"," {yylval.str = strdup(yytext);return COMMA;}
"if" {yylval.str = strdup(yytext);return IF;}
"else" {yylval.str = strdup(yytext);return ELSE;}
"do" {yylval.str = strdup(yytext);return DO;}
"while" {yylval.str = strdup(yytext);return WHILE;}
"boolean" {yylval.str = strdup(yytext); return BOOL;}

"int" {yylval.str = strdup(yytext); return INT;}
"&&" {return AND;}
"||" {return OR;}
"!=" {yylval.str = strdup(yytext);return NEQ;}
"<=" {return LEQ;}
"class" {yylval.str = strdup(yytext);return CLASS;}
"extends" {yylval.str = strdup(yytext);return EXTENDS;}
"public" {yylval.str = strdup(yytext);return PUBLIC;}
"static" {yylval.str = strdup(yytext);return STATIC;}
"void" {yylval.str = strdup(yytext);return VOID;}
"main" {yylval.str = strdup(yytext);return MAIN;}
"String" {yylval.str = strdup(yytext);return STR;}
"return" {yylval.str = strdup(yytext);return RETURN;}
"." {yylval.str = strdup(yytext);return DOT;}
"length" {return LENGTH;}
"true" {return T;}
"false" {return F;}
"this" {return THIS;}
"new" {yylval.str = strdup(yytext); return NEW;}
"!" {yylval.str = strdup(yytext);return NOT;}
"#" {yylval.str = strdup(yytext);return HASH;}
"define" {yylval.str = strdup(yytext);return DEFINE;}
";" {yylval.str = strdup(yytext); return EOL;}

[a-zA-Z_]+[0-9a-zA-Z_]* {yylval.str = strdup(yytext); return ID;}

"=" {yylval.str = strdup(yytext);return EQ;}
(0|[1-9][0-9]*) {yylval.str = strdup(yytext); return NUMBER;}
"\n" {}
[ \t\r\f]+ {}
. {}
\/\/.* {}
\/\*.*\*\/ {}
%%















