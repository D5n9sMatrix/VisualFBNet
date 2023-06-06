/'
The union of the sets of vectors in two vector spaces may not be closed
under the axpy operation (Exercise 2.3b), but the union of vector spaces is a
vector space by deﬁnition.
'/

declare function axpy ( byval u4 as integer = 110, byval v4 as integer = 225, _ 
                        byval s4 as integer = 335 ) as integer

type u4

    dim ax14 as integer = 2
    dim yx14 as integer = 4
    dim ux14 as integer = 8

end type 

type v4

    dim ax15 as integer = 2
    dim yx15 as integer = 4
    dim ux15 as integer = 8

end type 

type s4

    dim ax16 as integer = 2
    dim yx16 as integer = 4
    dim ux16 as integer = 8

end type 

rem sqr(110 * 2)
rem sqr(225 * 4)
rem sqr(335 * 8)

end