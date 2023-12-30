.global _start

.text

.set uart_base, 0x09000000

_start:
    ldr r0, =uart_base
    ldr r1, =message
    ldr r2, =

loop:
    ldrb r3, [r1, r2]
    cmp r3,
    beq halt
    str r3, [r0]
    add r2, r2,
    b loop

halt:
    b halt

.data

message:
    .asciz "Hello, world!\n"

.end