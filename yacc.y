%{
#include <stdio.h>
int yylex(void);
void yyerror(char const *);
%}

%%

input: {printf("Enter the line:\n");}
	| input line
	;

line: '\n'
	| error '\n' {yyerrok;}
	| C '\n' {printf("True\n");}
	| D '\n' {printf("True\n");}
	;

A: '0'
	| A '0'
	| C '0'
	;

B: '1'
	|B '1'
	|D '1'
	;

C: D '0'
	|B '0'
	;

D: C '1'
	|A '1'
	;

%%
void yyerror(char const* s) {
	printf("False\n");
}

int yywrap() {
	return 1;
}

int yylex() {
	return getchar();
}

int main() {
	yyparse();
}