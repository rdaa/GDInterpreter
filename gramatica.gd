extends Node

#expr       : KEYWORD:VAR IDENTIFIER EQ expr
#           : compr-expr ((KEYWORD:AND|KEYWORD:OR) comp-expr)*

#comp-expr  :NOT comp-expr
#           : arith-expr ((EE|LT|GT|LTE|GTE) arith-expr)*

#arith-expr : term ((PLUS|MINUS) term)*

#term       : factor ((MUL|DIV) factor)*

#factor     : (PLUS|MINUS) factor
#           : power

#power      : llamar (POW factor)*

#llamar		: atom (LPAREN  (expr (COMMA expr)*)? RPAREN)?

#atom       : INT|FLOAT|IDENTIFIER
#           : LPAREN expr RPAREN
#			: if-expr
#			: for-expr
#			: while-expr
#			: func-def

#if-expr	: KEYWORD:IF expr KEYWORD:THEN expr
#			  (KEYWORD:ELIF expr KEYWORD:THEN expr)*
#			  (KEYWORD:ELSE expr)?

#for-expr	: KEYWORD:FOR IDENTIFIER EQ expr KEYWORD:TO expr
#			  (KEYWORD:STEP expr)? KEYWORD:THEN expr

#while-expr	: KEYWORD:WHILE expr KEYWORD:THEN expr

#func-def	: KEYWORD:FUNC IDENTIFIER?
#			  LPAREN (IDENTIFIER (COMMA IDENTIFIER)*)? RPAREN
#			  ARROW expr
