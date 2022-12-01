

.data

vettore: .word 14,2,6
const: .word 4

.text

@carico la costante per moltiplicare i numeri
ldr r8, = const
ldr r9, [r8]

ldr r0, =vettore
ldr r1, [r0] @carico la prima cella del vettore
mul r1, r8  @moltiplico per 4
str r1, [r0]  @rimetto nel vettore il numero elaborato

ldr r1 [r0, #4]
mul r1, r8
str r1 [r0, #4]

ldr r1 [r0, #8]
mul r1, r8
str r1 [r0, #8]



.end


