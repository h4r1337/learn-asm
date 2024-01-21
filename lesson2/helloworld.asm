SECTION .data
msg     db      'Hello, world!', 0Ah

SECTION .text
global  _start

_start:

  mov   edx, 14
  mov   ecx, msg
  mov   ebx, 1
  mov   eax, 4
  int   80h

  mov   ebx, 0      ; return 0 status on exit - 'No Errors'
  mov   eax, 1      ; invoke sys_exit (opcode 1)
  int   80h
