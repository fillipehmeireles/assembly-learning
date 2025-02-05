.global _main             
.align 2                 

_main:
    mov x0, #1            
    adr x1, hello         
    ldr x2, =len          
    mov x16, #4           
    svc #0x80             

    
    mov x0, #0
    mov x16, #1
    svc #0x80 

hello:
    .ascii "Hello, World!\n"  
hello_end:
  .byte 0

len = hello_end - hello
