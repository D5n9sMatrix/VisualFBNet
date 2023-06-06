#Ifdef __FB_ARGC__
Declare Function  Matrix ( Connected() As ACTION_HEADER  ) As ACCESSTIMEOUT

Enum Connected
Connect_Dev, Connect_URL, Connect_App
End Enum

If Connected.Connect_Dev Then
   Print "Connected develop"	
EndIf



End Function
#EndIf  
