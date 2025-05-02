; Jinmax's BGSI Auto Reroller
#SingleInstance Force
#Requires AutoHotkey >=1.1.37.01 <1.2
SetWorkingDir %A_ScriptDir%
#Include Lib\FindText.ahk
#Include Lib\CreateFormData.ahk
#Include Variables.ahk
#Include Lib\Gdip_All.ahk

Esc::ExitApp
F1::
Coordmode, Mouse, Window
StartTime := A_TickCount
if WinExist("ahk_exe" "RobloxPlayerBeta.exe") {
WinActivate ahk_exe RobloxPlayerBeta.exe
sleep 100
WinMove, ahk_exe RobloxPlayerBeta.exe, , 30, 30, 800, 600
sleep 500
WinGetPos, rX, rY, rW, rH, ahk_exe RobloxPlayerBeta.exe
}
else
{
msgbox, Error: Must have Roblox open.
ExitApp
}
sleep 500
Start:
sleep 200
FindText().WindowToScreen(outX1, outY1, 105, 361)
FindText().WindowToScreen(outX2, outY2, 270, 521)
if (ok:=FindText(X, Y, outX1, outY1, outX2, outY2, 0, 0, TeamUpV))
	{
	Msgbox, Team Up V Found
	return
	}
	else {
	sleep 50
	Click, 188 534
	Goto Start
	}