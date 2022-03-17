extends Node

#expr       : KEYWORD:VAR IDENTIFIER EQ expr
#           : compr-expr ((KEYWORD:AND|KEYWORD:OR) comp-expr)*

#comp-expr  :NOT comp-expr
#           : arith-expr ((EE|LT|GT|LTE|GTE) arith-expr)*

#arith-expr : term ((PLUS|MINUS) term)*

#term       : factor ((MUL|DIV) factor)*

#factor     : (PLUS|MINUS) factor
#           : power

#power      : atom (POW factor)*

#atom       : INT|FLOAT|IDENTIFIER
#           : LPAREN expr RPAREN
#			: if-expr

#if-expr	: KEYWORD:IF expr KEYWORD:THEN expr
#			  (KEYWORD:ELIF expr KEYWORD:THEN expr)*
#			  (KEYWORD:ELSE expr)?
