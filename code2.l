%{
    #include<stdio.h>
%}

%%
[a-zA-Z_][a-zA-Z0-9]* {
    printf("\nValid identifier:%s\n",yytext);
}
 . {
    printf("Invalid identifier:%s\n",yytext);
}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}