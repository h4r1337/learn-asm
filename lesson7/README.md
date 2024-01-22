## Lesson 7
> Linefeeds

- We can avoid hardcoding linefeed character at the end of each string by using the `esp` register
- We first push the string onto the stack and then also push the linefeed character onto to the stack
- Now before calling the `sprint` function we set the value of `eax` register to the current value of the `esp` register.
