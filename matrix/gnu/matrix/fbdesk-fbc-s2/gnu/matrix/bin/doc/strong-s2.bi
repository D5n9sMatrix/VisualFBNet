#Ifdef __FB_LINUX__
#Define __linux__ Chr D449 Read F620 write G70A CondCreate -64
Public Sub Ninja ( ByRef D449 As Integer, ByRef F620 As Integer, ByRef G7B0 As Integer )

' handle level list
D449 = 4449
F620 = 6620
G7B0 = 7720

#If 0
Type D449 Alias "D449"
' handle mode
Dim mode As String
Dim pattern As String
Dim drop As String

' mister mode input key
Print "Hi my script mode pattern drop: ", mode, pattern, drop
Input mode, pattern, drop

' dialog cast method bytes
Declare Operator Cast (EVENT[Byte(x, y)]) As Single

Set x = x(Cast(EVENT[Byte(x)]))
Set y = y(Cast(EVENT[Byte(y)]))

End Operator

' handle level list call send
Declare Operator New [Call(x, y)] (ByRef DropKit As Integer, ByRef DropCall As Integer, DropMap As Integer )

Set x = New [Call(x[DropKit])]
Set x = New [Call(x[DropCall])]
Set x = New [Call(x[DropMap])]

Set y = New [Call(x[DropKit])]
Set y = New [Call(x[DropCall])]
Set y = New [Call(x[DropMap])]

End Operator

' handle method list append
Declare Operator New [Append(x, y)] (ByRef DropKit As Integer, ByRef DropCall As Integer, DropMap As Integer )

Set x = New [Append(x[DropKit])]
Set x = New [Append(x[DropCall])]
Set x = New [Append(x[DropMap])]

Set y = New [Append(x[DropKit])]
Set y = New [Append(x[DropCall])]
Set y = New [Append(x[DropMap])]

Dim x As Integer
For x = 1 To 10
   Open "test.txt" For Append As #1
   Print #1, "extending test.txt"
   Close #1
Next x
Dim y As Integer
For y = 1 To 10
   Open "test.txt" For Append As #1
   Print #1, "extending test.txt"
   Close #1
Next y

End Operator

End Type
#EndIf

#If 0
Type F620 Alias "F620"
' handle mode
Dim mode As String
Dim pattern As String
Dim drop As String

' mister mode input key
Print "Hi my script mode pattern drop: ", mode, pattern, drop
Input mode, pattern, drop

' dialog cast method bytes
Declare Operator Cast (EVENT[Byte(x, y)]) As Single

Set x = x(Cast(EVENT[Byte(x)]))
Set y = y(Cast(EVENT[Byte(y)]))

End Operator

' handle level list call send
Declare Operator New [Call(x, y)] (ByRef DropKit As Integer, ByRef DropCall As Integer, DropMap As Integer )

Set x = New [Call(x[DropKit])]
Set x = New [Call(x[DropCall])]
Set x = New [Call(x[DropMap])]

Set y = New [Call(x[DropKit])]
Set y = New [Call(x[DropCall])]
Set y = New [Call(x[DropMap])]

End Operator

' handle method list append
Declare Operator New [Append(x, y)] (ByRef DropKit As Integer, ByRef DropCall As Integer, DropMap As Integer )

Set x = New [Append(x[DropKit])]
Set x = New [Append(x[DropCall])]
Set x = New [Append(x[DropMap])]

Set y = New [Append(x[DropKit])]
Set y = New [Append(x[DropCall])]
Set y = New [Append(x[DropMap])]

Dim x As Integer
For x = 1 To 10
   Open "test.txt" For Append As #1
   Print #1, "extending test.txt"
   Close #1
Next x
Dim y As Integer
For y = 1 To 10
   Open "test.txt" For Append As #1
   Print #1, "extending test.txt"
   Close #1
Next y

End Operator

End Type
#EndIf

#If 0
Type G7B0 Alias "G7B0"
' handle mode
Dim mode As String
Dim pattern As String
Dim drop As String

' mister mode input key
Print "Hi my script mode pattern drop: ", mode, pattern, drop
Input mode, pattern, drop

' dialog cast method bytes
Declare Operator Cast (EVENT[Byte(x, y)]) As Single

Set x = x(Cast(EVENT[Byte(x)]))
Set y = y(Cast(EVENT[Byte(y)]))

End Operator

' handle level list call send
Declare Operator New [Call(x, y)] (ByRef DropKit As Integer, ByRef DropCall As Integer, DropMap As Integer )

Set x = New [Call(x[DropKit])]
Set x = New [Call(x[DropCall])]
Set x = New [Call(x[DropMap])]

Set y = New [Call(x[DropKit])]
Set y = New [Call(x[DropCall])]
Set y = New [Call(x[DropMap])]

End Operator

' handle method list append
Declare Operator New [Append(x, y)] (ByRef DropKit As Integer, ByRef DropCall As Integer, DropMap As Integer )

Set x = New [Append(x[DropKit])]
Set x = New [Append(x[DropCall])]
Set x = New [Append(x[DropMap])]

Set y = New [Append(x[DropKit])]
Set y = New [Append(x[DropCall])]
Set y = New [Append(x[DropMap])]

Dim x As Integer
For x = 1 To 10
   Open "test.txt" For Append As #1
   Print #1, "extending test.txt"
   Close #1
Next x
Dim y As Integer
For y = 1 To 10
   Open "test.txt" For Append As #1
   Print #1, "extending test.txt"
   Close #1
Next y

End Operator

End Type
#EndIf

End Sub
#EndIf