%{ 
#include<stdio.h> 
int tabs=0,spaces=0,newline=0,character=0; 
%} 
%% 
[\t] tabs++; 
[" "] spaces++; 
[\n] newline++; 
[^\n\t" "] character++; 
%% 
int yywrap()
{ return 1; } 
int main()
{ 
printf("Enter here\n"); 
yylex(); 
printf("Tabs::%d\n",tabs); 
printf("Spaces::%d\n",spaces); 
printf("Characters::%d\nLines::%d\n",character, newline); 
} 
