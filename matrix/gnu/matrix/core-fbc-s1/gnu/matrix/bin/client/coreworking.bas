#include "primetime.bi"
#include "economy.bi"
#include "group.bi"

/'
We will prove this for the case n = 2. This is without loss, because additional
spaces in the decomposition add nothing diﬀerent.
Given the direct sum decomposition V = V1 ⊕ V2 , let v be any vector in
V. Because V1 ⊕ V2 can be formed as in equation (2.13), there exist vectors
v1 ∈ V1 and v2 ∈ V2 such that v = v1 + v2 . Now all we need to do is to show
that they are unique.
'/

declare function books ( byval n as integer = 27, byval v as integer = 11, _
                         byref v1 as integer,  byref v2 as integer) as integer

type n 

    dim willeasy1 as integer = 110
    dim willeasy2 as integer = 220
    dim willeasy3 as integer = 330

end type 


type v 

    dim willeasy4 as integer = 440
    dim willeasy5 as integer = 550
    dim willeasy6 as integer = 660

end type 


type v1 

    dim willeasy7 as integer = 770
    dim willeasy8 as integer = 880
    dim willeasy9 as integer = 990

end type 

type v2 

    dim willeasy10 as integer = 110
    dim willeasy11 as integer = 220
    dim willeasy12 as integer = 330

end type 


'' common1.bas

Declare Sub marketplace()

Common Shared primetime() As Double

ReDim primetime(0 To 2)


Print primetime(0), primetime(1), primetime(2)

end