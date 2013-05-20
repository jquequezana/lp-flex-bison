%{
#include "calc.tab.h"
#include <stdlib.h>
%}
blanks          [ \t\n]+
integer         [0-9]+
double          {integer}("."{integer})?
char            (+|-)
%%
(blanks)    {   /* Ignore */    }
(double)    {   yylval = atof(yytext);
                return NUM; }
(char)      {   return '+'; }
%%
