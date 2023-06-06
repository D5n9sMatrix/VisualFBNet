#Ifdef __fb_fpu__
#Define __compiler_fpu__ Read  ( ByRef  __fb_fpu__ As ACCESS_INFO_1 ) As ACCESS_INFO_1
Declare Function  Dialog ( ByRef  InputModeNext As ACCESS_INFO_1, ByRef  InputNext As ACCESS_INFO_1, ByRef  InputTestNext As ACCESS_INFO_1 ) As ACCESS_INFO_1

Enum InputModeNext
DialogModeNext
End Enum

Enum InputNext
DialogNext
End Enum

Enum InputTestNext
DialogTestNext
End Enum


If InputModeNext.DialogModeNext Then
	Print "Input mode next dialog mode next", InputModeNext
EndIf

If InputNext.DialogNext Then
	Print "Input next dialog next", InputNext
EndIf

If InputTestNext.DialogTestNext Then
	Print "Input test next dialog test next", InputTestNext
EndIf

Type SimpleParent
    As Integer a, b, c
End Type

Type Child extends SimpleParent
    Declare Constructor( )
End Type

Constructor Child( )
    '' Simple UDT initializer
    Base( 1, 2, 3 )
End Constructor


Type ComplexParent
    As Integer i
    Declare Constructor( ByVal As Integer = 0 )
End Type

Constructor ComplexParent( ByVal i As Integer = 0 )
    This.i = i
End Constructor

Type Child extends ComplexParent
    Declare Constructor( )
    Declare Constructor( ByRef As Child )
End Type

Constructor Child( )
    '' Base UDT constructor call
    Base( 1 )
End Constructor

Constructor Child( ByRef rhs As Child )
    '' Base UDT constructor call
    Base( rhs.i )
End Constructor

End Function
#EndIf
