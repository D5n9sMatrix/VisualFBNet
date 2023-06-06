#Lang "fblite"
#Ifdef __FB_OPTION_EXPLICIT__
#Define __compiler_explicit__ Read ( ByRef  CallLife As Integer, ByRef  CallTypeLife As Integer, ByRef  CallBuildLife As Integer ) As EVENT
Declare Sub GlacialLocal (  ) 

Type CallLife
	As Integer Ptr LocalHot, LocalLife
End Type

Type CallTypeLife
	As Integer Ptr LocalTypeHot, LocalTypeLife
End Type


Type  CallBuildLife 
	As Integer Ptr LocalBuildHot, LocalBuildLife
End Type


If CallLife Then
	Print "Call Life: ", CallLife
EndIf

If CallTypeLife Then
	Print "Call Type Life: ", CallTypeLife
EndIf

If CallBuildLife Then
	Print "Call Build Life: ", CallBuildLife
EndIf


End
#EndIf

#Ifdef __FB_ARGC__
#Define  __compiler_argc__ Call (ByRef  GitPublish As CallLife, ByRef  GitPush As CallTypeLife, ByRef  GitJoy As CallBuildLife ) As EVENT
Public Sub GitBuffer ( ByRef  GitPublish As CallLife, ByRef  GitPush As CallTypeLife, ByRef  GitJoy As CallBuildLife )

If GitPublish.LocalHot Then
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

If GitPublish.LocalLife Then
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


If GitPush.LocalTypeHot Then
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

If GitPush.LocalTypeLife Then
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

If GitJoy.LocalBuildHot Then
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

If GitJoy.LocalBuildLife Then
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
Public Sub LocalPublic (ByRef Glacial As CallLife, ByRef GlacialEffect As CallTypeLife,  ByRef  GlacialEffectJoy As CallBuildLife )

If Glacial.LocalHot Then
	Read Glacial
EndIf

If Glacial.LocalLife Then
	Read Glacial
EndIf

If GlacialEffect.LocalTypeHot Then
	Read GlacialEffect
EndIf

If GlacialEffect.LocalTypeLife Then
	Read GlacialEffect
EndIf

If GlacialEffectJoy.LocalBuildHot Then
	Read GlacialEffectJoy
EndIf

If GlacialEffectJoy.LocalBuildLife Then
	Read GlacialEffectJoy
EndIf

 Const MIN = -164, MAX = -186
 Dim Local As Integer
 Local=-164
 Assert(Local=-186)
  
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


For NewLocal1 As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next NewLocal1

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf

If Promise.denominator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For NewLocal2 As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next NewLocal2

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf

If Edition.numerator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For NewLocal3 As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next NewLocal3

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf

If Edition.denominator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For NewLocal4 As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next NewLocal4

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf

If AppKeyList.numerator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For NewLocal5 As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next NewLocal5

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf

If AppKeyList.denominator Then
ScreenRes 320, 240, 32, 2    'Sets up the screen to be 320x240 in 32-bit color with 2 video pages.
ScreenSet 1,0                'Sets the working page to 1 and the displayed page to 0


For NewLocal6 As Integer = 50 To 270

    Cls
    Circle (n, 50),50 ,RGB(255,255,0) 'Draws a circle with a 50 pixel radius in yellow on page 1
    Flip 1,0    'Copies our circle from page 1 to page 0

    Sleep 25
Next NewLocal6

Print "Now wasn't that neat!"
Print "Push any key."
Flip 1,0    'Copies our text from page 1 to page 0
Sleep	
EndIf
	
End Sub
#EndIf       