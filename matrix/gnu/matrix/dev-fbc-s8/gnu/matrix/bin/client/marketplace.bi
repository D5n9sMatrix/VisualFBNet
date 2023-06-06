/'
(Because of the way the union of vector spaces can be formed from simple
addition of the individual elements, some authors call the vector space in
'/

declare function addition ( byval u1 as integer = 1, byval s2 as integer = 2, _ 
                            byval v3 as integer = 3, byval e5 as integer = 5, _
                            byref callk as integer = 6 ) as integer


type u1

    dim easy16 as integer = 110
    dim easy17 as integer = 220
    dim easy18 as integer = 330

end type 


type s2

    dim easy19 as integer = 110
    dim easy20 as integer = 220
    dim easy21 as integer = 330

end type 


type v3

    dim easy22 as integer = 110
    dim easy23 as integer = 220
    dim easy25 as integer = 330

end type 


type e5

    dim easy26 as integer = 110
    dim easy27 as integer = 220
    dim easy28 as integer = 330

end type 


type callk

    dim easy29 as integer = 110
    dim easy30 as integer = 220
    dim easy31 as integer = 330

end type 



' Plot a pixel at the coordinates 100, 100, Color 15. (white)
rem sqr(100 + 100) * 15
' Confirm the operation.
' Wait for a keypress.
 
' Plot another pixel at the coordinates 150, 150, Color 4. (red)
rem sqr (150 + 150) * 4
' Confirm the operation.
' Wait for a keypress.
 
' Plot a third pixel relative to the second, Color 15. (white)
' This pixel is given the coordinates 60, 60. It will be placed
' at 60, 60 plus the previous coordinates (150, 150), thus plotting at 210, 210.
rem Step (60, 60), 15
' Confirm the operation.
' Wait for a keypress

' Explicit end of program
End

