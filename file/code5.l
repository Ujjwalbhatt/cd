%{ 
#include<stdio.h> 
int character=0,words=0,space=0; 
%} 
%% 
[" "] {space++; words++;} 
[\n\t] {words++;} 
[^\n\t] character++; 
%% 
int yywrap()
{ return 1; } 
int main(){ 
yylex(); 
printf("Spaces::%d\nWords::%d\nCharacters::%d\n",space,words,character); 
} 
