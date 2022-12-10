PROCESSOR   18F57Q43
#include    <xc.inc>
    
PSECT resetVec, class=CODE, reloc=2
PSECT absdata, abs, ovrld
 
absdata:    org	    0x1000
resetVec:   goto    main

PSECT code
main:
    movlb   1		    ; mover valor 1 a BSR
    movlw   5		    ; mover valor 5 a WREG
    movwf   0x00, 1	    ; mover WREG a direccion 0x200 por BSR

    movlb   2		    ; mover valor 2 a BSR
    movlw   6		    ; mover valor 6 a WREG
    movwf   0x100, 1	    ; mover WREG a direccion 0x100 por BSR

    movlb   0xA		    ; mover 0xA (hex) a BSR
    movlw   0x4B	    ; mover 0x4B (hex) a WREG
    movwf   0x24, 1	    ; mover WREG a direccion 0x24 por BSR
END

