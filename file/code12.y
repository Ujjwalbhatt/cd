%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
void yyerror(char *);
%}

%token digit
%left '+' '-'
%left '*' '/'

%%
S:S E'\n' {$$=$2; printf("\nArithmetic Expression is Valid\nOutput= %d\n",$$);}
| ;
E:E '+' E {$$=$1+$3;}
|E '-' E {$$=$1-$3;}
|E '*' E {$$=$1*$3;}
|E '/' E {$$=$1/$3;}
|digit {$$ = $1;}
;
%%

int main()
{
 printf("Enter Arithmetic Expression: \n");
 yyparse();
 return 0;
}

void yyerror(char *msg)
{
 printf("\n%s", msg);
 printf("\nArithmetic Expression is Invalid\n");
}