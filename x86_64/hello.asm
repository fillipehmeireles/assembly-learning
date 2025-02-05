section .text
    global _main

_main:
    mov rax, 0x2000004           
    mov rdi, 1                   
    lea rsi, [rel msg]          
    mov rdx, len               
    syscall                   
    cmp rax, 0
    jl _error
_exit:
    mov rax, 0x2000001       
    mov rdi, 0            
    syscall                
_error:
    mov rax, 0x2000001  
    mov rdi, 1         
    syscall

section .data
    msg db "Hello, World!", 0xA  
    len equ $ - msg             
    buffer db 100 dup(0) 


