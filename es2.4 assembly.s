
.data

num: .word 5,3

.text

@carico i valori nei registri
ldr r5, =num
ldr r0, [r5]
ldr r1, [r5, #4]

@eseguo sottrazioni e salvo man mano il quoziente, alla fine trovo il resto







.end