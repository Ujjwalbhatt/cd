//Repalce multiple blank space with 1 blank space using lex


%{
#include<stdio.h>
%}

%%
[ ]+ {printf(" ");}
[^\n ]+ {printf("%s",yytext);}
\n {printf("\n");}
%%

int yywrap(){
    return 0;
}

int main()
{
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
return 0;
}

















