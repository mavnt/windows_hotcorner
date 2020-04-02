#Persistent
CoordMode, Mouse , Screen
SetTimer, WatchCursor, 100
return

prev = False

WatchCursor:
MouseGetPos, x, y, id, control
now := x < 5 && y < 5
if now && now != prev
	Send {LWin down}{Tab}{LWin up}
	prev := now
return
