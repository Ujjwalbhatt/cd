//lex code of the tokenization

%{
   #include<stdio.h>     
   int operator=0,separator=0,identfier=0,keywords=0;
 %} 
%%
    "+"|"-"|"*"|"/" {operator++;}
    ";"| "," {separator++;} 
    ^[a-zA-z_]+[a-zA-Z0-9_]* {identfier++;}
    
%%

int yywrap(){

    return 1;
}

int main(void){

    return 0;
}