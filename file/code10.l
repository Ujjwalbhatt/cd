%{
%}

%s Q0 Q1 Q2 Q3 Q4 Q5 Q6 Q7 DEAD

%%
<INITIAL>a BEGIN Q1;
<INITIAL>b BEGIN Q0;
<INITIAL>[^ab\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<Q0>a BEGIN Q1;
<Q0>b BEGIN Q0;
<Q0>[^ab\n] BEGIN DEAD;
<Q0>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<Q1>a BEGIN Q3;
<Q1>b BEGIN Q2;
<Q1>[^ab\n] BEGIN DEAD;
<Q1>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<Q2>a BEGIN Q5;
<Q2>b BEGIN Q4;
<Q2>[^ab\n] BEGIN DEAD;
<Q2>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<Q3>a BEGIN Q7;
<Q3>b BEGIN Q6;
<Q3>[^ab\n] BEGIN DEAD;
<Q3>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<Q4>a BEGIN Q1;
<Q4>b BEGIN Q0;
<Q4>[^ab\n] BEGIN DEAD;
<Q4>\n BEGIN INITIAL; {printf("Accepted\n");}
<Q5>a BEGIN Q3;
<Q5>b BEGIN Q2;
<Q5>[^ab\n] BEGIN DEAD;
<Q5>\n BEGIN INITIAL; {printf("Accepted\n");}
<Q6>a BEGIN Q5;
<Q6>b BEGIN Q4;
<Q6>[^ab\n] BEGIN DEAD;
<Q6>\n BEGIN INITIAL; {printf("Accepted\n");}
<Q7>a BEGIN Q7;
<Q7>b BEGIN Q6;
<Q7>[^ab\n] BEGIN DEAD;
<Q7>\n BEGIN INITIAL; {printf("Accepted\n");}
<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Not Accepted\n");}
%%
int yywrap() {  return 1; }
int main()
{
    printf("Enter String\n");
    yylex();
    return 0;
}
