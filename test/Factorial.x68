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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A3, D2
	MOVE.L	D2, A6

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Label
L1
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A2), D2
	SUB	(A1)+, D2
	BGT	LT0
	MOVE	#0, D2
	BRA	LT1
LT0	MOVE	#1, D2
LT1	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT2
	BRA	L2
LT2	BRA	L3

*	hr.fer.ppj.labos.ppj21.tree.Label
L2
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, (A3)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A3, D2
	ADD	#2, D2
	MOVE.L	D2, A3

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-1, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A2), D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L1

*	hr.fer.ppj.labos.ppj21.tree.Label
L3
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	A6, D2
	BGT	LT3
	MOVE	#0, D2
	BRA	LT4
LT3	MOVE	#1, D2
LT4	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A6, D2
	SUB	#-1, D2
	BGT	LT5
	MOVE	#0, D2
	BRA	LT6
LT5	MOVE	#1, D2
LT6	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT7
	BRA	L4
LT7	BRA	L5

*	hr.fer.ppj.labos.ppj21.tree.Label
L4
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'N', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'P', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'r', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'3', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'3', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L5
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#5, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A6, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	LEA	L6, A5
	MOVE	A5, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A4, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	Fac_ComputeFac

*	hr.fer.ppj.labos.ppj21.tree.Label
L6
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	D1, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Label
DONE	STOP	#$2000

*	hr.fer.ppj.labos.ppj21.tree.Label
Fac_ComputeFac
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	MOVE.L	D2, A4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#8, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT8
	MOVE	#0, D2
	BRA	LT9
LT8	MOVE	#1, D2
LT9	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT10
	BRA	L10
LT10	BRA	L11

*	hr.fer.ppj.labos.ppj21.tree.Label
L10
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L12

*	hr.fer.ppj.labos.ppj21.tree.Label
L11
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#8, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT11
	MOVE	#0, D2
	BRA	LT12
LT11	MOVE	#1, D2
LT12	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-1, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT13
	MOVE	#0, D2
	BRA	LT14
LT13	MOVE	#1, D2
LT14	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT15
	BRA	L7
LT15	BRA	L8

*	hr.fer.ppj.labos.ppj21.tree.Label
L7
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'N', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'P', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'r', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'4', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'3', (A5)+
	MOVE.B	#'4', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L8
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#8, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	NEG	D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	LEA	L9, A5
	MOVE	A5, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A4, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	Fac_ComputeFac

*	hr.fer.ppj.labos.ppj21.tree.Label
L9
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	D1, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	(A1)+, D3
	MOVE	D2, -(A1)  * New Approach!
	MOVE	D3, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Label
L12
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, D1

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#4, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE.L	D2, A6

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE.L	D2, A4

*	hr.fer.ppj.labos.ppj21.tree.Jump
	JMP	(A6)

FNSH	STOP	#$2000

NL	DC.B	10, 13, 0
MSG	DS.B	41
	END	START
