	push	sp
	push	1
	add
	pop	sp
	push	"Please enter a line:
"
	puts_
	getc
	pop	sb[0]
	push	sb[0]
	call	L000, 1
	push	' '
	putc
	end
L000:
	push	sp
	push	1
	add
	pop	sp
	push	fp[-4]
	push	'
'
	compNE
	j0	L001
	getc
	pop	fp[0]
	push	fp[0]
	call	L000, 1
	push	fp[-4]
	putc_
L001:
	ret
