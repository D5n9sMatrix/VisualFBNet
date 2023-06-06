#Ifdef __FB_LINUX__
#Define __compiler_linux__ Read  ( ByRef  __FB_LINUX__  As ACCESS_DENIED_ACE ) As ACCESS_DENIED_ACE
Declare Function  GroupStableSorted ( ByRef  InputStableSorted As ACCESS_DENIED_ACE ) As ACCESS_DENIED_ACE

Enum InputStableSorted
InputKey
End Enum

If InputStableSorted.InputKey Then
	Print "Input stable sorted key", InputStableSorted
EndIf

Sub WMachines
  Dim InputFile As Integer
  InputFile=0
  AssertWarn(InputFile=1)
End Sub

WMachines

End Function
#EndIf

