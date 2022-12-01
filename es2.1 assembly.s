
.data

vettore: .word 0,0,0,0 

.text

ldr r3, =vettore
mov r0, #1   @carico in r0 il numero 1
str r3, [r0] @sposto nella prima cella del vettore, e così via
mov r0, #2
str r3, [r0, #4]
mov r0, #3
str r3, [r0, #8]
mov r0, #4
str r3, [r0, #12]

.end


