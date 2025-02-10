section .text
  global _main

_main:
  mov rdi, 1 
  mov rsi, 3
  call _add_integers   
  mov rdi, rax
  xor rax, rax
  mov rax, 0x2000001
  syscall

_add_integers:
  mov rax, rdi
  add rax, rsi
  ret
