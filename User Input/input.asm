section .data
	text1 db "What is your name?",10	;
	text2 db "Hello, "					;
	
section .bss
	name resb 16	;
	
section .text
	global _start	;
	
_start:
	call	_printtext1		;call subroutine
	call	_readname		;call subroutine
	call	_printtext2		;call subroutine
	call	_printname		;call subroutine
	
	mov		rax,60			;sys_exit ID
	mov		rdi,0			;To store error
	syscall					;

_readname:
	mov		rax,0			;sys_read ID
	mov		rdi,0			;Standard input
	mov		rsi,name		;To store value
	mov		rdx,16			;Total Bytes
	syscall					;
	ret						;

_printtext1:
	mov		rax,1			;sys_write ID
	mov		rdi,1			;Standard Output
	mov		rsi,text1		;To Print value
	mov 	rdx,19			;Total Bytes
	syscall					;
	ret						;
	
_printtext2:
	mov		rax,1			;sys_write ID
	mov		rdi,1			;Standard Output
	mov		rsi,text2		;To Print value
	mov 	rdx,7			;Total Bytes
	syscall					;
	ret						;
	
_printname:
	mov		rax,1			;sys_write ID
	mov		rdi,1			;Standard Output
	mov		rsi,name		;To Print value
	mov 	rdx,16			;Total Bytes
	syscall					;
	ret						;	
