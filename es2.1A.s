
.data

@vettore di valori posti a 0
vettore: .word 0,0,0,0 

.text


ldr r3, =vettore
mov r1, #4
mov r0, #1
mov r5, #0

loop: cmp r1, #0
      beq exit
      str r0, [r3, r5]
      add r0, r0, #1
      sub r1, r1, #1
      add r5, r5, #4
      b loop 

exit: swi 0x11

.end

