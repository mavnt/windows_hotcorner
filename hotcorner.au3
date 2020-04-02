#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile=hotcorner.exe
#AutoIt3Wrapper_Res_ProductName=hotcorner
#AutoIt3Wrapper_Res_SaveSource=y
#AutoIt3Wrapper_Run_Tidy=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Mirko Avantaggiato

 Script Function:
	Hot corner in Windows 10. https://github.com/mavnt/windows_hotcorner

#ce ----------------------------------------------------------------------------

#include <MsgBoxConstants.au3>

Local $done = False
While True
	$mic = isMouseInCorner()
	If $mic And Not $done Then
		Send("#{TAB}")
		$done = True
	ElseIf Not $mic Then
		$done = False
	EndIf

	Sleep(100)
WEnd

Func isMouseInCorner()
	Local $aPos = MouseGetPos()
	Return ($aPos[0] < 5 And $aPos[1] < 5)
EndFunc   ;==>isMouseInCorner
