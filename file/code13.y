%{
#include<stdio.h>
int yylex(void);
void yyerror(char *);
%}
%token digit
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
ArithmeticExpression: E{printf("\nOutput=%d\n\n",$$);}
E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|E'%'E {$$=$1%$3;}
|'('E')' {$$=$2;}
| digit {$$=$1;}
;
%%
int main()
{
 printf("Enter Arithmetic Expressions: \n");
 yyparse();
 return 0;
}
void yyerror(char *msg)
{
 printf("\n%s", msg);
 printf("\nInvalid Arithmetic Expression");
}