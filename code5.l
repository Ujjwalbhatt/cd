%{
    #include<stdio.h>
    int char_count=0, word_count=0, space_count=0;
%}

%%
" " {
    space_count++;
    word_count++;}			
[\t\n] {
    word_count++;
}						
[^\n\t] {
    char_count++;
}
%%

int yywrap(){
    return 1;
}
int main(){
    FILE* file = fopen("input.txt","r");
    yyin=file;
    yylex();
    printf("Total Words: %d\n", word_count);
    printf("Total Spaces: %d\n", space_count);
    printf("Total Characters: %d\n", char_count);
    fclose(file);
    return 0;
}
