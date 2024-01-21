SECTION .data
msg     db      'Hello, brave new world!', 0Ah

SECTION .text
global _start

_start:

  mov   ebx, msg
  mov   eax, ebx          ; both ebx, and eax now points to msg

nextchar:
  cmp   byte [eax], 0     ; compare the byte pointed to by eax to this address against 0 (0 is end of string delimeter)
  jz    finished          ; jump if zero flag has been set
  inc   eax               ; encrement the address in eax by 1 byte
  jmp   nextchar

finished:
  sub   eax, ebx          ; ebx now points to the starting byte of the msg variable and eax points to the end.
                          ; now by subtracting ebx from eax we get the number of segments between them - in this case the number of bytes
  mov   edx, eax          ; set edx with the length of the string
  mov   ecx, msg
  mov   ebx, 1
  mov   eax, 4
  int   80h

  mov   ebx, 0
  mov   eax, 1
  int   80h
  
