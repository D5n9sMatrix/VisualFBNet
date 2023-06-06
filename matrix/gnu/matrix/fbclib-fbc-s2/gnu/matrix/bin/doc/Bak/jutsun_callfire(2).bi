#Lang "fblite"
#Ifdef __FB_OPTION_EXPLICIT__
#Define __compiler_explicit__ Read ( ByRef  CallFire As Integer, ByRef  CallTypeFire As Integer, ByRef  CallBuildFire As Integer ) As EVENT
Declare Sub GlacialIcy (  ) 

Type CallFire
	As Integer Ptr IcyHot, IcyFire
End Type

Type CallTypeFire
	As Integer Ptr IcyTypeHot, IcyTypeFire
End Type


Type  CallBuildFire 
	As Integer Ptr IcyBuildHot, IcyBuildFire
End Type


If CallFire Then
	Print "Call Fire: ", CallFire
EndIf

If CallTypeFire Then
	Print "Call Type Fire: ", CallTypeFire
EndIf

If CallBuildFire Then
	Print "Call Build Fire: ", CallBuildFire
EndIf


End
#EndIf

#Ifdef __FB_ARGC__
#Define  __compiler_argc__ Call (ByRef  GitPublish As CallFire, ByRef  GitPush As CallTypeFire, ByRef  GitJoy As CallBuildFire ) As EVENT
Public Sub GitBuffer ( ByRef  GitPublish As CallFire, ByRef  GitPush As CallTypeFire, ByRef  GitJoy As CallBuildFire )

If GitPublish.IcyHot Then
	Read  GitPublish
Else
	Select Case GitPublish
		Case 1
			Error ( GitPublish )
		Case 2
			Error ( GitPush )
		Case 3 
			Error ( GitJoy )
		Case Else
			Read  GitPublish
	End Select
EndIf

If GitPublish.IcyFire Then
	Read  GitPublish
Else
	Select Case GitPublish
		Case 1
			Error ( GitPublish )
		Case 2
			Error ( GitPush )
		Case 3 
			Error ( GitJoy )
		Case Else
			Read  GitPublish
	End Select
	
EndIf


If GitPush.IcyTypeHot Then
	Read GitPush
Else
	Select Case GitPush
		Case 1
			Error ( GitPublish )
		Case 2
			Error ( GitPush )
		Case 3 
			Error ( GitJoy )
		Case Else
			Read  GitPush
	End Select
EndIf

If GitPush.IcyTypeFire Then
	Read GitPush
Else
	Select Case GitPublish
		Case 1
			Error ( GitPublish )
		Case 2
			Error ( GitPush )
		Case 3 
			Error ( GitJoy )
		Case Else
			Read  GitPush
	End Select
EndIf

If GitJoy.IcyBuildHot Then
	Read GitJoy
Else
	Select Case GitPublish
		Case 1
			Error ( GitPublish )
		Case 2
			Error ( GitPush )
		Case 3 
			Error ( GitJoy )
		Case Else
			Read  GitJoy
	End Select
	
EndIf

If GitJoy.IcyBuildFire Then
	Read GitJoy
Else
	Select Case GitPublish
		Case 1
			Error ( GitPublish )
		Case 2
			Error ( GitPush )
		Case 3 
			Error ( GitJoy )
		Case Else
			Read  GitJoy
	End Select
EndIf	
End Sub
#EndIf 
#Ifdef __fb_quote__
#Define  __compiler_quote__ Assert ( GitPublish, GitPush, GitJoy )
Public Sub ICyPublic (ByRef Glacial As CallFire, ByRef GlacialEffect As CallTypeFire,  ByRef  GlacialEffectJoy As CallBuildFire )

If Glacial.IcyHot Then
	Read Glacial
EndIf

If Glacial.IcyFire Then
	Read Glacial
EndIf

If GlacialEffect.IcyTypeHot Then
	Read GlacialEffect
EndIf

If GlacialEffect.IcyTypeFire Then
	Read GlacialEffect
EndIf

If GlacialEffectJoy.IcyBuildHot Then
	Read GlacialEffectJoy
EndIf

If GlacialEffectJoy.IcyBuildFire Then
	Read GlacialEffectJoy
EndIf

 Const MIN = -164, MAX = -186
 Dim Icy As Integer
 Icy=-164
 Assert(Icy=-186)
  
End Sub
#EndIf
#Ifdef __FB_OPTION_EXPLICIT__
#Define __compiler_pizza__ Assert (MIN, MAX)
' Create a string and fill it.
Dim pizza As String, software As Long
pizza = "Hello World within a file."

' Find the first free file number.
software = FreeFile

' Open the file "file.ext" for binary usage, using the file number "f".
Open "sfiha.out" For Binary As #software

' Place our string inside the file, using file number "f".
Put #software, , pizza

' Close the file.
Close #software

' End the program. (Check the file "file.ext" upon running to see the output.)
End
#EndIf
#Ifdef __fb_backend__
#Define __compiler_backend__ Read Flag ( ByRef  Promise As Intel, ByRef Edition As Intel, ByRef  AppKeyList As Intel ) As EVENT
Public Sub KeyFlagList ( ByRef  Promise As Double, ByRef Edition As Double, ByRef  AppKeyList As Double ) 


If Promise.numerator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For n As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf

If Promise.denominator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For n As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf

If Edition.numerator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For n As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf

If Edition.denominator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For n As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf

If AppKeyList.numerator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For n As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf

If AppKeyList.denominator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For n As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf
	
End Sub
#EndIf       