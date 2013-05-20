%{
#include "calc.tab.h"
#include <stdlib.h>
%}
blanks          [ \t]+
integer         [0-9]+
double          {integer}("."{integer})?
%%
{blanks}    { /* Ignore */    }
{double}    { yylval = atof(yytext); return NUM; }                                                       
"+"         { return yytext[0]; }
"-"         { return yytext[0]; }
"*"         { return yytext[0]; }
"/"         { return yytext[0]; }
"n"         { return yytext[0]; }
"^"         { return yytext[0]; } 
"\n"        { return yytext[0]; }
.           { /* Ignore */  }
%%
