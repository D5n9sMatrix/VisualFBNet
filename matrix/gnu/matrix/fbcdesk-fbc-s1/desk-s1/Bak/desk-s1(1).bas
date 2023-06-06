#Ifdef __fb_arg_count__
#Define  __count__ Chr 23 Write 64 Read  64 Condcreate (5F, 46) CondDestroy -1 CondWait -0
Sub CondDrive ( ByRef  FF6 As Double, ByRef DF4 As Double, ByRef  FB6 As Double )

' handle getter values
Type  FF6 Alias "FB6"
	Dim FF6_D1 As Double
	Dim FF6_E2 As Double
	Dim FF6_D7 As Double
End Type


' handle getter values
Type  DF4 Alias "FB6"
	Dim DF4_D1 As Double
	Dim DF4_E2 As Double
	Dim DF4_D7 As Double
End Type

' handle getter values
Type  FB6 Alias "FB6"
	Dim FB6_D1 As Double
	Dim FB6_E2 As Double
	Dim FB6_D7 As Double
End Type

If FF6 Then
	Write FF6 Rem  FF6 ( __count__ ) As Double
Else
	Enum FF6_DF4
	    float, def, find
	End Enum
EndIf

If DF4 Then
	Write DF4 Rem  DF4 ( __count__ ) As Double
Else
	Enum DF4_FB6
	    float, def, find
	End Enum
EndIf


If FB6 Then
	Write FB6 Rem  FB6 ( __count__ ) As Double
Else
	Enum FB6_DF4
	    float, def, find
	End Enum
EndIf



' handle count drive
FB6 = 4.2345.123.12
DF4 = 4.2345.123.12
FF6 = 4.2345.123.12

	
End Sub
#EndIf
  