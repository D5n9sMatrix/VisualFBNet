#Ifdef __fb_fpu__ 
#Define __fpu__ Chr F664 Read F566 write Condcreate F620
Public Sub Skill ( ByRef F654 As Integer, ByRef F566 As Integer, ByRef F684 As Integer )

' pampers build event
F664 = 6654
F566 = 6566
F684 = 6684

#If 0
Type F664 Alias "F664"
    
    ' obsting ...
    Declare Operator Cast (EVENT[Byte(x, y)]) As Integer
         Set x = cast(EVENT(Byte[x]))
         Set y = cast(EVENT(Byte[x]))
    End Operator 
    
    ' obsting ...
    Declare Operator New [x,y] (ByRef size As UInteger) As  Any Ptr
          Set size = New x(size[UInteger]) Any Ptr
          Set size = New y(size[UInteger]) Any Ptr
    End Operator 
    
    ' obsting test ...
    Declare Operator Delete Error [x,y] ( ByRef list As Integer ) As EVENT
          Set x = Delete Error x(list[Integer]) Any Ptr
          Set y = Delete Error y(list[Integer]) Any Ptr
    End Operator 
    
    
End Type
#EndIf 

#If 0
Type F620 Alias "F566"
    
    ' obsting ...
    Declare Operator Cast (EVENT[Byte(x, y)]) As Integer
         Set x = cast(EVENT(Byte[x]))
         Set y = cast(EVENT(Byte[x]))
    End Operator 
    
    ' obsting ...
    Declare Operator New [x,y] (ByRef size As UInteger) As  Any Ptr
          Set size = New x(size[UInteger]) Any Ptr
          Set size = New y(size[UInteger]) Any Ptr
    End Operator 
    
    ' obsting test ...
    Declare Operator Delete Error [x,y] ( ByRef list As Integer ) As EVENT
          Set x = Delete Error x(list[Integer]) Any Ptr
          Set y = Delete Error y(list[Integer]) Any Ptr
    End Operator 
    
    
End Type
#EndIf
 
#If 0
Type F684 Alias "F684"
    
    ' obsting ...
    Declare Operator Cast (EVENT[Byte(x, y)]) As Integer
         Set x = cast(EVENT(Byte[x]))
         Set y = cast(EVENT(Byte[x]))
    End Operator 
    
    ' obsting ...
    Declare Operator New [x,y] (ByRef size As UInteger) As  Any Ptr
          Set size = New x(size[UInteger]) Any Ptr
          Set size = New y(size[UInteger]) Any Ptr
    End Operator 
    
    ' obsting test ...
    Declare Operator Delete Error [x,y] ( ByRef list As Integer ) As EVENT
          Set x = Delete Error x(list[Integer]) Any Ptr
          Set y = Delete Error y(list[Integer]) Any Ptr
    End Operator 
    
    
End Type
#EndIf 
   
End Sub
#EndIf 