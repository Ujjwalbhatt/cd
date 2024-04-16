%{
    #include<stdio.h>
%}

%%
\/\/(.)* {}
\/\*(.*|\n)*\*\/ {}
.|\n {printf(yytext);}
%%

int yywrap(){
       
        
return 1;
}

int main(void){
 FILE* file = fopen("input.txt","r");
yyin = file;
yylex();
fclose(file);
return 0;
}