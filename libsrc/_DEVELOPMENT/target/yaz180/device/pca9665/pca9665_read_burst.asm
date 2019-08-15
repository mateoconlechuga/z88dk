
    INCLUDE "config_private.inc"

    SECTION code_driver

    PUBLIC pca9665_read_burst

    ;Do a burst read from the direct registers
    ;input E  =  number of bytes to read, max 68 in hardware buffer
    ;input BC =  device addr | direct register address (ddd.....:......rr)
    ;input HL =  starting adddress of 256 byte aligned input buffer
    ;output HL = finishing address
    ;FIXME do this with DMA
    
.pca9665_read_burst
    push de
    ld d,h              ;remember the buffer MSB
.pca9665_rd_bst
                        ;lower address bits (0x1F) of B irrelevant
                        ;upper address bits (0xFC) of C irrelevant
    ini                 ;read the byte (HL++)
    ld h,d              ;unwrap the buffer address MSB
    dec e               ;keep iterative count in E
    jr NZ,pca9665_rd_bst
    pop de
    ret

