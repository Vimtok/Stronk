

k0 = 0x11111111                  ; 128-bit secret key (example)
k1 = 0x22222222
k2 = 0x33333333
k3 = 0x44444444

l0 = 0x12345678                  ; 64- bit 2nd secret key (example)
l1 = 0x12345678

m0 = 0x87654321                  ; 64- bit 3rd secret key (example)
m1 = 0x87654321

IniFile = SafeSW.ini

GoSub    CheckAuth
SetTimer CheckAuth,1000


#singleInstance, Force
#NoEnv 
#MaxThreadsPerHotkey, 2
SetWorkingDir %A_WorkingDir%
#InputLevel, 100
#IfWinActive, Tibia
Gui, -Caption
Gui,+AlwaysOnTop
Gui, font, s9 cwhite, Russo One

Gui, Add, Picture, x0 y0, %A_WorkingDir%\icons\titlebar3.png
Gui, Add, Text, x0 y0 w450 h40 +BackgroundTrans gUImove
Gui, Add, Picture, x0 y0 gclose, +BackgroundTrans, %A_WorkingDir%\icons\close Circle Buttons.png
Gui, Add, Picture, x0 y40, %A_WorkingDir%\icons\bg.png


Gui, Add, Picture, x20 y50 +BackgroundTrans vc1 gClick,  %A_WorkingDir%\icons\ssaoff.png
Gui, Add, Picture, x20 y50 +BackgroundTrans vc2 gClick hidden, %A_WorkingDir%\icons\Stone_Skin_AmuletOff.png
Gui, Add, Text, x20 y85 +BackgroundTrans, Delete


Gui, Add, Picture, x20 y110 +BackgroundTrans vx1 gClick1, %A_WorkingDir%\icons\Might_Ringoff.png
Gui, Add, Picture, x20 y110 +BackgroundTrans vx2 gClick1 hidden, %A_WorkingDir%\icons\Might_Ring.png
Gui, Add, Text, x20 y145 +BackgroundTrans, End


Gui, Add, Picture, x20 y170 +BackgroundTrans vy1 gClick2, %A_WorkingDir%\icons\Light_Healingoff.gif
Gui, Add, Picture, x20 y170 +BackgroundTrans vy2 gClick2 hidden, %A_WorkingDir%\icons\Light_Healing.gif
Gui, Add, Text, x20 y207 +BackgroundTrans, Home

Gui, Add, Picture, x20 y230 +BackgroundTrans vp1 gClick4, %A_WorkingDir%\icons\EKoff.gif
Gui, Add, Picture, x20 y230 +BackgroundTrans vp2 gClick4 hidden, %A_WorkingDir%\icons\EK.gif
Gui, Add, Text, x20 y270 +BackgroundTrans, EK

Gui, Add, Picture, x80 y110 +BackgroundTrans vd1 gClick3, %A_WorkingDir%\icons\manaoff.png
Gui, Add, Picture, x80 y110 +BackgroundTrans vd2 gClick3 hidden, %A_WorkingDir%\icons\mana.png
Gui, Add, Text, x80 y145 +BackgroundTrans, Mana


Gui, Add, Picture, x80 y50 +BackgroundTrans vr1 gClick5, %A_WorkingDir%\icons\eringoff.png
Gui, Add, Picture, x80 y50 +BackgroundTrans vr2 gClick5 hidden, %A_WorkingDir%\icons\ering.png
Gui, Add, Text, x80 y85 +BackgroundTrans, Low HP


Gui, Add, Picture, x80 y170 +BackgroundTrans vt1 gClick6, %A_WorkingDir%\icons\healfriendoff.png
Gui, Add, Picture, x80 y170 +BackgroundTrans vt2 gClick6 hidden, %A_WorkingDir%\icons\healfriend.png
Gui, Add, Text, x80 y207 +BackgroundTrans, PgDn


Gui, Add, Picture, x80 y230 +BackgroundTrans vk1 gClick8, %A_WorkingDir%\icons\hasteoff.gif
Gui, Add, Picture, x80 y230 +BackgroundTrans vk2 gClick8 hidden, %A_WorkingDir%\icons\haste.gif
Gui, Add, Text, x70 y270 +BackgroundTrans, Auto Haste

Gui, Add, Picture, x27 y300 +BackgroundTrans gClick7, %A_WorkingDir%\icons\hotkeybtn.png


Gui, Show, x1415 y23 w150 h340, Master


ci := 1, xi := 1, yi := 1, pi := 1, di := 1, ri := 1, ti := 1, ki := 1,
Return

uiMove:
PostMessage, 0xA1, 2,,, A 
Return





DELETE::
Click: 
DetectHiddenWindows,on
ClickOn := ClickOn<1 ? 1:0
	GuiControl Hide, c%ci%
	ci := 3 - ci
	GuiControl Show, c%ci%
	If clickOn = 1
	
	{
	Run,%A_WorkingDir%\ssa.ahk
	}
Else
	{
	SetTitleMatchMode,2
	winkill, SSA.ahk
	}
Return



END::
Click1:
DetectHiddenWindows,on
ClickOn1 := ClickOn1<1 ? 1:0
	GuiControl Hide, x%xi%
	xi := 3 - xi
	GuiControl Show, x%xi%
		If clickOn1 = 1
	
	{
	Run,%A_WorkingDir%\MightRing.ahk
	}	
Else
	{
	SetTitleMatchMode,2
	winkill, MightRing.ahk
	}
	

	
	
		
Return



Home::
Click2:
DetectHiddenWindows,on
ClickOn2 := ClickOn2<1 ? 1:0

	GuiControl Hide, y%yi%
	yi := 3 - yi
	GuiControl Show, y%yi%
		If clickOn2 = 1
	
	{
	Run,%A_WorkingDir%\Heal2.ahk
	sleep 400
send, {PgUp}
	}
Else
	{
send, {PgUp}
sleep 400
Run,%A_WorkingDir%\Heal2.ahk
	}
	
Return


Click3:
DetectHiddenWindows,on
ClickOn3 := ClickOn3<1 ? 1:0

	GuiControl Hide, d%di%
	di := 3 - di
	GuiControl Show, d%di%
		If clickOn3 = 1
	
	{
	Run,%A_WorkingDir%\mana.ahk
	}
Else
	{
	SetTitleMatchMode,2
	winkill, mana.ahk
	}
	
	
	
Return


Click4:
DetectHiddenWindows,on
ClickOn4 := ClickOn4<1 ? 1:0

	GuiControl Hide, p%pi%
	pi := 3 - pi
	GuiControl Show, p%pi%
		If clickOn4 = 1
	
	{
	Run,%A_WorkingDir%\ek.ahk
	}
Else
	{
	SetTitleMatchMode,2
	winkill, ek.ahk
	}
	
return


Click5:
DetectHiddenWindows,on
ClickOn5 := ClickOn5<1 ? 1:0

	GuiControl Hide, r%ri%
	ri := 3 - ri
	GuiControl Show, r%ri%
	
	If clickOn5 = 1
	
	{
	Run,%A_WorkingDir%\aering.AHK
	}
Else
	{
	SetTitleMatchMode,2
	winkill, aering.AHK
	winkill, utamo.ahk
	}
	
return

PgDn::	
Click6:
DetectHiddenWindows,on
ClickOn6 := ClickOn6<1 ? 1:0

	GuiControl Hide, t%ti%
	ti := 3 - ti
	GuiControl Show, t%ti%
		If clickOn6 = 1
	
	{
	Run,%A_WorkingDir%\Siospam-backup.ahk
	Sleep 400
	send, {numlock}
	}	
Else
	{
	send, {numlock}
		Sleep 400
	winkill, Siospam-backup.ahkp
	}

Return

Click7:
Run,%A_WorkingDir%\stronghks.ahk

return
	
Click8:
DetectHiddenWindows,on
ClickOn8 := ClickOn8<1 ? 1:0

	GuiControl Hide, k%ki%
	ki := 3 - ki
	GuiControl Show, k%ki%
		If clickOn8 = 1
	
	{
	Run,%A_WorkingDir%\Utani.ahk
	}	
Else
	{
	SetTitleMatchMode,2
	winkill, Utani.ahk
	}
return




close:
	SetTitleMatchMode,2
	winkill, Utani.ahk
	winkill, SioSpam.ahk
	winkill, aering.AHK
	winkill, utamo.ahk
	winkill, ek.ahk
	winkill, mana.ahk
	winkill, MightRing.ahk
	winkill, SSA.ahk
	winkill, heal2.ahk
	Exitapp
GuiEscape:
	SetTitleMatchMode,2
	winkill, Utani.ahk
	winkill, SioSpam.ahk
	winkill, aering.AHK
	winkill, utamo.ahk
	winkill, ek.ahk
	winkill, mana.ahk
	winkill, MightRing.ahk
	winkill, SSA.ahk
	winkill, heal2.ahk
	Exitapp

ExitApp

;---- End autoexecute secsion ----;

CheckAuth:
   IniRead User, %IniFile%, Registration, User
   IniRead Email,%IniFile%, Registration, Email
   IniRead Code, %IniFile%, Registration, UnlockCode
   PCdata = %COMPUTERNAME%%HOMEPATH%%USERNAME%%PROCESSOR_ARCHITECTURE%%PROCESSOR_IDENTIFIER%
   PCdata = %PCdata%%PROCESSOR_LEVEL%%PROCESSOR_REVISION%%A_OSType%%A_OSVersion%%Language%
   Fingerprint := XCBC(Hex(PCdata,StrLen(PCdata)), 0,0, 0,0,0,0, 1,1, 2,2)
   Together = %User%%Email%%Fingerprint%
   AuthData := XCBC(Hex(Together,StrLen(Together)), 0,0, k0,k1,k2,k3, l0,l1, m0,m1)
   If (User="Error" || Email="Error" || Code <> AuthData)
   {
      S =
      (  LTrim
         To: Registration@MyOwn.com
         Username = <enter your full name here>
         Your email address = <where you want the unlock code sent>
         PC Fingerprint = %Fingerprint%
      )
      ClipBoard = %S%
      MsgBox Please Register! Email the following information`n`n%S%`n`n(it has been copied to the ClipBoard)
      ExitApp
   }
Return

;---- Crypto functions ----;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; TEA cipher ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Block encryption with the TEA cipher
; [y,z] = 64-bit I/0 block
; [k0,k1,k2,k3] = 128-bit key
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TEA(ByRef y,ByRef z, k0,k1,k2,k3)
{                                   ; need  SetFormat Integer, D
   s = 0
   d = 0x9E3779B9
   Loop 32                          ; could be reduced to 8 for speed
   {
      k := "k" . s & 3              ; indexing the key
      y := 0xFFFFFFFF & (y + ((z << 4 ^ z >> 5) + z  ^  s + %k%))
      s := 0xFFFFFFFF & (s + d)  ; simulate 32 bit operations
      k := "k" . s >> 11 & 3
      z := 0xFFFFFFFF & (z + ((y << 4 ^ y >> 5) + y  ^  s + %k%))
   }
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; XCBC-MAC ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; x  = long hex string input
; [u,v] = 64-bit initial value (0,0)
; [k0,k1,k2,k3] = 128-bit key
; [l0,l1] = 64-bit key for not padded last block
; [m0,m1] = 64-bit key for padded last block
; Return 16 hex digits (64 bits) digest
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

XCBC(x, u,v, k0,k1,k2,k3, l0,l1, m0,m1)
{
   Loop % Ceil(StrLen(x)/16)-1   ; full length intermediate message blocks
      XCBCstep(u, v, x, k0,k1,k2,k3)

   If (StrLen(x) = 16)              ; full length last message block
   {
      u := u ^ l0                   ; l-key modifies last state
      v := v ^ l1
      XCBCstep(u, v, x, k0,k1,k2,k3)
   }
   Else {                           ; padded last message block
      u := u ^ m0                   ; m-key modifies last state
      v := v ^ m1
      x = %x%100000000000000
      XCBCstep(u, v, x, k0,k1,k2,k3)
   }
   Return Hex8(u) . Hex8(v)         ; 16 hex digits returned
}

XCBCstep(ByRef u, ByRef v, ByRef x, k0,k1,k2,k3)
{
   StringLeft  p, x, 8              ; Msg blocks
   StringMid   q, x, 9, 8
   StringTrimLeft x, x, 16
   p = 0x%p%
   q = 0x%q%
   u := u ^ p
   v := v ^ q
   TEA(u,v,k0,k1,k2,k3)
}

Hex8(i)                             ; 32-bit integer -> 8 hex digits
{
   format = %A_FormatInteger%       ; save original integer format
   SetFormat Integer, Hex
   i += 0x100000000                 ; convert to hex, set MS bit
   StringTrimLeft i, i, 3           ; remove leading 0x1
   SetFormat Integer, %format%      ; restore original format
   Return i
}

Hex(ByRef b, n=0)                   ; n bytes data -> stream of 2-digit hex
{                                   ; n = 0: all (SetCapacity can be larger than used!)
   format = %A_FormatInteger%       ; save original integer format
   SetFormat Integer, Hex           ; for converting bytes to hex

   m := VarSetCapacity(b)
   If (n < 1 or n > m)
       n := m
   Loop %n%
   {
      x := 256 + *(&b+A_Index-1)    ; get byte in hex, set 17th bit
      StringTrimLeft x, x, 3        ; remove 0x1
      h = %h%%x%
   }
   SetFormat Integer, %format%      ; restore original format
   Return h
}