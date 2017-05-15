{ ;==============================SETTINGS======================================
;(!=Alt)(^=Ctrl)(+=Shift)(#=Win)({}=literal)
#NoEnv                      ; Recommended for performance and compatibility with future AutoHotkey releases. 
SendMode Input              ; Recommended for new scripts due to its superior speed and reliability. 
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
SetCapsLockState, AlwaysOff 
!/::        ;Reload
    Reload
    Return
}

{ ;===========================Remapping keys====================================
Capslock::Shift
$`::Backspace
$+`::send {~}  ;shift tilda
}

{ ;==============================Shortcuts=======================================
^+g::          ;Search copied text in google
	{
	 Send, ^c
	 Sleep 50
	 Run, http://www.google.com/search?q=%clipboard%
	 Return
	}
}