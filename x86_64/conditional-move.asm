section .text
  global _main

_main:
  mov rax, 1
  mov rbx, 2
  cmp rax, rbx
  cmovl rax, rbx

  mov rdi, rax            
  xor rax, rax
  mov rax, 0x2000001       
  syscall                
           

