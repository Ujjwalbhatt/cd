%{ 
#include<stdio.h> 
%} 
%% 
^[0-9]* printf("integer"); 
^[0-9]*\.[0-9]* printf("float"); 
.+ printf("neither integer not float"); 
%% 
int yywrap()
{ return 1; } 
int main() { 
    printf("Enter string::"); 
    yylex(); 
    return 0; 
} 
