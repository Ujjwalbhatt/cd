%{
    #include<stdio.h>
%}

%%
[\t" "]+ {
    fprintf(yyout," ");		
}
.|\n {
    fprintf(yyout,"%s",yytext);	
}
%%

int yywrap()
{
    return 1;
}

int main(void)
{
    FILE *input_file = fopen("input.txt", "r");
    FILE *output_file = fopen("output.txt", "w");
    yyin = input_file;
    yyout = output_file;
    yylex();
    fclose(input_file);
    fclose(output_file);
    return 0;
}
