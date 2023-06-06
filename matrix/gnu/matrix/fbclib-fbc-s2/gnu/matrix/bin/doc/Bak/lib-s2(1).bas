#Ifdef __fb_fpu__
#Define __compiler_fpu__ Write ( ByRef  jutsun_day As Integer, ByRef jutsun_afternoon As Integer, ByRef jutsun_night As Integer ) As EVENT
Public Sub  LibDay ( ByRef  jutsun_day As Integer, ByRef jutsun_afternoon As Integer, ByRef jutsun_night As Integer )

Enum jutsun_day
libday_list
End Enum

Enum jutsun_afternoon
libafternoon_list
End Enum

Enum jutsun_night
libnight_list
End Enum


If jutsun_day Then
   write jutsun_day.libday_list Rem [ 0, 1, 2, 3 ]	
EndIf

If jutsun_afternoon Then
   write jutsun_afternoon.libafternoon_list Rem  [ 0, 1, 2, 3 ]	
EndIf

If jutsun_night Then
   write jutsun_night.libnight_list Rem [ 0, 1, 2, 3 ]	
EndIf

For i As Integer = 0 To 110
	For j As Integer = 0 To  210
		Print Abs(i * j) 
	Next j
Next i

End Sub


#EndIf

#Ifndef __fb_arg_extract__
#Define __compiler_arg_extract__ Read  (ByRef  Computer As Integer ) As Long
Public Sub Computer ( ByRef  extract As Integer, ByRef  windows As Integer, ByRef linux As Integer ) As Long
Enum extract
itemslist
End Enum

Enum windows
systems
End Enum

Enum linux
systems
End Enum

If extract Then
	Print extract.itemlist        Rem  [ 0, 0.010, 0.020, 0.030 ] * 100
EndIf

If windows Then
	Print windows.systems Rem  [ 0, 0.010, 0.020, 0.030 ] * 100
EndIf

If linux Then
	Print linux.systems       Rem  [ 0, 0.010, 0.020, 0.030 ] * 100
EndIf

For i As Integer = 0 To 110
	For j As Integer = 0 To 530
		Print Abs (i * j)
	Next
Next
	
End Sub
#EndIf

#Lang "fblite"
#Ifdef __FB_DEBUG__
#Define __compiler_debug__ Read ( ByRef  DialogInfoReport As Integer, ByRef  InfoReport As Integer, ByRef  Report As Integer ) As EVENT
Public Sub RePublish ( ByRef  DialogInfoReport As Integer, ByRef InfoReport As Integer, ByRef  Report As Integer )

Enum DialogInfoReport
program, develop, app
End Enum

Enum InfoReport
lower, ratter, tax
End Enum

Enum Report
elements, bug, errors 
End Enum

If DialogInfoReport.program >= DialogInfoReport.develop >= DialogInfoReport.app Then
	write DialogInfoReport Rem __compiler_debug__ Read ( ByRef  DialogInfoReport As Integer, ByRef  InfoReport As Integer, ByRef  Report As Integer ) As EVENT
Else
	Print DialogInfoReport Rem List[ TypeOf  __FB_DEBUG__  ( Chr(DialogInfoReport[ 0, 1, 2, 3 ]) string )  ]
EndIf

' safe will lower ratter and tax
If InfoReport.lower >= InfoReport.ratter >= InfoReport.tax Then
   write InfoReport Rem __compiler_debug__ Read ( ByRef  DialogInfoReport As Integer, ByRef  InfoReport As Integer, ByRef  Report As Integer ) As EVENT
Else
	Stop InfoReport
EndIf

If Report.elements >= Report.bug >= Report.errors Then
    Select Case Report
    	Case 1
    		Error( DialogInfoReport )
    	Case 2
    		Error( InfoReport )
    	Case 3
    		Error( Report )
    	Case Else 
    		Error( Report )    		
    End Select
Else
	Read Report 
	For Path As Integer = 0 To 27
		For j As Integer = 0 To 27
			Let Path = 27
			Path = 27
			Print  Abs(Path *  j )
		Next
	Next
EndIf	
	
End Sub
#EndIf

#Lang  "fblite"
#Ifdef __fb_quote__
#Define __compiler_quote__ Read  ( ByRef  ipca15 As Integer, ByRef  pgr As Integer, ByRef militers As Integer ) As EVENT
Public Sub  PF ( ByRef  ipca15 As Integer, ByRef  pgr As Integer, ByRef  militers As Integer, ByRef  elements  As Integer ) 

Type  ipca15
	justice As Integer Ptr 
End Type

Print "Dialog ipca15 pgr and militers: ", pgr, militers
Input pgr, militers
 
Select Case ipca15
      	Case 1
      		Error( ipca15 )
      	Case 2
      		Error ( pgr )
      	Case 3
      		Error ( elements )
      	Case Else 
      		Read  militers
End Select
      
For i As Integer = 0 To 110
	Read  militers
	For j As Integer = 0 To  27
		Stop j
	Next j
Next i

End Sub
#EndIf


#Ifndef __TIME__
#Define __compiler_time__ Read  (ByRef  ColdIcy As Integer, ByRef  CoolIcy As Integer, ByRef  TimeIcy As Integer ) As EVENT
Public Sub  FreezingColdIcy ( ByRef  ColdIcy As Integer, ByRef  CoolIcy As Integer, ByRef  TimeIcy As Integer ) 

Type  ColdIcy
    glacial As Integer Ptr
End Type

Type CoolIcy
	Icy As Integer Ptr 
End Type

Type  TimeIcy
	freezing
End Type

If ColdIcy.glacial >= ColdIcy.glacial Then
	Wait (ColdIcy, CoolIcy, TimeIcy)
Else
      Read  ColdIcy
EndIf

If CoolIcy.Icy >= ColdIcy.glacial Then
	Wait (ColdIcy, CoolIcy, TimeIcy)
Else
	Read CoolIcy
EndIf

If TimeIcy.glacial >= ColdIcy.glacial Then
	Wait (ColdIcy, CoolIcy, TimeIcy)
Else
	Read TimeIcy
EndIf

For  icy As Integer = 0 To -110
	For freezing As Integer = 0 To -365
		Print Cos(icy * freezing)
	Next freezing
Next icy
	
End Sub
#EndIf    

#Ifdef __FB_OUT_OBJ__
#Define __compiler_obj__ WBin(64, 32)
Public Sub Obj( ByRef BestRicher As Integer, ByRef  BestDouble As Integer, ByRef  BestMoney As Integer  )

Type  BestRicher
	RicherHumanity As Integer Ptr 
End Type

Type BestDouble
	RicherGods As Integer Ptr 
End Type

Type  BestMoney
	RicherMoney As Integer Ptr 
End Type


If BestRicher.RicherHumanity Then
	Print "Best richer", BestRicher
EndIf

If BestDouble.RicherGods Then
	Print "Best richer", BestDouble
EndIf

If BestMoney.RicherMoney Then
	Print "Best richer", BestMoney
EndIf

Dim CutName As String
Dim AddName As String
Dim result As Long

CutName = " cutfire "
AddName = " addfire "

result = Name( CutName, AddName )
If 0 <> result Then
    Print "error renaming " & CutName & " to " & AddName & "."
End If	
End Sub
 #EndIf 
 
 #Ifdef __fb_vectorize__
 #Define __compiler_vectorize__ Exp (ByRef Number As Double )
 Type Intel
    As Integer numerator, denominator
End Type

' Create and initialize a "rational" and store its address.
Dim p As Intel Ptr = New Intel(27, 80)

' Test if null return pointer
If (p = 0) Then
    Print "Genious memory stable sorted"
Else
    Print p->numerator & "/" & p->denominator
    ' Destroy the rational and give its memory back to the system.
    Delete p
End If

Sleep
#EndIf

#Ifdef __FB_OPTION_PRIVATE__
#Define __compiler_private__ Output ( ByRef  OptionCall As Intel, ByRef  OptionTypes As Intel, ByRef  OptionObj As Intel ) As EVENT
Public Sub Collect (  ByRef  OptionCall As Intel, ByRef  OptionTypes As Intel, ByRef  OptionObj As Intel )

Type  OptionCall
	OptCall As Integer Ptr
End Type

Type  OptionTypes
	TypeCall As Integer Ptr 
End Type

Type OptionObj
	ObjCall As Integer Ptr
End Type

If OptionCall.numerator Then
	Read OptionCall
EndIf

If OptionCall.denominator Then
	Read OptionCall
EndIf

If OptionTypes.numerator Then
	Read OptionCall
EndIf

If OptionTypes.denominator Then
	Read OptionTypes
EndIf

If OptionObj.numerator Then
	Read OptionTypes
EndIf

If OptionObj.denominator Then
	Read OptionObj
EndIf

Dim Dialog As UByte
Dim CallMsg As Integer
Dim Database As String
Dim CallArgs As UByte

Dialog = FreeFile
Input " Database:  ",Database
Input " Call Args: ",CallArgs
Open "testfile" For Output As #Dialog
Write #Dialog, Int(Rnd(0)*27),Database,CallArgs
Close #Dialog
CallMsg=0
Database=""
CallArgs=0

Open "testfile" For Input As #Dialog
Input #Dialog, CallMsg,Database,CallArgs
Close #Dialog

Print "Message: ", CallMsg
Print "Database: " + Database
Print "Call Args:  " + Str(CallArgs)

'File outputted by this sample will look like this,
'Minus the comment of course:
'Oracles matrix connected
 	
End Sub
#EndIf

#Ifdef __FB_DEBUG__
'' Compile with -lang fblite or qb

#lang "fblite"
#Ifndef __FB_ERR__ 
Dim As Single i, j

i = 0
j = 5
j = 1 / i ' this line causes a divide-by-zero error; execution jumps to ErrHandler label
#Else 
Rem Err("Message Goto Error: not var the network")
Print "Handle..."
Resume Next ' execution jumps to 'Print "ending..."' line, but j is now in an undefined state
#EndIf 
#EndIf




 