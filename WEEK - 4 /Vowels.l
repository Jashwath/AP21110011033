%{
#include<stdio.h>
int vowel=0;
int cons=0;
%}
%%
"a"|"e"|"i"|"o"|"u"|"A"|"E"|"I"|"O"|"U" {printf("%s is a VOWEL\n",yytext);vowel++;}
[a-zA-z] {printf("%s is a Consonant\n",yytext);cons++;}
.        {printf("%s is invalid lexeme\n",yytext);}
%%
int yywrap()
{
return 1;
}
main()
{
printf("Enter String\n");
yylex();
printf("vowel=%d and Consonent=%d",vowel,cons);
}
