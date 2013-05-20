%{
#include "calc.tab.h"
#include <stdlib.h>
%}
blanks          [ \t]+
digitt          [0-9]
integer         {digit}+
double          {integer}('.'{integer})?
%%
(blanks)    { /* Ignore */    }
(integer)    { yylval = atof(yytext); return NUM; }                                                       
'+'         { return yytext[0]; }
'-'         { return yytext[0]; }
'*'         { return yytext[0]; }
'/'         { return yytext[0]; }
'n'         { return yytext[0]; }
'^'         { return yytext[0]; } 
'\n'        { return yytext[0]; }
.           { /* Ignore */  }
%%
