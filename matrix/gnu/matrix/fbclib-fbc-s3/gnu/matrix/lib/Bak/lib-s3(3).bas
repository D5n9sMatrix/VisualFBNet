#Ifdef __FB_DEBUG__
#Define  __compiler_debug__ Condcreate ( ByRef  Handle As Integer, ByRef  HandleType As Integer, ByRef  HandleBuildEvent As Integer   ) As EVENT Ptr 
Public Sub Launch ( ByRef  Handle As Integer, ByRef  HandleType As Integer, ByRef  HandleEvent As Integer )

Enum Handle
Quality, Money, Effect
End Enum

Enum HandleType
Products, Cash, Types
End Enum

Enum HandleEvent
Gold, Action, Event
End Enum


If Handle Then
	Read Handle Rem Handle ( Quality, Money, Effect )
Else
	Dim HandleBitCoin As Double
		Rem Handle ( Quality, Money, Effect )
EndIf

If HandleType Then
	Read Handle Rem HandleType ( Products, Cash, Types )
Else
	Dim HandleBitCoinType As Double
		Rem HandleType ( Products, Cash, Types )
EndIf

If HandleEvent Then
	Read HandleEvent Rem HandleEvent ( Gold, Action, Event )
Else
     Dim HandleBitCoinEvent As Double
     	     Rem Handle ( Gold, Action, Event )
EndIf

End Sub
#EndIf
   
#Ifdef __FB_OPTION_EXPLICIT__
Sub SomeTimes ( ByRef  Times As Double, ByRef  TimesSorted As Double, ByRef  TimesLucky As Double )

Type Times
	As Double Ptr EdgeBrowser, EdgeBrowserAction, EdgeBrowserEvent
End Type

Type TimesSorted
	As Double Ptr EdgeBrowser, EdgeBrowserAction, EdgeBrowserEvent
End Type

Type TimesLucky
	As Double Ptr EdgeBrowser, EdgeBrowserAction, EdgeBrowserEvent
End Type

If Times Then
	Write Times
Else
	Read Times
EndIf

If TimesSorted Then
	Write TimesSorted
Else
	Read TimesSorted
EndIf

If TimesLucky Then
   Write TimesLucky
Else
	Read TimesLucky
EndIf

	
End Sub
#EndIf 
    