; Caps lock to pipe
Tab & \::
  If GetKeyState("Alt","P")
    SetCapsLockState off
  else
    SetCapsLockState on
return
;delete this comment
;;Mouse Keys
;SetMouseDelay, -1  
;CoordMode, Mouse,Window
;d & u:: 
;  Mousemove, 00, 00 
;return 
;d & o:: 
;  WinGetPos X, Y, Width, Height, A
;  Mousemove, %Width%, 00 
;return 
;d & i:: 
;  WinGetPos X, Y, width, height, A
;  halfWidth := width//2
;  halfHeight := height//2
;  Mousemove, %halfWidth%, %halfHeight% 
;return 
;d::d
;d & h::
;  sleep 1000
;  state := GetKeyState("h")
;  MsgBox %state%
;  MouseMove, -1000, 00, 100, R
;return

;Arrow to hjkl
s::s
s & h::
  send {Left}
return
s & j::
  send {Down}
return
s & k::
  send {Up}
return
s & l::
  send {Right}
return
;Caps lock to control when pressed with another key, esc when pressed alone
#InstallKeybdHook
SetCapsLockState, alwaysoff
Capslock::
Send {LControl Down}
KeyWait, CapsLock
Send {LControl Up}
if ( A_PriorKey = "CapsLock" )
{
  Send {Esc}
}
return

;Enter to control when pressed with another key
Enter::
Send {LControl Down}
KeyWait, Enter
Send {LControl Up}
if ( A_PriorKey = "Enter" )
{
  Send {Enter}
}
return
Alt::Alt
Tab::Tab
return
return
Tab & m::
  If GetKeyState("Alt","P")
    send {!}
  else
    send 1
return
Tab & ,::
  If GetKeyState("Alt","P")
    send {@}
  else
    send 2
return
Tab & .::
  If GetKeyState("Alt","P")
    send {#}
  else
    send 3
return
Tab & j::
  If GetKeyState("Alt","P")
    send {$}
  else
    send 4
return
Tab & k::
  If GetKeyState("Alt","P")
    send `%
  else
    send 5
return
Tab & l::
  If GetKeyState("Alt","P")
    send {^}
  else
    send 6
return
Tab & u::
  If GetKeyState("Alt","P")
    send {&}
  else
    send 7
return
Tab & i::
  If GetKeyState("Alt","P")
    send {*}
  else
    send 8
return
Tab & o::
  If GetKeyState("Alt","P")
    send {(}
  else
    send 9
return
Tab & Space::
  If GetKeyState("Alt","P")
    send {)}
  else
    send 0
return
Tab & p::
  If GetKeyState("Alt","P")
    send {_}
  else
    send -
return
Tab & SC027::
  If GetKeyState("Alt","P")
    send {=}
  else
    send {+}
return
Tab & /::
send \
return
Tab & '::
send |
return
Tab & h::
  If GetKeyState("Alt","P")
    send {Delete}
  else
    send {Backspace}
return
Tab & n::
  If GetKeyState("Alt","P")
   send ^{Delete}
  else
    send ^{Backspace}
return
Tab & y::
  If GetKeyState("Alt","P")
    send {~}
  else
    send {`}
return
Tab & w::
  If GetKeyState("Alt","P")
    send {{}
  else
    send [
return
Tab & e::
  If GetKeyState("Alt","P")
    send {}}
  else
    send ]
return
Tab & q::
    send :
return
Tab & r::
    send {Space}
return
Tab & f::
    send .
return
;Shift & m::
;  If GetKeyState("Alt","P")
;    send #{Up}
;  else
;    send M
;return
;Shift & y::
;  If GetKeyState("Alt","P")
;    send #{Left}
;  else
;    send Y
;return
;Shift & u::
;  If GetKeyState("Alt","P")
;    send #{Down}
;  else
;    send U
;return
;Shift & i::
;  If GetKeyState("Alt","P")
;    send #{Up}
;  else
;    send I
;return
;Shift & o::
;  If GetKeyState("Alt","P")
;    send #{Right}
;  else
;    send O
;return
