## Lesson 6
> NULL terminating byte

- In the last lesson the second string prints twice.
- This is because we didin't properly terminated our strings. And because in asm the varialbes are stored one after the other, it wouldn't know where a string ends.
- To indicate end of a string we need to add a null byte (`0h`) at the end of the string

