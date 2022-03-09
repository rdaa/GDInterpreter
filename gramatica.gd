extends Node

#expr   : term ((PLUS|MINUS) term)*

#term   : factor ((MUL|DIV) factor)*

#factor : (PLUS|MINUS) factor
#		: power

#power  : atom (POW factor)*

#atom   : INT|FLOAT
#		: LPAREN expr RPAREN
