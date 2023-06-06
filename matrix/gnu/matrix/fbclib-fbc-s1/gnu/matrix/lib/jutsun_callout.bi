#Ifdef __FB_MT__
#Define __compiler_mt__ Read  ( ByRef  __FB_MT__  As ACCESS_INFO_0 ) As ACCESS_INFO_0
Declare Function  CallOut ( ByRef  OutputMode As ACCESS_INFO_0,  ByRef  OutputFiles As ACCESS_INFO_0, ByRef  OutputTest As ACCESS_INFO_0 ) As ACCESS_INFO_0

Enum OutputMode
ModeRunPath
End Enum

Enum OutputFiles
FilesExist
End Enum

Enum OutputTest
Test
End Enum

If OutputMode.ModeRunPath Then
	Print "Output mode run path", OutputMode
EndIf

If OutputFiles.FilesExist Then
	Print "OutputFiles files exist", OutputFiles
EndIf

If OutputTest.Test Then
	Print "OutputTest test ", OutputTest
EndIf


'create an array with 100 elements
Dim array(0 To 99) As Integer

'clear the contents of the array to 0, starting with the first element
Clear array(0), , 100 * SizeOf(Integer)


'allocate 20 bytes of memory
Dim As Byte Ptr p = Allocate(20)

'set each of the first ten bytes to 0
Clear *p, 0, 10

'set each of the next ten bytes to 42
Clear p[10], 42, 10

'check the values of the allocated bytes
For i As Integer = 0 To 19
    Print i, p[i]
Next

'deallocate memory
Deallocate p

End Function
#EndIf

