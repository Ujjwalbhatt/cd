%{
    #include<stdio.h>
%}

%%
^[0-9]+"."[0-9]+$ {printf("Valid float number!");}
^[0-9]+$ {printf("Valid integer number!");}
.* {}
%%

int yywrap(){
    return 1;
}

int main(void ){
    yylex();
}