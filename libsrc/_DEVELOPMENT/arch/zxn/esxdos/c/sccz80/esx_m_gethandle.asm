; unsigned char esx_m_gethandle(void)

SECTION code_esxdos

PUBLIC esx_m_gethandle

EXTERN asm_esx_m_gethandle

defc esx_m_gethandle = asm_esx_m_gethandle
