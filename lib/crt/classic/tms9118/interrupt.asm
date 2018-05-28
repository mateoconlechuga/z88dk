

tms9118_interrupt:
	push	af
	push	hl
IF VDP_PORT >= 256
	ld	a,(VDP_PORT)
ELSE
	in	a,(VDP_PORT)
ENDIF
	or	a
	jp	p,int_not_VBL
	jr	int_VBL

int_not_VBL:
	pop	hl
	pop	af
	ei
	reti

int_VBL:
        ld      hl, timer
        ld      a, (hl)
        inc     a
        ld      (hl), a
        inc     hl
        ld      a, (hl)
        adc     a, 1
        ld      (hl), a         ;Increments the timer

        ld      hl, raster_procs
        call    int_handler
        pop     hl
	pop	af
	ei
        reti

