section .data
    buffer_len equ 100
    buffer db buffer_len dup(0)  
    prompt db "Enter some text: ", 0
    prompt_len equ $ - prompt

section .text
    global _main

_main:
    mov rdi, 1            
    lea rsi, [rel prompt]   
    mov rdx, prompt_len   
    mov rax, 0x2000004    
    syscall
    
    mov rdi, 0 
    lea rsi, [rel buffer]     
    mov rdx, buffer_len          
    mov rax, 0x2000003   
    syscall

    cmp rax, 0            
    jle _exit_error 

    mov rdi, 1           
    lea rsi, [rel buffer]     
    mov rdx, rax          
    mov rax, 0x2000004    
    syscall

_exit:
    mov rax, 0x2000001   
    xor rdi, rdi        
    syscall

_exit_error:
  mov rax, 0x2000001
  mov rdi, -1
  syscall
