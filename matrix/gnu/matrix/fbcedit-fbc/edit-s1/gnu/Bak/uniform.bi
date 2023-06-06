#ifdef __date__
Public Sub AcceptActive ( Byref Down As Integer,  Byref Up As Integer, Byref Update As Integer )

Down = 2164
Up = 8136
Update = 9413

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
