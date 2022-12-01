

.data

vett: .word 1,7,6,2

.text

ldr r0, =vett

@carico tutti i valori prima di spostarli
ldr r1, [r0] 
ldr r2, [r0, #4]
ldr r3, [r0, #8]
ldr r4, [r0, #12]

@riscrivo in memoria i valori spostati di una cella a dx
str r1, [r0, #4]
str r2, [r0, #8]
str r3, [r0, #12]
str r4, [r0]

.end