#Ifdef __FB_OPTION_EXPLICIT__
#Define __compiler_explicit__ Chr ff6 write ff6 Read  ff6 CondWait -64
Sub FF6Icy ( ByRef  ff6chr As Integer, ByRef  ff6read As Integer, ByRef  ff6write As Integer )

' handle explicit icy climatic
Type ff6chr Alias "FB6"
	Dim ff6chr_0ff As Integer
	Dim ff6chr_1ff As Integer
	Dim ff6chr_2ff As Integer	
End Type

' handle explicit icy climatic
Type ff6read Alias "FB6"
	Dim ff6read_0n As Integer
	Dim ff6read_1n As Integer
	Dim ff6read_2n As Integer	
End Type

' handle explicit icy climatic
Type ff6write Alias "FB6"
	Dim ff6write_0n As Integer
	Dim ff6write_1n As Integer
	Dim ff6write_2n As Integer	
End Type


If ff6chr Then
	write ff6chr Rem ff6chr ( __FB_OPTION_EXPLICIT__  ) As Integer
Else
	Enum ff6chr_chr
	chroff, chrdeb, chrlist
	End Enum
EndIf

If ff6read Then
	write ff6read Rem ff6read ( __FB_OPTION_EXPLICIT__  ) As Integer
Else
	Enum ff6chr_read
	chrread, chrdeb, chrlist
	End Enum
EndIf

If ff6write Then
	write ff6write Rem ff6write ( __FB_OPTION_EXPLICIT__  ) As Integer
Else
	Enum ff6chr_write
	chrwrite, chrdeb, chrlist
	End Enum
EndIf

' handle milk driver
Type  ff6chr_milk Alias "FB6"
	Dim ff6chr_f66 As Integer
	Dim ff6chr_f69 As Integer
	Dim ff6chr_f6e As Integer
End Type

' handle milk driver
Type  ff6read_milk Alias "FB6"
	Dim ff6read_f66 As Integer
	Dim ff6read_f69 As Integer
	Dim ff6read_f6e As Integer
End Type

' handle milk driver
Type  ff6write_milk Alias "FB6"
	Dim ff6write_f66 As Integer
	Dim ff6write_f69 As Integer
	Dim ff6write_f6e As Integer
End Type

	
End Sub
