section .text
  global _main

_main:
  mov rax, 8
  mov rbx, 4 
  add rax, rbx

  mov rdi, rax 
  xor rax, rax
  mov rax, 0x2000001
  syscall


section .bss
  result resb 10
