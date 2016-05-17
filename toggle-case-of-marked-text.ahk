; CTRL+U toggles text between cases.
^u::
  Clipboard := ""
  Send, ^c ;copies selected text
  ClipWait
  Check := RegExMatch(Clipboard, "^[^a-z]+$")
  if Check = 1
  { ; Convert clipboard data to lower-case and paste
    StringLower Clipboard, Clipboard
    StringUpper Clipboard, Clipboard, T
    Send, ^v
    return
  }
  else
  { ; Convert clipboard data to upper-case and paste
    StringUpper Clipboard, Clipboard
    Send, ^v
    return
  }
