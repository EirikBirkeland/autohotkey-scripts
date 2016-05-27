#Include lib\reload.ahk
#InstallKeybdHook

^+r::
  reload()
  return

^+g::
  InputBox, Times, "Pre-fill MemSource segments", "Insert how many segments you wish to populate"
  InputBox, Delay, "Pre-fill MemSource segments", "Insert a delay between each insert (or hit enter for 500 ms)"
  If (!Delay) {
    Delay = 500
  }
  Loop, %Times%
  {
      Send, {CTRLDOWN}1{CTRLUP}
      Sleep, Delay
      Send, {DOWN}
  }
  return
