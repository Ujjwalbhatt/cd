%{
#include<stdio.h>
%}
%%
\/\/(.*)             {};
\/\*(.|\n)*\*\/   {};
%%
int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("f7.c","r");
yyout=fopen("out.c","w");
yylex();
return 0;
} 
