

BITS 16

; ORG needs to be set to the offset of the far jump used to
; reach us. Jump was 0x7e0:0x0000 so ORG = Offset = 0x0000.
ORG 0x0000

main:
xor ax, ax
mov ds, ax
mov es, ax
xor bx, bx
mov ah, 0x0E
mov al, 'B'
int 0x10