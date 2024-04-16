%{
#include <stdio.h>
%}

%%

[ \t\r\n]+   ; /* Match any whitespace (space, tab, carriage return, newline) and do nothing */
\#           ; /* Match the '#' character and do nothing */

.            { printf("%c", yytext); } /* Match any other character and print it */

%%

int main() {
    printf("Filtered Output:\n");
    yylex(); /* Start the lexer */
    printf("\n"); /* Print a newline after the output for neatness */
    return 0;
}

int yywrap() {
    return 1; /* Indicates no more input */
}
