#Ifdef __FB_ARGC__
#Define __compiler_argc__ Read  ( ByRef  __FB_ARGC__  As ACCESS_ALLOWED_ACE ) As ACCESS_ALLOWED_ACE
Declare Function  BoolFire ( ByRef  Http As ACCESS_ALLOWED_ACE, ByRef  Https As ACCESS_ALLOWED_ACE, ByRef  URL As ACCESS_ALLOWED_ACE ) As ACCESS_ALLOWED_ACE

Enum Http
SiteBusiness
End Enum

Enum Https
SitePortal
End Enum

Enum URL
SiteObject
End Enum


If Http.SiteBusiness Then
	Print "Http site business", Http 
EndIf

If Https.SitePortal Then
	Print "Http site portal", Https 
EndIf


If URL.SiteObject Then
	Print "URL site object", URL 
EndIf


Dim h As Double
Dim o As Double
Input "Please Http: ", h
Input "Please Https: ", h
Input "Please URL", o
Print ""
Print "Site"; Asin ( o / h )
Sleep

End Function
#EndIf
