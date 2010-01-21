*-------------------------------------------------------
* Generated machine code, PPJ21
*-------------------------------------------------------

START	ORG	$0

	MOVE.L	#$1000000, A1


*	hr.fer.ppj.labos.ppj21.tree.Label
MAIN
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#57602, D2
	MOVE.L	D2, A3

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#65532, D2
	MOVE.L	D2, A4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A4, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#13, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Label
DONE	STOP	#$2000

FNSH	STOP	#$2000

NL	DC.B	10, 13, 0
MSG	DS.B	41
	END	START
