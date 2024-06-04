%{
%}
%s EAEB OAEB EAOB OAOB DEAD
%%
<INITIAL>a BEGIN OAEB;
<INITIAL>b BEGIN EAOB;
<INITIAL>[^ab\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Accepted\n");}
<OAEB>a BEGIN EAEB;
<OAEB>b BEGIN OAOB;
<OAEB>[^ab\n] BEGIN DEAD;
<OAEB>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<EAOB>a BEGIN OAOB;
<EAOB>b BEGIN EAEB;
<EAOB>[^ab\n] BEGIN DEAD;
<EAOB>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<EAEB>a BEGIN OAEB;
<EAEB>b BEGIN EAOB;
<EAEB>[^ab\n] BEGIN DEAD;
<EAEB>\n BEGIN INITIAL; {printf("Accepted\n");}
<OAOB>a BEGIN EAOB;
<OAOB>b BEGIN OAEB;
<OAOB>[^ab\n] BEGIN DEAD;
<OAOB>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid\n");}
%%
int yywrap()
{  return 1;  }
int main()
{
    printf("Enter String\n");
    yylex();
    return 0;
}
