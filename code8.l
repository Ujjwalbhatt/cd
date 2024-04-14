%{
    #include<stdio.h>
%}

%%
\<[^>]*\> {
    fprintf(yyout,"%s\n",yytext);
}
.|\n; 
%%

int yywrap()
{
    return 1;
}

int main()
{
    FILE *input_file = fopen("input.html", "r");
    FILE *output_file = fopen("output.txt", "w");
    yyin = input_file;
    yyout = output_file;
    yylex();
    fclose(input_file);
    fclose(output_file);
    return 0;
}
