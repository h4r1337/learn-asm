; define variable `msg` and assign it the string
SECTION .data
msg     db      'Hello, world!', 0Ah

; define programs entry point -> _start
SECTION .text
global _start

_start:

  mov   edx, 14       ; number of bytes to write + 0Ah new line character
  mov   ecx, msg      ; memory address of msg string into ecx
  mov   ebx, 1        ; write to the STDOUT
  mov   eax, 4        ; invoke SYS_WRITE (opcode 4)
  int   80h
