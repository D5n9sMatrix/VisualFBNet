#Ifdef __FB_MT__
#Define __compiler_mt__ Read  ( ByRef  Shurekeen As ACCESS_DENIED_OBJECT_ACE ) As ACCESS_DENIED_OBJECT_ACE
Declare Function Shurekeen ( ByRef CameCase As ACCESS_DENIED_OBJECT_ACE ) As ACCESS_DENIED_OBJECT_ACE

Dim choice As Integer

Input "Choose a number between 1 and 10: "; choice

Select Case As Const choice
Case 1
    Print "number is 1"
Case 2
    Print "number is 2"
Case 3, 4
    Print "number is 3 or 4"
Case 5 To 10
    Print "number is in the range of 5 to 10"
Case Else
    Print "number is outside the 1-10 range"
End Select

'' Compile with -lang qb or -lang fblite

#lang "fblite"

Declare Sub CallView(ByVal x As Integer, ByVal y As Integer)
Call CallView(35, 42)

Sub CallView(ByVal x As Integer, ByVal y As Integer)
Print x; y
End Sub

End Function
#EndIf 