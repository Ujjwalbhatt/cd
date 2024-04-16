%{
#include<stdio.h>
%}
%%
^[a-zA-z_][a-zA-z0-9_]* {printf("valid identfier!!\n");}
.* {printf("Not valid identfier!!\n");}
%%  
int yywrap(){
    return 1;
}
int main(void){
    yylex();
    return 0;
}