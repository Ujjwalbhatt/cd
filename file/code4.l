%{ 
#include <stdio.h> 
int keyword=0, operator=0, separator=0, identifiers=0; 
%}
 
%% 
float|char|double|long|short|unsigned|signed|for|do|while|void|int|bool|switch|case|return|if|else|sizeof|struct|goto|const|break {printf("keyword"); keyword++;}

[/\*\+\-]+ { printf("Operator "); operator++;} 
[{}(),;.]+ { printf("Separator "); separator++;} 
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier "); identifiers++; } 
.|\n; 
%% 
int yywrap() 
{     
return 1; 
} 
int main() {     
printf("Enter\n");     
yylex();     
printf("\nCounts:\nKeywords: %d\nOperators: %d\nSeparators: %d\nIdentifiers: %d\n", keyword, operator, separator, identifiers);     
return 0; 
} 
