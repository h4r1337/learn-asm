# Learning Assembly

- [asmtutor](https://asmtutor.com/)

## Installation

```bash
# Debian, Ubuntu
sudo apt install nasm

# RHEL, Fedora
sudo dnf install nasm

# Arch, Manjaro
sudo pacman -S nasm
```

To install the latest version in debian/ubuntu distros we have to compile from source:

```bash
wget https://www.nasm.us/pub/nasm/releasebuilds/2.16.01/nasm-2.16.01.tar.gz
tar -xvf nasm-*.tar.gz
cd nasm-*/
./configure
make
sudo make install
```

## Lessons

- [lesson 1 - Hello, world!](lesson1/)
- [lesson 2 - Proper program exit](lesson2/)
- [lesson 3 - Calculate string length](lesson3/)
- [lesson 4 - Subroutines](lesson4/)
- [lesson 5 - External include fils](lesson5/)
- [lesson 6 - NULL terminating bytes](lesson6/)
- [lesson 7 - Linefeeds](lesson7/)

