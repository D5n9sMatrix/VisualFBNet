#include "electron.bi"
#include "consumer.bi"
#include "business.bi"
#include "pib.bi"


/'
The intersection of two vector spaces of the same order that are not es-
sentially disjoint is a vector space, as we can see by letting x and y be any
vectors in the intersection U = V ∩ W, and showing, for any real number a,
that ax + y ∈ U. This is easy because both x and y must be in both V and
W.
'/

declare function Vector ( byval x1 as integer = 8, byval y1 as integer = 27, _
                          byval u1 as integer = 8, byval v1 as integer = 27, _
                          byval w1 as integer = 1 ) as integer


type x1

    dim ax1 as integer = 2
    dim yx1 as integer = 4
    dim ux1 as integer = 8

#if __FB_GCC__ <> 0
    ' Backend Code Emitter And Assembler: gcc
#else
    ' Backend Code Emitter And Assembler: Not gcc
#endif


end type 


type y1

    dim ax2 as integer = 2
    dim yx2 as integer = 4
    dim ux2 as integer = 8

#if __FB_GCC__ <> 0
    ' Backend Code Emitter And Assembler: gcc
#else
    ' Backend Code Emitter And Assembler: Not gcc
#endif

end type 

type u1 

    dim ax3 as integer = 2
    dim yx3 as integer = 4
    dim ux3 as integer = 8

#if __FB_GCC__ <> 0
    ' Backend Code Emitter And Assembler: gcc
#else
    ' Backend Code Emitter And Assembler: Not gcc
#endif

end type 


type v1 

    dim ax4 as integer = 2
    dim yx4 as integer = 4
    dim ux4 as integer = 8

#if __FB_GCC__ <> 0
    ' Backend Code Emitter And Assembler: gcc
#else
    ' Backend Code Emitter And Assembler: Not gcc
#endif

end type 


type w1 

    dim ax5 as integer = 2
    dim yx5 as integer = 4
    dim ux5 as integer = 8

#if __FB_GCC__ <> 0
    ' Backend Code Emitter And Assembler: gcc
#else
    ' Backend Code Emitter And Assembler: Not gcc
#endif

end type 



end

