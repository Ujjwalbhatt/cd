%{
    #include<stdio.h>
%}
%%
^[0-9]*"."[0-9]+$ {
        printf("Floating point value"); 
} 
.* {
        printf("Invalid floating point value"); 
}
%%
int yywrap()
{
  return 1;
}
int main()
{
    yylex();
}