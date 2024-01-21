## Lesson 3
> Calculate string length

- To calculate the length of the string we use a technique called pointer arithmetic.
- 2 registers are initialized pointing to the same address in memory - in our case the `msg` variable.
- Then we increment one register (in this case `eax`) forward one byte for each character in the string.
- The original pointer that points to the starting byte of the variable is then subtracted from `eax`.

### `cmp`

- The `cmp` instruction compares the left hand side against the right hand side and sets a number of flags that are used for program flow.
- The flag we check here is the Zero Flag (ZF). 

### `jz`

- The `jz` instruction is used to jump, if the ZF flag is set, to the point in our program labeled 'finished'. 
- This will break out of the nextchar loop and continue executing the program
