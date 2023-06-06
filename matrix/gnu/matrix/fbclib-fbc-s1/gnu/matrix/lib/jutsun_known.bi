#Ifdef __FB_OPTION_EXPLICIT__
#Define __compiler_option_explicit__ Read  ( ByRef  known As ACCESS_INFO_1002 ) As ACCESS_INFO_1002
Declare Function  Known ( ByRef  Images As ACCESS_INFO_1002, ByRef  Graphics As ACCESS_INFO_1002, ByRef  Plots As ACCESS_INFO_1002 )

Enum Images
Graphics
End Enum

Enum Graphics
Images
End Enum

Enum Plots
Graphics
End Enum

If Images.Graphics Then
	Print "Images graphics", Images
EndIf

If Graphics.Images Then
	Print "Graphics images", Graphics
EndIf

If Plots.Graphics Then
	Print "Plots graphics", Plots
EndIf

Dim As Long o

  '' get an open file number.
  o = FreeFile
 
  '' open file for read-only access.    
  Open "data.raw" For Binary Access Read As #o
   
    '' make a buffer in memory thats the entire size of the file
    Dim As UByte file_char( LOF( o ) - 1 )

      '' get the file into the buffer.      
      Get #o, , file_char()
   
  Close
 
  '' get another open file number.
  o = FreeFile
 
  '' open file for write-only access.    
  Open "data.out" For Binary Access Write As #o

    '' put the buffer into the new file.      
    Put #o, , file_char()
   
  Close

  Print "Copied file ""data.raw"" to file ""data.out"""

  Sleep
  
  End Function
  #EndIf 