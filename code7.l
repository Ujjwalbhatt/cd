%{
#include<stdio.h>
%}

%%
\/\/(.*) {};					
\/\*(.*\n)*.*\*\/  {};			
%%

int yywrap()
{
return 1;
}
int main()
{
    FILE *input_file = fopen("input.c", "r");
    FILE *output_file = fopen("output.c", "w");
    yyin = input_file;
    yyout = output_file;
    yylex();
    fclose(input_file);
    fclose(output_file);
    return 0;
}
