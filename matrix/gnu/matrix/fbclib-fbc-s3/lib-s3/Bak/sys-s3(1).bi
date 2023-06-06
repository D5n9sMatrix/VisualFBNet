#Lang "fblite"
#Ifdef __FB_LANG__
#Define  __compiler__column__ Chr ( __FB_LANG__  ) As String
Public Sub Column ( ByRef Cured As Single, ByRef  CuredTypes As Single, ByRef  CuredEvent As Single )

' handle Column
Cured = 100
CuredTypes = 200
CuredEvent = 300

If Cured Then
	Dim Orange As Double
Else
	Orange ( 0 To 100 )
EndIf

If CuredTypes Then
	Dim OrangeTypes As Double
Else
	OrangeTypes ( 0 To 200 )
EndIf

If CuredEvent Then
	Dim OrangeEvent As Double
Else
	OrangeEvent ( 0 To 300 )
EndIf
	
End Sub  
#EndIf 
