
.data

@vettore di valori posti a 0
vettore: .word 0,0,0,0 

.text

ldr r3, =vettore
mov r0, #1   @carico in r0 il numero 1
str r0, [r3] @sposto nella prima cella del vettore, e così via
mov r0, #2
str r0, [r3, #4]
mov r0, #3
str r0, [r3, #8]
mov r0, #4
str r0, [r3, #12]

.end


