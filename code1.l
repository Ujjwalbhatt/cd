%{
#include <stdio.h>
int count=0, space=0, tcount=0, rcount=0;
%}

%%
\n      { count++;}
[ ]     { space++;}
\t      { tcount++; }
.       { rcount++;}
%%

int yywrap(){
    return 1;
}

int main(void) {
    yylex();
    printf("Number of lines are: %d\n", count);
    printf("Number of spaces are: %d\n", space);
    printf("Number of tabs are: %d\n", tcount);
    printf("Number of remaining characters are: %d\n", rcount);
    return 0;
}
