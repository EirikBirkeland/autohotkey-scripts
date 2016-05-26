; CTRL+U toggles text between cases
; I AM A SENTENCE --> I am a sentence
; I aM a SeNtEnCe --> I AM A SENTENCE

; Set to true in order to capitalize sentence when converting into lC
NORMALIZATION := true

^u::
  Clipboard := ""
  Send, ^a
  Send, ^c ; copies selected text
  CLIPWAIT
  Check := RegExMatch(Clipboard, "^[^a-z]+$")
  if Check = 1
  { ; Convert clipboard data to lower-case and paste
    StringLower Clipboard, Clipboard
    if NORMALIZATION {
      Clipboard := RegExReplace(Clipboard, "^([a-z])", "$u1")
    }
    Send, ^v
    return
  }
  else
  { ; Convert clipboard data to upper-case and paste
    StringUpper Clipboard, Clipboard
    Send, ^v
    return
  }
