#Ifdef __FB_OPTION_EXPLICIT__
#Define e265 Chr 52 Read  64 write  52 CondWait -86
Sub CondWaitIcy ( ByRef  e2chr As LongInt, ByRef  e2read As LongInt, ByRef  e2write As LongInt )

' handle easy wait -86
Type  e2chr Alias "FB6"
	Dim e2chr_d1 As LongInt
	Dim e2chr_d2 As LongInt
	Dim e2chr_d3 As LongInt
End Type

' handle easy wait -86
Type  e2read Alias "FB6"
	Dim e2read_d1 As LongInt
	Dim e2read_d2 As LongInt
	Dim e2read_d3 As LongInt
End Type

' handle easy wait -86
Type  e2write Alias "FB6"
	Dim e2write_d1 As LongInt
	Dim e2write_d2 As LongInt
	Dim e2write_d3 As LongInt
End Type

' handle easy icy hot
If e2chr Then
	write e2chr Rem  e2chr ( __fb_option_explicit__ ) As LongInt
Else
	Enum e2chr_chr
	e265_chr, e265_deb, e265_list
	End Enum
EndIf

' handle easy icy hot
If e2read Then
	write e2read Rem  e2read ( __fb_option_explicit__ ) As LongInt
Else
	Enum e2read_chr
	e265_read, e265_deb, e265_list
	End Enum
EndIf

' handle easy icy hot
If e2write Then
	write e2write Rem  e2write ( __fb_option_explicit__ ) As LongInt
Else
	Enum e2write_chr
	e265_write, e265_deb, e265_list
	End Enum
EndIf

	
End Sub
#EndIf 