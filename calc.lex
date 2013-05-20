%{
#include "calc.tab.h"
#include <stdlib.h>
%}
 
blanks          [ \t]+
integer         [0-9]+
double          {integer}('.'{integer})?
%%
{blanks}    { /* Ignore */    }
{integer}    { yylval = atoi(yytext); return NUM; }                                                       
"+"         { return yytext[0]; }
"-"         { return yytext[0]; }
"*"         { return yytext[0]; }
"/"         { return yytext[0]; }
"n"         { return yytext[0]; }
"^"         { return yytext[0]; } 
"\n"        { return yytext[0]; }
.           { /* Ignore */  }
%%

yywrap()
{
}
