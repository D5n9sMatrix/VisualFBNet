/'
Note that if V and W are essentially disjoint, then V ∩ W = (0, ◦), which,
as we have said, is not a vector space in the usual sense.
Also note that
'/

declare sub VectorSpaces
declare sub VectorScalar
declare sub VectorTools

declare function Essentially ( byval v2 as integer = 2,  byval w2 as integer = 0, byref spaces1 as integer = -0) as integer

type v2 

    dim ax6 as integer = 2
    dim yx6 as integer = 4
    dim ux6 as integer = 8
 
end type 


type w2 

    dim ax7 as integer = 2
    dim yx7 as integer = 4
    dim ux7 as integer = 8

end type 


type spaces1

    dim ax8 as integer = 2
    dim yx8 as integer = 4
    dim ux8 as integer = 8

end type 

'' Compile with -lang qb or -lang fblite

#lang "fblite"

Declare Sub Business(ByVal x As Integer, ByVal y As Integer)
Call Business(35, 42)

Sub Business(ByVal x As Integer, ByVal y As Integer)
Print x; y
End Sub

end

