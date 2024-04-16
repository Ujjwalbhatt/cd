%{
#include<stdio.h>
%}

%%					
\/\/(.*) {};
\/\*(.|\n)*\*\/ {};

.|\n   {printf("%c",yytext[0]);}			
%%

int yywrap()
{
return 1;
}
int main()
{
    //Takig inputfrom the input.txt
    yyin = fopen("input.txt","r");
    //Showing the output in terminal
    printf("Output:\n");
    yylex();
    return 0;
}
