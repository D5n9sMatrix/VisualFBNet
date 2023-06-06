#include "marketplace.bi"
#include "collect.bi"
#include "refinery.bi"
#include "group.bi"
#include "tse.bi"

/'
It is easy to see that this is a vector space by showing that it is closed with
respect to axpy. (As above, we show that for any x and y in V ∪ W and for
any real number a, ax + y is in V ∪ W.)
'/

declare function axpy ( byval w1 as integer = 1, byref ax2 as integer = 2, _ 
                        byval a3 as integer = 3, byval y4 as integer = 4, _
                        byval v5 as integer = 5 ) as integer


type w1
    dim easy1 as integer = 110
    dim easy2 as integer = 220
    dim easy3 as integer = 330
end type 

type ax2

    dim easy4 as integer = 110
    dim easy5 as integer = 220
    dim easy6 as integer = 330

end type 


type a3

    dim easy7 as integer = 110
    dim easy8 as integer = 220
    dim easy9 as integer = 330

end type 


type y4

    dim easy10 as integer = 110
    dim easy11 as integer = 220
    dim easy12 as integer = 330

end type 


type v5

    dim easy13 as integer = 110
    dim easy14 as integer = 220
    dim easy15 as integer = 330

end type 

'Draw a pixel with the background color at 10, 10
rem (10 + 10) * 4

'Draw a pixel with the background color at Last x cord +10, Last y cord +10
rem Step (10,10)
 

end
