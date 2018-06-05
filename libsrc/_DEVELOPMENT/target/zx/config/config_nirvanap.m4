divert(-1)

###############################################################
# NIRVANA+ MULTICOLOUR ENGINE CONFIGURATION
# rebuild the library if changes are made
#

define(`__NIRVANAP_OPTIONS', 0)

define(`__NIRVANAP_OPTIONS_WIDE_DRAW',    0x01)
define(`__NIRVANAP_OPTIONS_WIDE_SPRITES', 0x02)

define(`__NIRVANAP_TOTAL_ROWS', 18)      # total number of rows drawn by nirvana+ 1-23
define(`__NIRVANAP_HOLE', eval(__NIRVANAP_TOTAL_ROWS*328+56718))
define(`__NIRVANAP_HOLE_SIZE', eval(64262-__NIRVANAP_HOLE))

define(`__NIRVANAP_TILE_IMAGES', 48000)  # default location of bicolour tiles (16x16 pix, 48 bytes each)
define(`__NIRVANAP_WIDE_IMAGES', 54000)  # default location of wide tiles (24x16 pix, 72 bytes each)
define(`__NIRVANAP_CHAR_TABLE',  15360)  # default location of character set (8x8 pix, 8 bytes each)

#
# END OF USER CONFIGURATION
###############################################################

divert(0)

dnl#
dnl# COMPILE TIME CONFIG EXPORT FOR ASSEMBLY LANGUAGE
dnl#

ifdef(`CFG_ASM_PUB',
`
PUBLIC `__NIRVANAP_OPTIONS'

PUBLIC `__NIRVANAP_OPTIONS_WIDE_DRAW'
PUBLIC `__NIRVANAP_OPTIONS_WIDE_SPRITES'

PUBLIC `__NIRVANAP_TOTAL_ROWS'
PUBLIC `__NIRVANAP_HOLE'
PUBLIC `_NIRVANAP_HOLE'
PUBLIC `__NIRVANAP_HOLE_SIZE'

PUBLIC `__NIRVANAP_TILE_IMAGES'
PUBLIC `__NIRVANAP_WIDE_IMAGES'
PUBLIC `__NIRVANAP_CHAR_TABLE'
')

dnl#
dnl# LIBRARY BUILD TIME CONFIG FOR ASSEMBLY LANGUAGE
dnl#

ifdef(`CFG_ASM_DEF',
`
defc `__NIRVANAP_OPTIONS' = __NIRVANAP_OPTIONS

defc `__NIRVANAP_OPTIONS_WIDE_DRAW'    = __NIRVANAP_OPTIONS_WIDE_DRAW
defc `__NIRVANAP_OPTIONS_WIDE_SPRITES' = __NIRVANAP_OPTIONS_WIDE_SPRITES

defc `__NIRVANAP_TOTAL_ROWS'  = __NIRVANAP_TOTAL_ROWS
defc `__NIRVANAP_HOLE'        = __NIRVANAP_HOLE
defc `_NIRVANAP_HOLE'         = __NIRVANAP_HOLE
defc `__NIRVANAP_HOLE_SIZE'   = __NIRVANAP_HOLE_SIZE

defc `__NIRVANAP_TILE_IMAGES' = __NIRVANAP_TILE_IMAGES
defc `__NIRVANAP_WIDE_IMAGES' = __NIRVANAP_WIDE_IMAGES
defc `__NIRVANAP_CHAR_TABLE'  = __NIRVANAP_CHAR_TABLE

; `define(`__NIRVANAP_TOTAL_ROWS',' __NIRVANAP_TOTAL_ROWS)
')

dnl#
dnl# COMPILE TIME CONFIG EXPORT FOR C
dnl#

ifdef(`CFG_C_DEF',
`
`#define' `__NIRVANAP_OPTIONS'  __NIRVANAP_OPTIONS

`#define' `__NIRVANAP_OPTIONS_WIDE_DRAW'     __NIRVANAP_OPTIONS_WIDE_DRAW
`#define' `__NIRVANAP_OPTIONS_WIDE_SPRITES'  __NIRVANAP_OPTIONS_WIDE_SPRITES

`#define' `__NIRVANAP_TOTAL_ROWS'   __NIRVANAP_TOTAL_ROWS
`#define' `__NIRVANAP_HOLE'         __NIRVANAP_HOLE
`#define' `__NIRVANAP_HOLE_SIZE'    __NIRVANAP_HOLE_SIZE

`#define' `__NIRVANAP_TILE_IMAGES'  __NIRVANAP_TILE_IMAGES
`#define' `__NIRVANAP_WIDE_IMAGES'  __NIRVANAP_WIDE_IMAGES
`#define' `__NIRVANAP_CHAR_TABLE'   __NIRVANAP_CHAR_TABLE
')
