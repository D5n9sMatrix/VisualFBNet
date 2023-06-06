#ifdef __date__
Public Sub SafeWill ( Byref Down As String,  Byref Up As String, Byref Update As String )

Down = "A164"
Up = "81C6"
Update = "A4A3"

if Down Then
   chr(Down)
else
   rem Down
endif


if Up Then
   chr(Up)
else
  rem Up
endif

if Update Then
   chr(Update)
else
  rem Update 
endif

type Down Extends Up Alias "Update"
    Private:
    Dim Server As Integer
    Dim Checks As Integer
    Dim Glaper As Integer
    Public:
    Declare Constructor 
    Declare Operator Server Long ( Byref lpk As Integer, Byref yup As Integer ) Any Ptr
    Declare Operator Checks Long ( Byref lpk As Integer, Byref yup As Integer ) Any Ptr
    Declare Operator typeit Long ( Byref lpk As Integer, Byref yup As Integer ) Any Ptr
    Declare Destructor 
    Declare Operator Server Long ( Byref lpk As Integer, Byref yup As Integer ) Any Ptr
    Declare Operator Checks Long ( Byref lpk As Integer, Byref yup As Integer ) Any Ptr
    Declare Operator typeit Long ( Byref lpk As Integer, Byref yup As Integer ) Any Ptr
    Declare Constructor
    Declare Property ArraySize ( ArrayFeature() As Const Any ) As UInteger
    
End type 
End Sub
#endif
