#Include lib\reload.ahk
#InstallKeybdHook
^+r::
   reload()
   return

; map "«" to CTRL-SHIFT-2
^+"::
	Send «
	return

; map "»" to CTRL-SHIFT-3
^+#::
	Send »
	return

; map nbsp space to CTRL-ALT-N
^!n::
Clipboard := Chr(160)
	Send ^v
	return
	
; map en-dash to ctrl-dash
^-::– 