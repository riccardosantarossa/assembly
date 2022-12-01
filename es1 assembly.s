
.data

numeri: .word 12, -8, -14, -7, 1024

.text

@Caricamento dei dati nei registri
ldr r5, =numeri
ldr r6, [r5] @ = n1
ldr r7, [r5, #4] @mi sposto di 4 byte da r5 = n2
ldr r8, [r5, #8] @mi sposto di 8 byte da r5 = n3
ldr r9, [r5, #12] @mi sposto di 12 byte da r5 = n4
ldr r12, [r5, #16] @carico la costante 1024

@Operazioni algebriche

@Somma dei 4 registri
add r10, r6, r7  @Sommo n1 ed n2 e metto il risultato in r10
add r11, r8, r9  @Sommo n2 ed n3 e metto in r11
add r0, r10, r11 @Metto in r1 la somma tra r10 e r11

@Media dei valori
mov r1, r0, asr #2 @Divido per 4, ovvero shifto a destra di 2 byte la somma calcolata in precedenza

@Risultato di (2^10 +1) * n1
mul r2, r6, r12 @moltiplico n1 * 1024
mov r12, r6     @sposto n1 in un registro di appoggio
add r2, r2, r12 @sommo alla moltiplicazione fatta in precedenza (1024*n1) n1, che è equivalente a (1025*n1) 

@Resto della divisione di n1 per 16 (solo per i positivi)
and r3, r6, r6, #0x0f  @uso una AND bitwise per leggere soltanto gli ultimi 4 bit del registro 

@Resto della divisione di n1 per 16 con tutti i numeri
cmp r6, #0 @compare con zero
rsblt r6, r6, #0 @se n1 è negativo cambio il segno
and r3, r6, #0x0f @bitwise AND con 15 come sopra
rsblt r3, r3, #0 @se n1 era negativo rimodifico il segno

@Determinazione del segno 
mov r4, r6, lsr #31  @shifto a destra di 32 bit su 32 per isolare soltanto l'ultimo


.end