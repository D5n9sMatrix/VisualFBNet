/'
2.1.2.12 Direct Products of Vector Spaces and Dimension
Reduction
The set operations on vector spaces that we have mentioned so far require
that the vector spaces be of a ﬁxed order. Sometimes in applications, it is
useful to deal with vector spaces of diﬀerent orders.
The direct product of the vector space V of order n and the vector space
W of order m is the vector space of order n + m on the set of vectors
{(v1 , . . . , vn , w1 , . . . , wm ), s.t. (v1 , . . . , vn ) 
∈ V, (w1 , . . . , wm ) ∈ W}, (2.18)
'/
declare function RColdIcy ( byval v11 as integer = -32, byval vn12 as integer = -64, _ 
                            byval w10 as integer = -86, byval wm10 as integer = -96 ) as integer

type v11

    dim willeasy36 as integer = 440
    dim willeasy37 as integer = 550
    dim willeasy38 as integer = 660

end type 


type v12

    dim willeasy39 as integer = 440
    dim willeasy40 as integer = 550
    dim willeasy41 as integer = 660

end type 

type wm10

    dim willeasy42 as integer = 440
    dim willeasy43 as integer = 550
    dim willeasy44 as integer = 660

end type 


Type Vector2D
  As Single x, y
  Declare Operator Cast() As String
  Declare Property Length() As Single
  Declare Property Length( ByVal new_length As Single )
End Type

Operator Vector2D.Cast () As String
  Return "(" + Str(x) + ", " + Str(y) + ")"
End Operator

Property Vector2D.Length() As Single
  Length = Sqr( x * x + y * y )
End Property

Property Vector2D.Length( ByVal new_length As Single )
  Dim m As Single = Length
  If m <> 0 Then
    '' new vector = old / length * new_length
    x *= new_length / m
    y *= new_length / m
  End If
End Property

Dim a As Vector2D = ( 3, 4 )

Print "a = "; a
Print "a.length = "; a.length
Print

a.length = 27

Print "a = "; a
Print "a.length = "; a.length

end