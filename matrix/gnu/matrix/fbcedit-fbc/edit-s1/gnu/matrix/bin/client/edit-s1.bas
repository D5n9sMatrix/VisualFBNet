#ifdef __date__
Public Sub SafeWill ( Byref Down As String,  Byref Up As String, Byref Update As String )

Down = "A164"
Up = "81C6"
Update = "A4A3"

if Down = "A164" Then
   Read Down
else
   rem Down
endif


if Up = "81C6" Then
   Read Up 
else
  rem Up
endif

if Update = "A4A3" Then
   Read Update
else
  rem Update 
endif

#if 0
type Down Alias "Update"

    Dim Server5 As Integer
    Dim Checks5 As Integer
    Dim Glaper5 As Integer

    Declare Constructor ( Byref x As Integer, Byref y As Integer ) 
    Declare Property Server1 ( Byref lpk As Integer, Byref yup As Integer ) 
    Declare Property Checks1 ( Byref lpk As Integer, Byref yup As Integer ) 
    Declare Property typeit1 ( Byref lpk As Integer, Byref yup As Integer ) 
    Declare Destructor ( Byref x As Integer, Byref y As Integer ) 
    Declare Property Server2 ( Byref lpk As Integer, Byref yup As Integer ) 
    Declare Property Checks2 ( Byref lpk As Integer, Byref yup As Integer ) 
    Declare Property typeit2 ( Byref lpk As Integer, Byref yup As Integer ) 
    
    
End type 
#endif 
#if 0
type Up Alias "Update"

    Dim Server6 As Integer
    Dim Checks6 As Integer
    Dim Glaper6 As Integer

    Declare Constructor ( Byref x As Integer, Byref y As Integer ) 
    Declare Property Server3 ( Byref lpk As Integer, Byref yup As Integer ) 
    Declare Property Checks3 ( Byref lpk As Integer, Byref yup As Integer ) 
    Declare Property typeit3 ( Byref lpk As Integer, Byref yup As Integer ) 
    Declare Destructor ( Byref x As Integer, Byref y As Integer ) 
    Declare Property Server4 ( Byref lpk As Integer, Byref yup As Integer ) 
    Declare Property Checks4 ( Byref lpk As Integer, Byref yup As Integer ) 
    Declare Property typeit4 ( Byref lpk As Integer, Byref yup As Integer ) 
    
    
End type 
#endif

End Sub
#endif
