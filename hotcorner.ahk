#Persistent
SetTimer, WatchCursor, 50
return

prev = False

WatchCursor:
MouseGetPos, x, y, id, control
now := x >= 0 && x < 10 && y < 10
if now && now != prev
	Send {LWin down}{Tab}{LWin up}
	prev := now
return