## Lesson 1
> Hello, world!

- To actually do anything useful in assembly we need to invoke system calls provided by the kernel.
- We can accomplish this by loading `eax` with function number (OPCODE) we want to execute and filling the remaining registers with arguments we want to pass to the system call.
- This lesson uses system call `sys_write` to output message to the console window.

### `sys_write`

- OPCODE = 4
- Takes 3 arguments: 
    - `edx` - length of the string.
    - `ecx` - address of our variable created in the `.data` section 
    - `ebx` - file we want to write to -> in this case `STDOUT`

## Run

```bash
nasm -f elf helloworld.asm
ld -m elf_i386 helloworld.o -o helloworld.bin
./helloworld.bin
```
