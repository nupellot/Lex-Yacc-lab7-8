lex:
	flex lex.l
	cc lex.yy.c -ll
yacc:
	yacc yacc.y
	cc y.tab.c