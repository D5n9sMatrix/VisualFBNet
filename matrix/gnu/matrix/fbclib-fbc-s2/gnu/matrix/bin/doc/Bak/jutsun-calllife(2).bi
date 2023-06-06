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


'Visual example of mutual exclusion + mutual synchronization between 2 threads
'by using Mutex and CondVar:
'the "user-defined thread" computes the points coordinates on a circle,
'and the "main thread" plots the points.
'
'Principle of mutual exclusion + mutual synchronisation
'          Thread#A               XOR + <==>             Thread#B
'.....                                          .....
'MutexLock(mut)                                 MutexLock(mut)
'  Do_something_with_exclusion                    Do_something_with_exclusion
'  While bool#1 <> true <------------------------ bool#1 = true
'    CondWait(cond#1, mut) <--------------------- CondSignal(cond#1)
'  Wend <-----------------------------------.     Do_something_with_exclusion
'  bool#1 = false               .---------- | --> While bool#2 <> true
'  Do_something_with_exclusion  |   .------ | ----> CondWait(cond#2, mut)
'  bool#2 = true ---------------'   |   .-- | --> Wend
'  CondSignal(cond#2) --------------'   |   |     bool#2 = false
'  Do_something_with_exclusion          |   |     Do_something_with_exclusion
'MutexUnlock(mut) ----------------------'   '-- MutexUnlock(mut)
'.....                                          .....
'
'Behavior:
'- Unnecessary to pre-calculate the first point.
'- Each calculated point is plotted one time only.
'
'If you comment out the lines containing "MutexLock" and "MutexUnlock",
'"CondWait" and "CondSignal", ".ready"
'(inside "user-defined thread" or/and "main thread"),
'there will be no longer mutual exclusion nor mutual synchronization
'between computation of coordinates and plotting of points,
'and many points will not be plotted on circle (due to non coherent coordinates).

'-----------------------------------------------------------------------------------------------------


'-----------------------------------------------------------------------------------------------------

Type Point2D
    Dim x As Integer
    Dim y As Integer
End Type

Const x0 As Integer = 640 / 2
Const y0 As Integer = 480 / 2
Const r0 As Integer = 200

Const pi As Single = 4 * Atn(1)

Sub PointOnCircle (ByVal p As Any Ptr)
    Dim pp As Point2D Ptr = p
    Dim teta As Single = 2 * pi * Rnd
    pp->x = x0 + r0 * Cos(teta)
    Sleep 5, 1                         'To increase possibility of uncorrelated data occurrence
    pp->y = y0 + r0 * Sin(teta)
End Sub


Screen 12
Locate 30, 2
Print "<any_key> : exit";
Locate 30, 27
Print "calculated:";
Locate 30, 54
Print "plotted:";

Dim Pptr As Point2D Ptr = New Point2D

Dim Tptr As ThreadUDT Ptr = New ThreadUDT
Tptr->sync = MutexCreate
Tptr->cond1 = CondCreate
Tptr->cond2 = CondCreate
Tptr->procedure = @PointOnCircle
Tptr->p = Pptr
Tptr->handle = ThreadCreate(@ThreadUDT.Thread, Tptr)

Do
    Static As Integer I
    MutexLock(Tptr->sync)                 'Mutex (Lock) for main thread
    While Tptr->ready1 <> Tptr->true      'Process loop against spurious wakeups
        CondWait(Tptr->cond1, Tptr->sync) 'CondWait to receive signal1 from user-thread
    Wend
    Tptr->ready1 = Tptr->false
    PSet (Pptr->x, Pptr->y)               'Plotting one point
    I += 1
    Locate 30, 62
    Print I;
    Tptr->ready2 = Tptr->true             'Set ready2
    CondSignal(Tptr->cond2)               'CondSignal to send signal2 to user thread
    If Inkey <> "" Then
        Tptr->quit = Tptr->true           'Set quit
        MutexUnlock(Tptr->sync)           'Mutex (Unlock) for main thread
        Exit Do
    End If
    MutexUnlock(Tptr->sync)               'Mutex (Unlock) for main thread
    Sleep 5, 1
Loop
 

ThreadWait(Tptr->handle)
MutexDestroy(Tptr->sync)
CondDestroy(Tptr->cond1)
CondDestroy(Tptr->cond2)
Delete Tptr
Delete Pptr

Sleep	
End Sub
