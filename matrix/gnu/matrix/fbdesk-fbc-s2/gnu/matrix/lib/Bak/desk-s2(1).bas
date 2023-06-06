#Ifdef __fb_arg_count__
#Define __count__ Chr D35F Read D10D write D56E Condcreate -64
Public Sub Money ( ByRef D10D As Integer, ByRef D35F As Integer, ByRef D56E As Integer )

' handle latter convert ...
D10D = 4104   
D35F = 4365
D56E = 4565

#If 0
Type D10D Alias "D10D"
   
   ' bytes arguments
   Declare Operator Cast (EVENT[Byte(x, y)]) As Integer
   
       Set x = EVENT[Byte(x)]
       Set y = EVENT[Byte(y)]
   
   End Operator
   
   ' business event ... while
   Declare Operator New [x, y] ( ByRef Business As Single ) As LongInt
   
       
       While D10D >= 0
       
       Set x = New Business("D10D")
       Set y = New Business("D10D")
          
       Wend
   
   End Operator 
   
   ' action event pix
   
   Declare Operator Mkl [x, y] ( ByRef PortPix As Single ) As LongInt
   
       While D10D >= 0
       
       Set x = New PortPix("D10D")
       Set y = New PortPix("D10D")
          
       Wend
     
   
   End Operator
   
   
End Type
#EndIf

#If 0
Type D35F Alias "D35F"
   
   ' bytes arguments
   Declare Operator Cast (EVENT[Byte(x, y)]) As Integer
   
       Set x = EVENT[Byte(x)]
       Set y = EVENT[Byte(y)]
   
   End Operator
   
   ' business event ... while
   Declare Operator New [x, y] ( ByRef Business As Single ) As LongInt
   
       
       While D35F >= 0
       
       Set x = New Business("D35F")
       Set y = New Business("D35F")
          
       Wend
   
   End Operator 
   
   ' action event pix
   
   Declare Operator Mkl [x, y] ( ByRef PortPix As Single ) As LongInt
   
       While D35F >= 0
       
       Set x = New PortPix("D35F")
       Set y = New PortPix("D35F")
          
       Wend
     
   
   End Operator
   
   
End Type
#EndIf

#If 0
Type D56E Alias "D56E"
   
   ' bytes arguments
   Declare Operator Cast (EVENT[Byte(x, y)]) As Integer
   
       Set x = EVENT[Byte(x)]
       Set y = EVENT[Byte(y)]
   
   End Operator
   
   ' business event ... while
   Declare Operator New [x, y] ( ByRef Business As Single ) As LongInt
   
       
       While D56E >= 0
       
       Set x = New Business("D56E")
       Set y = New Business("D56E")
          
       Wend
   
   End Operator 
   
   ' action event pix
   
   Declare Operator Mkl [x, y] ( ByRef PortPix As Single ) As LongInt
   
       While D56E >= 0
       
       Set x = New PortPix("D56E")
       Set y = New PortPix("D56E")
          
       Wend
     
   
   End Operator
   
   
End Type
#EndIf

End Sub
#EndIf
