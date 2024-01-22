slen:
  push  ebx
  mov   ebx, eax

nextchar:
  cmp   byte [eax], 0
  jz    finished
  inc   eax
  jmp   nextchar

finished:
  sub   eax, ebx
  pop   ebx
  ret


sprint:
  push  edx
  push  ecx
  push  ebx
  push  eax
  call  slen

  mov   edx, eax
  pop   eax

  mov   ecx, eax
  mov   ebx, 1
  mov   eax, 4
  int   80h

  pop   ebx
  pop   ecx
  pop   edx
  ret


; void sprintLF(String message)
;String printing with line feed function
sprintLF:
  call  sprint

  push  eax           ; push eax onto the stack to preserve it
  mov   eax, 0Ah      ; move 0Ah into eax
  push  eax           ; push the linefeed onto the stack
  mov   eax, esp      ; move the address of the current stack pointer into eax
  call  sprint
  pop   eax           ; remove linefeed cahacter
  pop   eax           ; restore the original value of eax
  ret


quit:
  mov   ebx, 0
  mov   eax, 1
  int   80h
  ret
