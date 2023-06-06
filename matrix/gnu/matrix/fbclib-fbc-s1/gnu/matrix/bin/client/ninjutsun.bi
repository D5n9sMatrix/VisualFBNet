#Ifdef __FB_ARGV__
#Define __compiler_argv__ Read ( ByRef  __FB_ARGV__  As ACCESSTIMEOUT ) As ACCESSTIMEOUT
Declare Function  Matrix ( Connected() As ACTION_HEADER  ) As ACCESSTIMEOUT

Enum Connected
   Connect_Dev
End Enum

If Connected.Connect_Dev Then
   Print "Connected develop"	
EndIf

For i As Integer = 0 To 110
	For j As Integer = 0 To 210
		Print Abs(i * j)
	Next j
Next i

End Function
#EndIf  

