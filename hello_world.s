.section .text
.global _start


_start:
   .code 32
   add r3, pc, #1
   bx r3

   .code 16
   eor r0, r0, r0               @ STDOUT
   add r1, pc, #8   @ memory address of string
   mov r2, #13              @ size of string
   mov r7, #4               @ write syscall
   svc #1                   @ invoke syscall
   mov r7, #1
   svc #1
.ascii "Hello_World!"
