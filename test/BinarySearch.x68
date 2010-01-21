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
	MOVE.B	#'6', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L5
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#20, D2
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
	BRA	BS_Start

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
BS_Start
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
	MOVE.B	#'1', (A5)+
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
	BRA	BS_Init

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
	BRA	BS_Print

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
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L14
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#8, D2
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
	BRA	BS_Search

*	hr.fer.ppj.labos.ppj21.tree.Label
L15
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, D1
	BEQ	LT23
	BRA	L16
LT23	BRA	L17

*	hr.fer.ppj.labos.ppj21.tree.Label
L16
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#1, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L18

*	hr.fer.ppj.labos.ppj21.tree.Label
L17
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#0, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Label
L18
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT24
	MOVE	#0, D2
	BRA	LT25
LT24	MOVE	#1, D2
LT25	MOVE	D2, -(A1)

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
	BGT	LT26
	MOVE	#0, D2
	BRA	LT27
LT26	MOVE	#1, D2
LT27	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT28
	BRA	L19
LT28	BRA	L20

*	hr.fer.ppj.labos.ppj21.tree.Label
L19
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L20
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#19, D2
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
	LEA	L21, A5
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
	BRA	BS_Search

*	hr.fer.ppj.labos.ppj21.tree.Label
L21
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, D1
	BEQ	LT29
	BRA	L22
LT29	BRA	L23

*	hr.fer.ppj.labos.ppj21.tree.Label
L22
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#1, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L24

*	hr.fer.ppj.labos.ppj21.tree.Label
L23
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#0, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Label
L24
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT30
	MOVE	#0, D2
	BRA	LT31
LT30	MOVE	#1, D2
LT31	MOVE	D2, -(A1)

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
	BGT	LT32
	MOVE	#0, D2
	BRA	LT33
LT32	MOVE	#1, D2
LT33	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT34
	BRA	L25
LT34	BRA	L26

*	hr.fer.ppj.labos.ppj21.tree.Label
L25
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
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L26
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#20, D2
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
	LEA	L27, A5
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
	BRA	BS_Search

*	hr.fer.ppj.labos.ppj21.tree.Label
L27
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, D1
	BEQ	LT35
	BRA	L28
LT35	BRA	L29

*	hr.fer.ppj.labos.ppj21.tree.Label
L28
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#1, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L30

*	hr.fer.ppj.labos.ppj21.tree.Label
L29
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#0, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Label
L30
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT36
	MOVE	#0, D2
	BRA	LT37
LT36	MOVE	#1, D2
LT37	MOVE	D2, -(A1)

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
	BGT	LT38
	MOVE	#0, D2
	BRA	LT39
LT38	MOVE	#1, D2
LT39	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT40
	BRA	L31
LT40	BRA	L32

*	hr.fer.ppj.labos.ppj21.tree.Label
L31
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
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L32
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#21, D2
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
	LEA	L33, A5
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
	BRA	BS_Search

*	hr.fer.ppj.labos.ppj21.tree.Label
L33
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, D1
	BEQ	LT41
	BRA	L34
LT41	BRA	L35

*	hr.fer.ppj.labos.ppj21.tree.Label
L34
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#1, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L36

*	hr.fer.ppj.labos.ppj21.tree.Label
L35
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#0, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Label
L36
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT42
	MOVE	#0, D2
	BRA	LT43
LT42	MOVE	#1, D2
LT43	MOVE	D2, -(A1)

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
	BGT	LT44
	MOVE	#0, D2
	BRA	LT45
LT44	MOVE	#1, D2
LT45	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT46
	BRA	L37
LT46	BRA	L38

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
	MOVE.B	#'2', (A5)+
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
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L38
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#37, D2
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
	LEA	L39, A5
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
	BRA	BS_Search

*	hr.fer.ppj.labos.ppj21.tree.Label
L39
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, D1
	BEQ	LT47
	BRA	L40
LT47	BRA	L41

*	hr.fer.ppj.labos.ppj21.tree.Label
L40
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#1, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L42

*	hr.fer.ppj.labos.ppj21.tree.Label
L41
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#0, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Label
L42
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT48
	MOVE	#0, D2
	BRA	LT49
LT48	MOVE	#1, D2
LT49	MOVE	D2, -(A1)

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
	BGT	LT50
	MOVE	#0, D2
	BRA	LT51
LT50	MOVE	#1, D2
LT51	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT52
	BRA	L43
LT52	BRA	L44

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
	MOVE.B	#'3', (A5)+
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
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L44
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#38, D2
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
	LEA	L45, A5
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
	BRA	BS_Search

*	hr.fer.ppj.labos.ppj21.tree.Label
L45
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, D1
	BEQ	LT53
	BRA	L46
LT53	BRA	L47

*	hr.fer.ppj.labos.ppj21.tree.Label
L46
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#1, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L48

*	hr.fer.ppj.labos.ppj21.tree.Label
L47
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#0, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Label
L48
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT54
	MOVE	#0, D2
	BRA	LT55
LT54	MOVE	#1, D2
LT55	MOVE	D2, -(A1)

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
	BGT	LT56
	MOVE	#0, D2
	BRA	LT57
LT56	MOVE	#1, D2
LT57	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT58
	BRA	L49
LT58	BRA	L50

*	hr.fer.ppj.labos.ppj21.tree.Label
L49
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
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L50
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#39, D2
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
	LEA	L51, A5
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
	BRA	BS_Search

*	hr.fer.ppj.labos.ppj21.tree.Label
L51
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, D1
	BEQ	LT59
	BRA	L52
LT59	BRA	L53

*	hr.fer.ppj.labos.ppj21.tree.Label
L52
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#1, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L54

*	hr.fer.ppj.labos.ppj21.tree.Label
L53
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#0, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Label
L54
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT60
	MOVE	#0, D2
	BRA	LT61
LT60	MOVE	#1, D2
LT61	MOVE	D2, -(A1)

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
	BGT	LT62
	MOVE	#0, D2
	BRA	LT63
LT62	MOVE	#1, D2
LT63	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT64
	BRA	L55
LT64	BRA	L56

*	hr.fer.ppj.labos.ppj21.tree.Label
L55
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
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L56
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#50, D2
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
	LEA	L57, A5
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
	BRA	BS_Search

*	hr.fer.ppj.labos.ppj21.tree.Label
L57
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, D1
	BEQ	LT65
	BRA	L58
LT65	BRA	L59

*	hr.fer.ppj.labos.ppj21.tree.Label
L58
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#1, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L60

*	hr.fer.ppj.labos.ppj21.tree.Label
L59
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#0, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

*	hr.fer.ppj.labos.ppj21.tree.Label
L60
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#99, D2
	MOVE	D2, D1

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#4, D2
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
BS_Search
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
	MOVE	#-10, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

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
	BGT	LT66
	MOVE	#0, D2
	BRA	LT67
LT66	MOVE	#1, D2
LT67	MOVE	D2, -(A1)

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
	BGT	LT68
	MOVE	#0, D2
	BRA	LT69
LT68	MOVE	#1, D2
LT69	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT70
	BRA	L61
LT70	BRA	L62

*	hr.fer.ppj.labos.ppj21.tree.Label
L61
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
	MOVE.B	#'2', (A5)+
	MOVE.B	#'3', (A5)+
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
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-4, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Label
L86
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT71
	BRA	L87
LT71	BRA	L88

*	hr.fer.ppj.labos.ppj21.tree.Label
L87
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
	ADD	(A1)+, D2
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
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT72
	MOVE	#0, D2
	BRA	LT73
LT72	MOVE	#1, D2
LT73	MOVE	D2, -(A1)

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
	BGT	LT74
	MOVE	#0, D2
	BRA	LT75
LT74	MOVE	#1, D2
LT75	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT76
	BRA	L63
LT76	BRA	L64

*	hr.fer.ppj.labos.ppj21.tree.Label
L63
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
	MOVE.B	#'6', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L64
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
	LEA	L65, A5
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
	BRA	BS_Div

*	hr.fer.ppj.labos.ppj21.tree.Label
L65
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	D1, D2
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
	BGT	LT77
	MOVE	#0, D2
	BRA	LT78
LT77	MOVE	#1, D2
LT78	MOVE	D2, -(A1)

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
	BGT	LT79
	MOVE	#0, D2
	BRA	LT80
LT79	MOVE	#1, D2
LT80	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT81
	BRA	L68
LT81	BRA	L69

*	hr.fer.ppj.labos.ppj21.tree.Label
L68
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
L69
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
	BGT	LT82
	MOVE	#0, D2
	BRA	LT83
LT82	MOVE	#1, D2
LT83	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT84
	BRA	L70
LT84	BRA	L71

*	hr.fer.ppj.labos.ppj21.tree.Label
L70
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
L71
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT85
	MOVE	#0, D2
	BRA	LT86
LT85	MOVE	#1, D2
LT86	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT87
	BRA	L72
LT87	BRA	L73

*	hr.fer.ppj.labos.ppj21.tree.Label
L72
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
L73
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
	MOVE	(A1)+, D2
	MOVE	(A1)+, D3
	MOVE	D2, -(A1)  * New Approach!
	MOVE	D3, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

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
	MOVE	#-10, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT88
	MOVE	#0, D2
	BRA	LT89
LT88	MOVE	#1, D2
LT89	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT90
	BRA	L74
LT90	BRA	L75

*	hr.fer.ppj.labos.ppj21.tree.Label
L74
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-8, D2
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
	BRA	L76

*	hr.fer.ppj.labos.ppj21.tree.Label
L75
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-8, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
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
L76
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT91
	MOVE	#0, D2
	BRA	LT92
LT91	MOVE	#1, D2
LT92	MOVE	D2, -(A1)

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
	BGT	LT93
	MOVE	#0, D2
	BRA	LT94
LT93	MOVE	#1, D2
LT94	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT95
	BRA	L77
LT95	BRA	L78

*	hr.fer.ppj.labos.ppj21.tree.Label
L77
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
	MOVE.B	#'2', (A5)+
	MOVE.B	#'1', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L78
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-10, D2
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
	LEA	L79, A5
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
	BRA	BS_Compare

*	hr.fer.ppj.labos.ppj21.tree.Label
L79
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#10, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, D1
	BEQ	LT96
	BRA	L80
LT96	BRA	L81

*	hr.fer.ppj.labos.ppj21.tree.Label
L80
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L82

*	hr.fer.ppj.labos.ppj21.tree.Label
L81
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Label
L82
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-2, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-4, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT97
	MOVE	#0, D2
	BRA	LT98
LT97	MOVE	#1, D2
LT98	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT99
	BRA	L83
LT99	BRA	L84

*	hr.fer.ppj.labos.ppj21.tree.Label
L83
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L85

*	hr.fer.ppj.labos.ppj21.tree.Label
L84
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-12, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Label
L85
*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L86

*	hr.fer.ppj.labos.ppj21.tree.Label
L88
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
	BGT	LT100
	MOVE	#0, D2
	BRA	LT101
LT100	MOVE	#1, D2
LT101	MOVE	D2, -(A1)

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
	BGT	LT102
	MOVE	#0, D2
	BRA	LT103
LT102	MOVE	#1, D2
LT103	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT104
	BRA	L89
LT104	BRA	L90

*	hr.fer.ppj.labos.ppj21.tree.Label
L89
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
	MOVE.B	#'7', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L90
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-10, D2
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
	LEA	L91, A5
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
	BRA	BS_Compare

*	hr.fer.ppj.labos.ppj21.tree.Label
L91
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#10, D2
	MOVE.L	D2, A2

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, D1
	BEQ	LT105
	BRA	L92
LT105	BRA	L93

*	hr.fer.ppj.labos.ppj21.tree.Label
L92
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
	BRA	L94

*	hr.fer.ppj.labos.ppj21.tree.Label
L93
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
L94
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
	ADD	#14, D2
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
BS_Div
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
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-2, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

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
L95
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-2, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-4, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT106
	MOVE	#0, D2
	BRA	LT107
LT106	MOVE	#1, D2
LT107	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT108
	BRA	L96
LT108	BRA	L97

*	hr.fer.ppj.labos.ppj21.tree.Label
L96
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-2, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
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
	BRA	L95

*	hr.fer.ppj.labos.ppj21.tree.Label
L97
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
	ADD	#6, D2
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
BS_Compare
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
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#8, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	ADD	(A5), D2
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
	MOVE	#10, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#8, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	SUB	(A1)+, D2
	BGT	LT109
	MOVE	#0, D2
	BRA	LT110
LT109	MOVE	#1, D2
LT110	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT111
	BRA	L101
LT111	BRA	L102

*	hr.fer.ppj.labos.ppj21.tree.Label
L101
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L103

*	hr.fer.ppj.labos.ppj21.tree.Label
L102
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#10, D2
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
	BGT	LT112
	MOVE	#0, D2
	BRA	LT113
LT112	MOVE	#1, D2
LT113	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	SUB	(A1)+, D2
	NEG	D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT114
	BRA	L98
LT114	BRA	L99

*	hr.fer.ppj.labos.ppj21.tree.Label
L98
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Jump
	BRA	L100

*	hr.fer.ppj.labos.ppj21.tree.Label
L99
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Label
L100
*	hr.fer.ppj.labos.ppj21.tree.Label

L103
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
	ADD	#4, D2
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
BS_Print
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
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

*	hr.fer.ppj.labos.ppj21.tree.Label
L112
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
	BGT	LT115
	MOVE	#0, D2
	BRA	LT116
LT115	MOVE	#1, D2
LT116	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT117
	BRA	L113
LT117	BRA	L114

*	hr.fer.ppj.labos.ppj21.tree.Label
L113
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
	BGT	LT118
	MOVE	#0, D2
	BRA	LT119
LT118	MOVE	#1, D2
LT119	MOVE	D2, -(A1)

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
	BGT	LT120
	MOVE	#0, D2
	BRA	LT121
LT120	MOVE	#1, D2
LT121	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT122
	BRA	L106
LT122	BRA	L107

*	hr.fer.ppj.labos.ppj21.tree.Label
L106
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
	MOVE.B	#'1', (A5)+
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
	MOVE.B	#'3', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L107
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
	BGT	LT123
	MOVE	#0, D2
	BRA	LT124
LT123	MOVE	#1, D2
LT124	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT125
	BRA	L108
LT125	BRA	L109

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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'1', (A5)+
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
	MOVE.B	#'3', (A5)+
	MOVE.B	#'8', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L109
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT126
	MOVE	#0, D2
	BRA	LT127
LT126	MOVE	#1, D2
LT127	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT128
	BRA	L110
LT128	BRA	L111

*	hr.fer.ppj.labos.ppj21.tree.Label
L110
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'1', (A5)+
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
	MOVE.B	#'3', (A5)+
	MOVE.B	#'8', (A5)+
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
	BRA	L112

*	hr.fer.ppj.labos.ppj21.tree.Label
L114
*	hr.fer.ppj.labos.ppj21.tree.Out
	MOVE	#3, D0
	MOVE	#99, D1
	EXT.L	D1
	TRAP	#15
	LEA	NL, A1
	MOVE	#14, D0
	TRAP	#15

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
BS_Init
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
L115
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A2), D2
	SUB	(A1)+, D2
	BGT	LT129
	MOVE	#0, D2
	BRA	LT130
LT129	MOVE	#1, D2
LT130	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT131
	BRA	L116
LT131	BRA	L117

*	hr.fer.ppj.labos.ppj21.tree.Label
L116
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
	BRA	L115

*	hr.fer.ppj.labos.ppj21.tree.Label
L117
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
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	D2, (A5)

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
	ADD	(A5), D2
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

*	hr.fer.ppj.labos.ppj21.tree.Label
L124
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
	BGT	LT132
	MOVE	#0, D2
	BRA	LT133
LT132	MOVE	#1, D2
LT133	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT134
	BRA	L125
LT134	BRA	L126

*	hr.fer.ppj.labos.ppj21.tree.Label
L125
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#2, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MULS	(A1)+, D2
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
	MOVE	#-2, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#3, D2
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	SUB	(A5), D2
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

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-6, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#-4, D2
	ADD	A4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D3
	MOVE.L	D3, A5
	MOVE	(A5), D2
	ADD	(A1)+, D2
	MOVE	D2, -(A1)

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
	BGT	LT135
	MOVE	#0, D2
	BRA	LT136
LT135	MOVE	#1, D2
LT136	MOVE	D2, -(A1)

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
	BGT	LT137
	MOVE	#0, D2
	BRA	LT138
LT137	MOVE	#1, D2
LT138	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	(A1)+, D2
	MULS	(A1)+, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT139
	BRA	L118
LT139	BRA	L119

*	hr.fer.ppj.labos.ppj21.tree.Label
L118
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
	MOVE.B	#'3', (A5)+
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
	MOVE.B	#'9', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L119
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
	BGT	LT140
	MOVE	#0, D2
	BRA	LT141
LT140	MOVE	#1, D2
LT141	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT142
	BRA	L120
LT142	BRA	L121

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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'3', (A5)+
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
	MOVE.B	#'9', (A5)+
	MOVE.B	#0, (A5)
	LEA	MSG, A1
	MOVE	#13, D0
	TRAP	#15
	BRA	FNSH

*	hr.fer.ppj.labos.ppj21.tree.Label
L121
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	ADD	D4, D2
	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#1, D2
	SUB	(A1)+, D2
	BGT	LT143
	MOVE	#0, D2
	BRA	LT144
LT143	MOVE	#1, D2
LT144	MOVE	D2, -(A1)

*	hr.fer.ppj.labos.ppj21.tree.CJump
	AND	#1, (A1)+
	BEQ	LT145
	BRA	L122
LT145	BRA	L123

*	hr.fer.ppj.labos.ppj21.tree.Label
L122
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
	MOVE.B	#'1', (A5)+
	MOVE.B	#'3', (A5)+
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
	MOVE.B	#'9', (A5)+
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
	BRA	L124

*	hr.fer.ppj.labos.ppj21.tree.Label
L126
*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	#0, D2
	MOVE	D2, D1

*	hr.fer.ppj.labos.ppj21.tree.Move
	MOVE	A2, D2
	ADD	#8, D2
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
