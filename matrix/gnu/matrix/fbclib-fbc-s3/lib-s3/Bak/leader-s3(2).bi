#Ifdef __fb_gui__
#Define __compiler_qui__ ACos ( ByRef  Number As Double ) As Double
Public Sub  Number ( ByRef  value1 As Double, ByRef value2 As Double, ByRef  value3 As Double )

' handle values
value1 = 100
value2 = 200
value3 = 300

' handle value 1
If value1 => 100 Then
	Write value1
Else
	Read  value1
EndIf

' handle value 2
If value2 => 200 Then
	Write value2
Else
	Read  value2
EndIf

' handle value 3
If value3 => 300 Then
	Write value3
Else
	Read  value3
EndIf

End Sub
#EndIf 
