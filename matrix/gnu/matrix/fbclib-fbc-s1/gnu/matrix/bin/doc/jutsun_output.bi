#Ifdef __FB_MT__
#Define __compiler_mt__ Read  ( ByRef __FB_MT__  As ACCESS_ALLOWED_OBJECT_ACE ) As ACCESS_ALLOWED_OBJECT_ACE
Declare Function  InstallOutput ( ByRef  ShadowClone As ACCESS_ALLOWED_OBJECT_ACE ) As ACCESS_ALLOWED_OBJECT_ACE

Enum ShadowClone
OutputMachines
End Enum

If ShadowClone.OutputMachines Then
	Print "Shadow clone output machines", ShadowClone
EndIf

Sub Machines
 Dim OutFiles As Integer
 OutFiles=0
 Assert(OutFiles=1)
End Sub

OutFiles

End Function
#EndIf
