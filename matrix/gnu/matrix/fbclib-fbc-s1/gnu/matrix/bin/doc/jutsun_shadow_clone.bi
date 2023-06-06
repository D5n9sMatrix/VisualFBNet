#Ifdef __FB_ARGC__
#Define __compiler_argc__ Read ( ByRef  __FB_ARGC__  As ABC ) As ABC
Declare Function MatrixShadowClone ( ByRef JShadowClone As ABC ) As ABC

Type JShadowClone
	Dim Shadow As ABC
	Dim Clones As ABC
	Dim ITems As ABC
End Type

If JShadowClone Then
	Print "Jutsun Shadow Clone", ABC
EndIf

For  i As Integer = 0 To 110
	For j As Integer = 0 To 210
		Print Abs(i * j )
	Next j
Next i

#include once "fbc-int/array.bi"
Using FB

Dim As LongInt array(4, 5)
Dim As UInteger array_length

array_length = ArrayLen(array())
Print array_length                '' 30


End Function
#EndIf 