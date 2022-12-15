.data

vettore: .word 2,3,4

.text

mov r1, #3
mov r0, #4
mov r5, #0
ldr r2, =vettore

loop: cmp r1, #0
      beq exit
      ldr r7, [r2, r5]
      mul r7, r0
      str r7, [r2, r5]
      sub r1, r1, #1
      add r5, r5, #4
      b loop 

exit: swi 0x11

.end