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
	MOVE	#2, D2
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
	MOVE	#10, D2
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
	BRA	BBS_Start

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
BBS_Start
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
	MOVE	#6, D2
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
	BGT	LT10
	MOVE	#0, D2
	BRA	LT11
LT10	MOVE	#1, D2
LT11	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT12
	BRA	L7
LT12	BRA	L8

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
	MOVE.B	#'2', (A5)+
	MOVE.B	#'0', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#'1', (A5)+
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
	BRA	BBS_Init

*	hr.fer.ppj.labos.ppj21.tree.Label
L9
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	D1, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT13
	MOVE	#0, D2
	BRA	LT14
LT13	MOVE	#1, D2
LT14	MOVE	D2, -(A1)

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
	BGT	LT15
	MOVE	#0, D2
	BRA	LT16
LT15	MOVE	#1, D2
LT16	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT17
	BRA	L10
LT17	BRA	L11

*	hr.fer.ppj.labos.ppj21.tree.Label
L10
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
	MOVE.B	#'2', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L11
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
	LEA	L12, A5
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
	BRA	BBS_Print

*	hr.fer.ppj.labos.ppj21.tree.Label
L12
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#6, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	D1, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#999, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT18
	MOVE	#0, D2
	BRA	LT19
LT18	MOVE	#1, D2
LT19	MOVE	D2, -(A1)

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
	BGT	LT20
	MOVE	#0, D2
	BRA	LT21
LT20	MOVE	#1, D2
LT21	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT22
	BRA	L13
LT22	BRA	L14

*	hr.fer.ppj.labos.ppj21.tree.Label
L13
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
	MOVE.B	#'2', (A5)+
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
	MOVE.B	#'2', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L14
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
	LEA	L15, A5
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
	BRA	BBS_Sort

*	hr.fer.ppj.labos.ppj21.tree.Label
L15
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#6, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	D1, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT23
	MOVE	#0, D2
	BRA	LT24
LT23	MOVE	#1, D2
LT24	MOVE	D2, -(A1)

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
	BGT	LT25
	MOVE	#0, D2
	BRA	LT26
LT25	MOVE	#1, D2
LT26	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT27
	BRA	L16
LT27	BRA	L17

*	hr.fer.ppj.labos.ppj21.tree.Label
L16
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
	MOVE.B	#'2', (A5)+
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
	MOVE.B	#'2', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L17
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
	LEA	L18, A5
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
	BRA	BBS_Print

*	hr.fer.ppj.labos.ppj21.tree.Label
L18
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#6, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	D1, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Label
BBS_Sort
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
	MOVE	#0, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#-2, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
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
	MOVE	#2, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	NEG	D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-2, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	#0, D2
	NEG	D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-4, D2
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
L69
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-4, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-2, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT28
	MOVE	#0, D2
	BRA	LT29
LT28	MOVE	#1, D2
LT29	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT30
	BRA	L70
LT30	BRA	L71

*	hr.fer.ppj.labos.ppj21.tree.Label
L70
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-14, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Label
L66
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-14, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-2, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT31
	MOVE	#0, D2
	BRA	LT32
LT31	MOVE	#1, D2
LT32	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT33
	BRA	L67
LT33	BRA	L68

*	hr.fer.ppj.labos.ppj21.tree.Label
L67
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-14, D2
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
	MOVE	#-12, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-12, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT34
	MOVE	#0, D2
	BRA	LT35
LT34	MOVE	#1, D2
LT35	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT36
	MOVE	#0, D2
	BRA	LT37
LT36	MOVE	#1, D2
LT37	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT38
	BRA	L21
LT38	BRA	L22

*	hr.fer.ppj.labos.ppj21.tree.Label
L21
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
	MOVE.B	#'4', (A5)+
	MOVE.B	#'7', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L22
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT39
	MOVE	#0, D2
	BRA	LT40
LT39	MOVE	#1, D2
LT40	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT41
	BRA	L23
LT41	BRA	L24

*	hr.fer.ppj.labos.ppj21.tree.Label
L23
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'4', (A5)+
	MOVE.B	#'7', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L24
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT42
	MOVE	#0, D2
	BRA	LT43
LT42	MOVE	#1, D2
LT43	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT44
	BRA	L25
LT44	BRA	L26

*	hr.fer.ppj.labos.ppj21.tree.Label
L25
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'4', (A5)+
	MOVE.B	#'7', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L26
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-6, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-14, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT45
	MOVE	#0, D2
	BRA	LT46
LT45	MOVE	#1, D2
LT46	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT47
	MOVE	#0, D2
	BRA	LT48
LT47	MOVE	#1, D2
LT48	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT49
	BRA	L29
LT49	BRA	L30

*	hr.fer.ppj.labos.ppj21.tree.Label
L29
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
	MOVE.B	#'4', (A5)+
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L30
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT50
	MOVE	#0, D2
	BRA	LT51
LT50	MOVE	#1, D2
LT51	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT52
	BRA	L31
LT52	BRA	L32

*	hr.fer.ppj.labos.ppj21.tree.Label
L31
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'4', (A5)+
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L32
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT53
	MOVE	#0, D2
	BRA	LT54
LT53	MOVE	#1, D2
LT54	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT55
	BRA	L33
LT55	BRA	L34

*	hr.fer.ppj.labos.ppj21.tree.Label
L33
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'4', (A5)+
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L34
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-8, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-8, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT56
	MOVE	#0, D2
	BRA	LT57
LT56	MOVE	#1, D2
LT57	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT58
	BRA	L63
LT58	BRA	L64

*	hr.fer.ppj.labos.ppj21.tree.Label
L63
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-14, D2
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
	MOVE	#-10, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-10, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT59
	MOVE	#0, D2
	BRA	LT60
LT59	MOVE	#1, D2
LT60	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT61
	MOVE	#0, D2
	BRA	LT62
LT61	MOVE	#1, D2
LT62	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT63
	BRA	L37
LT63	BRA	L38

*	hr.fer.ppj.labos.ppj21.tree.Label
L37
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
	MOVE.B	#'5', (A5)+
	MOVE.B	#'1', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L38
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT64
	MOVE	#0, D2
	BRA	LT65
LT64	MOVE	#1, D2
LT65	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT66
	BRA	L39
LT66	BRA	L40

*	hr.fer.ppj.labos.ppj21.tree.Label
L39
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#'1', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L40
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT67
	MOVE	#0, D2
	BRA	LT68
LT67	MOVE	#1, D2
LT68	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT69
	BRA	L41
LT69	BRA	L42

*	hr.fer.ppj.labos.ppj21.tree.Label
L41
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#'1', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L42
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-16, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-14, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT70
	MOVE	#0, D2
	BRA	LT71
LT70	MOVE	#1, D2
LT71	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT72
	MOVE	#0, D2
	BRA	LT73
LT72	MOVE	#1, D2
LT73	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT74
	BRA	L51
LT74	BRA	L52

*	hr.fer.ppj.labos.ppj21.tree.Label
L51
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
	MOVE.B	#'5', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'4', (A5)+
	MOVE.B	#'3', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L52
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT75
	MOVE	#0, D2
	BRA	LT76
LT75	MOVE	#1, D2
LT76	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT77
	BRA	L53
LT77	BRA	L54

*	hr.fer.ppj.labos.ppj21.tree.Label
L53
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'4', (A5)+
	MOVE.B	#'3', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L54
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT78
	MOVE	#0, D2
	BRA	LT79
LT78	MOVE	#1, D2
LT79	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT80
	BRA	L55
LT80	BRA	L56

*	hr.fer.ppj.labos.ppj21.tree.Label
L55
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'4', (A5)+
	MOVE.B	#'3', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L56
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-10, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT81
	MOVE	#0, D2
	BRA	LT82
LT81	MOVE	#1, D2
LT82	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT83
	MOVE	#0, D2
	BRA	LT84
LT83	MOVE	#1, D2
LT84	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT85
	BRA	L43
LT85	BRA	L44

*	hr.fer.ppj.labos.ppj21.tree.Label
L43
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
	MOVE.B	#'5', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L44
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT86
	MOVE	#0, D2
	BRA	LT87
LT86	MOVE	#1, D2
LT87	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT88
	BRA	L45
LT88	BRA	L46

*	hr.fer.ppj.labos.ppj21.tree.Label
L45
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L46
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT89
	MOVE	#0, D2
	BRA	LT90
LT89	MOVE	#1, D2
LT90	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT91
	BRA	L47
LT91	BRA	L48

*	hr.fer.ppj.labos.ppj21.tree.Label
L47
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L48
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	(A1)+, D3
	MOVE	D2, -(A1)  * New Approach!
	MOVE	D3, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-16, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-14, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT92
	MOVE	#0, D2
	BRA	LT93
LT92	MOVE	#1, D2
LT93	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT94
	MOVE	#0, D2
	BRA	LT95
LT94	MOVE	#1, D2
LT95	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT96
	BRA	L57
LT96	BRA	L58

*	hr.fer.ppj.labos.ppj21.tree.Label
L57
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
	MOVE.B	#'5', (A5)+
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
	MOVE.B	#'2', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L58
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT97
	MOVE	#0, D2
	BRA	LT98
LT97	MOVE	#1, D2
LT98	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT99
	BRA	L59
LT99	BRA	L60

*	hr.fer.ppj.labos.ppj21.tree.Label
L59
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'5', (A5)+
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
	MOVE.B	#'2', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L60
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT100
	MOVE	#0, D2
	BRA	LT101
LT100	MOVE	#1, D2
LT101	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT102
	BRA	L61
LT102	BRA	L62

*	hr.fer.ppj.labos.ppj21.tree.Label
L61
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'5', (A5)+
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
	MOVE.B	#'2', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L62
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	(A1)+, D3
	MOVE	D2, -(A1)  * New Approach!
	MOVE	D3, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L65

*	hr.fer.ppj.labos.ppj21.tree.Label
L64
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Label
L65
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-14, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-14, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L66

*	hr.fer.ppj.labos.ppj21.tree.Label
L68
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-2, D2
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
	MOVE	#-2, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L69

*	hr.fer.ppj.labos.ppj21.tree.Label
L71
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, D1

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#18, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Label
BBS_Print
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
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Label
L80
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
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
	MOVE	#2, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT103
	MOVE	#0, D2
	BRA	LT104
LT103	MOVE	#1, D2
LT104	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT105
	BRA	L81
LT105	BRA	L82

*	hr.fer.ppj.labos.ppj21.tree.Label
L81
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT106
	MOVE	#0, D2
	BRA	LT107
LT106	MOVE	#1, D2
LT107	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT108
	MOVE	#0, D2
	BRA	LT109
LT108	MOVE	#1, D2
LT109	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT110
	BRA	L74
LT110	BRA	L75

*	hr.fer.ppj.labos.ppj21.tree.Label
L74
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
	MOVE.B	#'6', (A5)+
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'8', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L75
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT111
	MOVE	#0, D2
	BRA	LT112
LT111	MOVE	#1, D2
LT112	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT113
	BRA	L76
LT113	BRA	L77

*	hr.fer.ppj.labos.ppj21.tree.Label
L76
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'6', (A5)+
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'8', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L77
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT114
	MOVE	#0, D2
	BRA	LT115
LT114	MOVE	#1, D2
LT115	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT116
	BRA	L78
LT116	BRA	L79

*	hr.fer.ppj.labos.ppj21.tree.Label
L78
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'6', (A5)+
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'8', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L79
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	#3, D0
	MOVE	(A5), D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
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

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L80

*	hr.fer.ppj.labos.ppj21.tree.Label
L82
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
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

*	hr.fer.ppj.labos.ppj21.tree.Label
BBS_Init
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	MOVE.L	D2, A4

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
	MOVE	#2, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	(A1)+, D3
	MOVE	D2, -(A1)  * New Approach!
	MOVE	D3, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A3, D2
	MOVE.L	D2, A6

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#8, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	D2, (A2)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A2), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	D2, (A3)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A3, D2
	ADD	#2, D2
	MOVE.L	D2, A3

*	hr.fer.ppj.labos.ppj21.tree.Label
L83
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A2), D2
	SUB	(A1)+, D2
	BGT	LT117
	MOVE	#0, D2
	BRA	LT118
LT117	MOVE	#1, D2
LT118	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT119
	BRA	L84
LT119	BRA	L85

*	hr.fer.ppj.labos.ppj21.tree.Label
L84
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
	BRA	L83

*	hr.fer.ppj.labos.ppj21.tree.Label
L85
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A6, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MOVE	(A1)+, D3
	MOVE	D2, -(A1)  * New Approach!
	MOVE	D3, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT120
	MOVE	#0, D2
	BRA	LT121
LT120	MOVE	#1, D2
LT121	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT122
	MOVE	#0, D2
	BRA	LT123
LT122	MOVE	#1, D2
LT123	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT124
	BRA	L86
LT124	BRA	L87

*	hr.fer.ppj.labos.ppj21.tree.Label
L86
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
	MOVE.B	#'7', (A5)+
	MOVE.B	#'9', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L87
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT125
	MOVE	#0, D2
	BRA	LT126
LT125	MOVE	#1, D2
LT126	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT127
	BRA	L88
LT127	BRA	L89

*	hr.fer.ppj.labos.ppj21.tree.Label
L88
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#'9', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L89
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT128
	MOVE	#0, D2
	BRA	LT129
LT128	MOVE	#1, D2
LT129	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT130
	BRA	L90
LT130	BRA	L91

*	hr.fer.ppj.labos.ppj21.tree.Label
L90
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#'9', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L91
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#20, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT131
	MOVE	#0, D2
	BRA	LT132
LT131	MOVE	#1, D2
LT132	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT133
	MOVE	#0, D2
	BRA	LT134
LT133	MOVE	#1, D2
LT134	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT135
	BRA	L92
LT135	BRA	L93

*	hr.fer.ppj.labos.ppj21.tree.Label
L92
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
	MOVE.B	#'8', (A5)+
	MOVE.B	#'0', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L93
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT136
	MOVE	#0, D2
	BRA	LT137
LT136	MOVE	#1, D2
LT137	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT138
	BRA	L94
LT138	BRA	L95

*	hr.fer.ppj.labos.ppj21.tree.Label
L94
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'0', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L95
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT139
	MOVE	#0, D2
	BRA	LT140
LT139	MOVE	#1, D2
LT140	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT141
	BRA	L96
LT141	BRA	L97

*	hr.fer.ppj.labos.ppj21.tree.Label
L96
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'0', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L97
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#7, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT142
	MOVE	#0, D2
	BRA	LT143
LT142	MOVE	#1, D2
LT143	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT144
	MOVE	#0, D2
	BRA	LT145
LT144	MOVE	#1, D2
LT145	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT146
	BRA	L98
LT146	BRA	L99

*	hr.fer.ppj.labos.ppj21.tree.Label
L98
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
	MOVE.B	#'8', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L99
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT147
	MOVE	#0, D2
	BRA	LT148
LT147	MOVE	#1, D2
LT148	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT149
	BRA	L100
LT149	BRA	L101

*	hr.fer.ppj.labos.ppj21.tree.Label
L100
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L101
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT150
	MOVE	#0, D2
	BRA	LT151
LT150	MOVE	#1, D2
LT151	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT152
	BRA	L102
LT152	BRA	L103

*	hr.fer.ppj.labos.ppj21.tree.Label
L102
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L103
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#12, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#3, D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT153
	MOVE	#0, D2
	BRA	LT154
LT153	MOVE	#1, D2
LT154	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT155
	MOVE	#0, D2
	BRA	LT156
LT155	MOVE	#1, D2
LT156	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT157
	BRA	L104
LT157	BRA	L105

*	hr.fer.ppj.labos.ppj21.tree.Label
L104
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
	MOVE.B	#'8', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L105
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT158
	MOVE	#0, D2
	BRA	LT159
LT158	MOVE	#1, D2
LT159	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT160
	BRA	L106
LT160	BRA	L107

*	hr.fer.ppj.labos.ppj21.tree.Label
L106
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L107
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT161
	MOVE	#0, D2
	BRA	LT162
LT161	MOVE	#1, D2
LT162	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT163
	BRA	L108
LT163	BRA	L109

*	hr.fer.ppj.labos.ppj21.tree.Label
L108
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'2', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L109
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#18, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#4, D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT164
	MOVE	#0, D2
	BRA	LT165
LT164	MOVE	#1, D2
LT165	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT166
	MOVE	#0, D2
	BRA	LT167
LT166	MOVE	#1, D2
LT167	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT168
	BRA	L110
LT168	BRA	L111

*	hr.fer.ppj.labos.ppj21.tree.Label
L110
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
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L111
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT169
	MOVE	#0, D2
	BRA	LT170
LT169	MOVE	#1, D2
LT170	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT171
	BRA	L112
LT171	BRA	L113

*	hr.fer.ppj.labos.ppj21.tree.Label
L112
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L113
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT172
	MOVE	#0, D2
	BRA	LT173
LT172	MOVE	#1, D2
LT173	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT174
	BRA	L114
LT174	BRA	L115

*	hr.fer.ppj.labos.ppj21.tree.Label
L114
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L115
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#5, D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT175
	MOVE	#0, D2
	BRA	LT176
LT175	MOVE	#1, D2
LT176	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT177
	MOVE	#0, D2
	BRA	LT178
LT177	MOVE	#1, D2
LT178	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT179
	BRA	L116
LT179	BRA	L117

*	hr.fer.ppj.labos.ppj21.tree.Label
L116
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
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L117
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT180
	MOVE	#0, D2
	BRA	LT181
LT180	MOVE	#1, D2
LT181	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT182
	BRA	L118
LT182	BRA	L119

*	hr.fer.ppj.labos.ppj21.tree.Label
L118
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L119
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT183
	MOVE	#0, D2
	BRA	LT184
LT183	MOVE	#1, D2
LT184	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT185
	BRA	L120
LT185	BRA	L121

*	hr.fer.ppj.labos.ppj21.tree.Label
L120
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L121
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#11, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT186
	MOVE	#0, D2
	BRA	LT187
LT186	MOVE	#1, D2
LT187	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT188
	MOVE	#0, D2
	BRA	LT189
LT188	MOVE	#1, D2
LT189	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT190
	BRA	L122
LT190	BRA	L123

*	hr.fer.ppj.labos.ppj21.tree.Label
L122
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
	MOVE.B	#'8', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L123
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT191
	MOVE	#0, D2
	BRA	LT192
LT191	MOVE	#1, D2
LT192	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT193
	BRA	L124
LT193	BRA	L125

*	hr.fer.ppj.labos.ppj21.tree.Label
L124
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L125
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT194
	MOVE	#0, D2
	BRA	LT195
LT194	MOVE	#1, D2
LT195	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT196
	BRA	L126
LT196	BRA	L127

*	hr.fer.ppj.labos.ppj21.tree.Label
L126
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L127
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#7, D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT197
	MOVE	#0, D2
	BRA	LT198
LT197	MOVE	#1, D2
LT198	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT199
	MOVE	#0, D2
	BRA	LT200
LT199	MOVE	#1, D2
LT200	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT201
	BRA	L128
LT201	BRA	L129

*	hr.fer.ppj.labos.ppj21.tree.Label
L128
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
	MOVE.B	#'8', (A5)+
	MOVE.B	#'6', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L129
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT202
	MOVE	#0, D2
	BRA	LT203
LT202	MOVE	#1, D2
LT203	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT204
	BRA	L130
LT204	BRA	L131

*	hr.fer.ppj.labos.ppj21.tree.Label
L130
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'6', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L131
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT205
	MOVE	#0, D2
	BRA	LT206
LT205	MOVE	#1, D2
LT206	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT207
	BRA	L132
LT207	BRA	L133

*	hr.fer.ppj.labos.ppj21.tree.Label
L132
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'6', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L133
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#9, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#8, D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT208
	MOVE	#0, D2
	BRA	LT209
LT208	MOVE	#1, D2
LT209	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT210
	MOVE	#0, D2
	BRA	LT211
LT210	MOVE	#1, D2
LT211	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT212
	BRA	L134
LT212	BRA	L135

*	hr.fer.ppj.labos.ppj21.tree.Label
L134
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
	MOVE.B	#'8', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L135
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT213
	MOVE	#0, D2
	BRA	LT214
LT213	MOVE	#1, D2
LT214	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT215
	BRA	L136
LT215	BRA	L137

*	hr.fer.ppj.labos.ppj21.tree.Label
L136
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L137
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT216
	MOVE	#0, D2
	BRA	LT217
LT216	MOVE	#1, D2
LT217	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT218
	BRA	L138
LT218	BRA	L139

*	hr.fer.ppj.labos.ppj21.tree.Label
L138
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L139
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#19, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#9, D2
	MOVE	D2, D4

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT219
	MOVE	#0, D2
	BRA	LT220
LT219	MOVE	#1, D2
LT220	MOVE	D2, -(A1)

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
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT221
	MOVE	#0, D2
	BRA	LT222
LT221	MOVE	#1, D2
LT222	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT223
	BRA	L140
LT223	BRA	L141

*	hr.fer.ppj.labos.ppj21.tree.Label
L140
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
	MOVE.B	#'8', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L141
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	BGT	LT224
	MOVE	#0, D2
	BRA	LT225
LT224	MOVE	#1, D2
LT225	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT226
	BRA	L142
LT226	BRA	L143

*	hr.fer.ppj.labos.ppj21.tree.Label
L142
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L143
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT227
	MOVE	#0, D2
	BRA	LT228
LT227	MOVE	#1, D2
LT228	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT229
	BRA	L144
LT229	BRA	L145

*	hr.fer.ppj.labos.ppj21.tree.Label
L144
*	hr.fer.ppj.labos.ppj21.tree.RuntimeError
	LEA	MSG, A5
	MOVE.B	#'I', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#'x', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#'O', (A5)+
	MOVE.B	#'f', (A5)+
	MOVE.B	#'B', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'d', (A5)+
	MOVE.B	#'s', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'a', (A5)+
	MOVE.B	#'t', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'i', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#'e', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#',', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'c', (A5)+
	MOVE.B	#'o', (A5)+
	MOVE.B	#'l', (A5)+
	MOVE.B	#'u', (A5)+
	MOVE.B	#'m', (A5)+
	MOVE.B	#'n', (A5)+
	MOVE.B	#' ', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#'5', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L145
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#5, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, D1

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
