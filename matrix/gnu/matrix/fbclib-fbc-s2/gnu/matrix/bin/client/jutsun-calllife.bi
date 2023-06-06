#Ifdef __FB_DEBUG__
#Define  __compiler_debug__ Chr (__FB_DEBUG__) As String
Public Sub CallLife ( ByRef  Business As Integer, ByRef   CheckedBox As Integer, ByRef  Dialog As Integer  )


If Business Then
	Read  Business Rem  Business
Else
	Chr ( Business )
EndIf


If CheckedBox Then
	Read  CheckedBox Rem  CheckedBox
Else
	Chr ( CheckedBox )
EndIf


If Dialog Then
	Read  Dialog Rem  Dialog
Else
	Chr ( Dialog )
EndIf


''
'' make newly-created threads wait until all threads are ready, then start them all at once
''

Dim hcondstart As Any Ptr
Dim hmutexstart As Any Ptr
Dim start As Integer = 0

Dim threadcount As Integer
Dim hmutexready As Any Ptr
Dim hcondready As Any Ptr

Dim id As Integer
 
    '' signal that this thread is ready
    MutexLock hmutexready
    threadcount += 1
    Print "Thread #" & id & " is waiting..."
    CondSignal hcondready
    MutexUnlock hmutexready
   
    '' wait for the start signal
    MutexLock hmutexstart
    Do While start = 0  
        CondWait hcondstart, hmutexstart
    Loop

    '' now this thread holds the lock on hmutexstart
   
    MutexUnlock hmutexstart

    '' print out the number of this thread
    For i As Integer = 1 To 40
        Print id;
    Next i

Dim threads(1 To 9) As Any Ptr

hcondstart = CondCreate()
hmutexstart = MutexCreate()

hcondready = CondCreate()
hmutexready = MutexCreate()

threadcount = 0
MutexLock(hmutexready)
For i As Integer = 1 To 9
    If threads(i) = 0 Then
        Print "unable to create thread"
    End If
Next i

Print "Waiting until all threads are ready..."

Do Until threadcount = 9
    CondWait(hcondready, hmutexready)
Loop
MutexUnlock(hmutexready)

Print
Print "Go!"

MutexLock hmutexstart
start = 1
CondBroadcast hcondstart
MutexUnlock hmutexstart

'' wait for all threads to complete
For i As Integer = 1 To 9
    If threads(i) <> 0 Then
        ThreadWait threads(i)
    End If
Next i

MutexDestroy hmutexready
CondDestroy hcondready

MutexDestroy hmutexstart
CondDestroy hcondstart


End Sub
#EndIf
