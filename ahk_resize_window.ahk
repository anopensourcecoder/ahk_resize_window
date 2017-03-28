#NoEnv
#SingleInstance force
SetTitleMatchMode, 2

;Activate vmware screen or any other window and press CTRL+1 to move a program window to first window and maximize it.
^1::

	SysGet, Mon1, Monitor, 1

	MonLeft:=Mon1Left
	MonTop:=Mon1Top	
	MonRight:=Mon1Right
	MonBottom:=Mon1Bottom 




	;MsgBox, Left: %MonLeft% -- Top: %MonTop% -- Right: %MonRight% -- Bottom %MonBottom%.



	X1 		:= MonLeft
	Y1 		:= MonTop
	Width 	:= MonRight
	Height	:= MonBottom - 30
	
	WinGetTitle, Title, A
	WinRestore, %Title%
	;WinGetActiveTitle, %Title%
	WinMove, %Title%,, X1, Y1, Width, Height
	
	;WinGetClass, class, A
	
return


;Activate vmware screen or any other window and press CTRL+2 to move a program window to second window and maximize it.
^2::


	SysGet, MonitorName1, MonitorName, 1
	SysGet, MonitorName2, MonitorName, 2
	SysGet, MonitorName3, MonitorName, 3

	SysGet, Mon1, Monitor, 1
	SysGet, Mon2, Monitor, 2
	SysGet, Mon3, Monitor, 3

	if ( MonitorName1 ) {
		MonLeft:=Mon1Left
		MonTop:=Mon1Top	
		MonRight:=Mon1Right
		MonBottom:=Mon1Bottom 
	}

	if ( MonitorName2 ) {
		MonLeft:=Mon2Left
		MonTop:=Mon2Top	
		MonRight:=Mon2Right
		MonBottom:=Mon2Bottom 
	}



	;MsgBox, Left: %MonLeft% -- Top: %MonTop% -- Right: %MonRight% -- Bottom %MonBottom%.



	X1 		= -3
	Y1 		= -1440
	Width 	= 2563
	Height	:= 1440 + 1080 - 30
	
	WinGetTitle, Title, A
	WinRestore, %Title%
	;WinGetActiveTitle, %Title%
	WinMove, %Title%,, X1, Y1, Width, Height
	
	;WinGetClass, class, A
	
return


;Activate vmware screen or any other window and press CTRL+3 key to span it accros monitors
^3::


	SysGet, MonitorName1, MonitorName, 1
	SysGet, MonitorName2, MonitorName, 2
	SysGet, MonitorName3, MonitorName, 3

	SysGet, Mon1, Monitor, 1
	SysGet, Mon2, Monitor, 2
	SysGet, Mon3, Monitor, 3

	if ( MonitorName1 ) {
		MonLeft:=Mon1Left
		MonTop:=Mon1Top	
		MonRight:=Mon1Right
		MonBottom:=Mon1Bottom 
	}

	if ( MonitorName2 ) {
		MonLeft:=Mon2Left
		MonTop:=Mon2Top	
		MonRight:=Mon2Right
		MonBottom:=Mon2Bottom 
	}



	;MsgBox, Left: %MonLeft% -- Top: %MonTop% -- Right: %MonRight% -- Bottom %MonBottom%.



	X1 		= -3
	Y1 		= -1440
	Width 	= 2563
	Height	:= 1440 - 30
	
	WinGetTitle, Title, A
	WinRestore, %Title%
	;WinGetActiveTitle, %Title%
	WinMove, %Title%,, X1, Y1, Width, Height
	WinMaximize, %Title%
	;WinGetClass, class, A
	
return