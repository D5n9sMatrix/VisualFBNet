#Ifdef __FB_CYGWIN__
#Define  __compiler_cygwin__ Chr ( __FB_CYGWIN__  ) As String
Public Sub Cygwin ( ByRef  Action As Integer, ByRef  Types As Integer, ByRef  Event As String )

' happy way
Action = 80
Types = 27
Event = "Hi Cat"

If Action Then
	Write Action
Else
	For i As Integer = 0 To 80
		Print "Action way", i & Action 
	Next i
EndIf

If Types Then
	Write Types
Else
	For j As Integer = 0 To 27
		Print "Action Types", j & Action 
	Next j
	
EndIf

If Event Then
	Write Event
Else
	For jj As Integer = 0 To 2780
		Print "Action Types", jj & Action 
	Next jj	
EndIf
	
End Sub  
#EndIf 

