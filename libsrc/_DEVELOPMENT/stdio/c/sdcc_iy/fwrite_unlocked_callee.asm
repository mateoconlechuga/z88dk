
; size_t fwrite_unlocked_callee(void *ptr, size_t size, size_t nmemb, FILE *stream)

SECTION code_clib
SECTION code_stdio

PUBLIC _fwrite_unlocked_callee

EXTERN asm_fwrite_unlocked

_fwrite_unlocked_callee:

   pop af
   pop hl
   pop bc
   pop de
   pop ix
   push af

   jp asm_fwrite_unlocked
