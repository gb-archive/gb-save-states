; md5 849c5fe4002dd4240020e9ec84c8dc29

.INCLUDE "includes/init.s"
.ROMBANKS 8
.BACKGROUND "Darkman (U).gb"
.INCLUDE "includes/header.s"


;**********
;* config *
;**********

.DEFINE current_rom_bank $ffc0


;**********
;* vblank *
;**********

.DEFINE vblank_handler $0001
.DEFINE original_vblank_handler $3dfe
.INCLUDE "includes/vblank_handler.s"


;*******************
;* save/load state *
;*******************

.BANK $0003 SLOT 1
.ORG $3532
.SECTION "save/load state" SIZE $02a0 OVERWRITE
    .DB "--- Save Patch ---"
    .INCLUDE "includes/joypad_read_and_check.s"
    .INCLUDE "includes/save_state_includes.s"
.ENDS


; Generated with patch-builder.py
