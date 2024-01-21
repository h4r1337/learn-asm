## Lesson 2
> Proper program exit

- We need to call `sys_exit` at the end of all our program so that the kernel knows exactly when to terminate the process and return memory back to the general pool thus avoiding errors like `Segmentation fault` that happened on the previous lesson.

### `sys_exit`

- OPCODE = 1
- Registers:
    - `ebx` - with 0 to pass zero to the function meaning 'zero errors'.
    - `eax` - with 1 to call `sys_exit`
- Then request an interrupt on libc using `int 80h`.
