section .data
    value db 0,10

section .text
    global _start

_start:
    mov rax,6
    mov rbx,2
    add rax,rbx
    call _print

    mov rax,6
    mov rbx,2
    sub rax,rbx
    call _print

    mov rax,3
    mov rbx,2
    mul rbx
    call _print

    mov rax,3
    mov rbx,2
    mov rdx,0
    div rbx
    call _print

    mov rax,60
    mov rdi,0
    syscall

_print:
    add rax,48
    mov [value],al
    mov rax,1
    mov rdi,1
    mov rsi,value
    mov rdx,2
    syscall
    ret