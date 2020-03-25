section .data
	text db "Hello, World!",10	;db stands for define byte, text refer to a memory area 
					;where "Hello, World!",10 is stored
					;10 is used for new line like \n

section .text
	global _start	;		
_start: 		
	mov rax, 1		;Copy syscall ID to register rax
	mov rdi, 1		;Copy filedescripter to register rdi  
					;0-standard input
					;1-standard output
					;2-standard error
			
	mov rsi, text	;Copy buffer address to register rsi
	mov rdx, 14		;Copy no of count to register rdx
	syscall			;calling the syscall write
	
	mov rax, 60		;copy syscall ID
	mov rdi, 0		;copy errorcode- 0 means no error
	syscall			;calling the system call exit

