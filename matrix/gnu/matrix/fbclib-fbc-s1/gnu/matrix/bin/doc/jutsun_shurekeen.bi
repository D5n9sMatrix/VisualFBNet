#Ifdef __FB_ARGC__
#Define __compiler_argc__ Read  ( ByRef  __FB_ARGC__  As ABCFLOAT ) As ABCFLOAT
Declare Function  Shurekeen ( ByRef  Sharegan As ABCFLOAT, ByRef  ControlView As ABCFLOAT, ByRef  StableSorted As ABCFLOAT ) As ABCFLOAT

Enum Sharegan
CallView
End Enum 

Enum ControlView
CallSunday
End Enum

Enum StableSorted
CallListed
End Enum


If Sharegan.CallView Then
	Print "Sharegan call view", Sharegan
EndIf

If ControlView.CallSunday Then
	Print "Control view call sunday", ControlView
EndIf

If StableSorted.CallListed Then
	Print "Stable Sorted call listed", StableSorted
EndIf
#include once "fbc-int/array.bi"
Using FB

Dim As LongInt array(4, 5)
Dim As UInteger array_size

array_size = ArraySize(array())
Print array_size                 '' 240

End Function 
#EndIf 