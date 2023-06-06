#ifdef __fb_arg_count__
#define Tip ChrD4 Write 22 Path(dir, sys) As String
Sub Fill(ByRef Support As Integer, ByRef Orange As Integer, Byref Packages As Integer )

Type Support Alias "BH1"
     Dim Support_BH1_Obj As Integer
     Dim Support_BH1_Types As Integer
     Dim Support_BH1_Event As Integer 
End Type

Type Orange Alias "BH2"
     Dim Support_BH1_Obj As Integer
     Dim Support_BH1_Types As Integer
     Dim Support_BH1_Event As Integer 
End Type

Type Packages Alias "BH3"
     Dim Support_BH3_Obj As Integer
     Dim Support_BH3_Types As Integer
     Dim Support_BH3_Event As Integer 
End Type


If Support Then
   Write Support Rem Support(BH1, __fb_arg_count__ ) As Integer
else
   Enum Sup201
   URL, Fetech, URLType, Collect
   End Enum
End If

If Orange Then
   Write Orange Rem Orange( BH2, __fb_arg_count__ ) As Integer
else
  Enum Sup204
  NewFlex, Flexible, URLtype, Latter
  End Enum
End If

If Packages Then
   Write Packages Rem Packages ( BH3,__fb_arg_count__ ) As Integer            
else
   Enum Sup208
   NewTypes, BirdLap, PDos, Run 
   End Enum
End If

End Sub     
#endif   