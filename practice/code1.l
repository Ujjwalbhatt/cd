%{
#include <stdio.h>
int count=0, space=0, tcount=0, rcount=0;
%}
%%
\n count++;
\t tcount++;
[ ] space++;
. rcount++;
%%

int yywrap(){
    return 1;
}

int main(void) {
    yylex();
    printf("number of the newline: %d\n" ,count);
    printf("number of the space: %d\n" ,space);
    printf("number of the tabs: %d\n" ,tcount);
    printf("number of the chars: %d\n" ,rcount);

}
