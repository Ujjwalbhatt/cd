%{
    #include<stdio.h>
%}

%%
"=" {
    printf("\nOperator:%s\n",yytext);
}
","|";" {
    printf("\nSeperators:%s\n",yytext);
}
"while"|"if"|"else" {
    printf("\nKeyword:%s\n",yytext);
}
[a-zA-Z_][a-zA-Z0-9_]* {
    printf("\nIdentifier:%s\n",yytext);
}
%%

int yywrap(){
    return 1;
}
int main(){
    yylex();
    return 0;
}