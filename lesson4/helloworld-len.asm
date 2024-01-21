SECTION .data
msg     db      'Hello, brave new world!', 0Ah

SECTION .text
global _start

_start:
  
  mov   eax, msg
  call  strlen            ; call the function to calculate length of the string

  mov   edx, eax
  mov   ecx, msg
  mov   ebx, 1
  mov   eax, 4
  int   80h

  mov   ebx, 0
  mov   eax, 1
  int   80h

strlen:                   ; function declaration
  push  ebx               ; push the value in ebx to the stack to preserve it while inside this function 
  mov   ebx, eax          ; move value from eax to ebx now eax = ebx

nextchar:                 ; it now reaches nextchar sequentially (still inside strlen subroutine)
  cmp   byte [eax], 0
  jz    finished
  inc   eax
  jmp   nextchar

finished:
  sub   eax, ebx
  pop   ebx               ; after finishing, pop the value on the stack back into ebx
  ret                     ; return to where the function was called
