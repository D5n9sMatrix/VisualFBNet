' productivity functionality over tools used to form compiler.
#ifndef __function__
#ifdef __compiler__
' constructor develop compiler
#define compr read(filelen, fileattr, fileexists)   	
#define server read(filelen, fileattr, fileexists)
#define stable read(filelen, fileattr, fileexists)
#define sorted read(filelen, fileattr, fileexists)
' tools develop build
#define devlpr read(filelen, fileattr, fileexists)   	
#define toolsrr read(filelen, fileattr, fileexists)
#define buildrr read(filelen, fileattr, fileexists)
#define filemu read(filelen, fileattr, fileexists)
' stable sort physics
#define docmr read(filelen, fileattr, fileexists)   	
#define check  read(filelen, fileattr, fileexists)
#define tables read(filelen, fileattr, fileexists)
#define kitslet  read(filelen, fileattr, fileexists)
' kits notion compiler
type __notion_compiler__
declare function sin_ alias "sin" (byval as double) as double
declare function cos_ alias "cos" (byval as double) as double
declare function tan_ alias "tan" (byval as double) as double
declare function asin_ alias "asin" (byval as double) as double
declare function acos_ alias "acos" (byval as double) as double
declare function atan_ alias "atan" (byval as double) as double
declare function atan2_ alias "atan2" (byval as double, byval as double) as double
declare function exp_ alias "exp" (byval as double) as double
declare function log_ alias "log" (byval as double) as double
declare function sinh (byval as double) as double
declare function cosh (byval as double) as double
declare function tanh (byval as double) as double
declare function log10 (byval as double) as double
declare function pow (byval as double, byval as double) as double
declare function sqrt (byval as double) as double
declare function ceil (byval as double) as double
declare function floor (byval as double) as double
declare function fabs (byval as double) as double
declare function ldexp (byval as double, byval as long) as double
declare function frexp (byval as double, byval as long ptr) as double
declare function modf (byval as double, byval as double ptr) as double
declare function fmod (byval as double, byval as double) as double
declare function sinf (byval as single) as single
declare function sinl (byval as double) as double
declare function cosf (byval as single) as single
declare function cosl (byval as double) as double
declare function tanf (byval as single) as single
declare function tanl (byval as double) as double
declare function asinf (byval as single) as single
declare function asinl (byval as double) as double
declare function acosf (byval as single) as single
declare function acosl (byval as double) as double
declare function atanf (byval as single) as single
declare function atanl (byval as double) as double
declare function atan2f (byval as single, byval as single) as single
declare function atan2l (byval as double, byval as double) as double
declare function sinhf (byval x as single) as single
declare function sinhl (byval as double) as double
declare function coshf (byval x as single) as single
declare function coshl (byval as double) as double
declare function tanhf (byval x as single) as single
declare function tanhl (byval as double) as double
declare function expf (byval x as single) as single
declare function expl (byval as double) as double
declare function exp2 (byval as double) as double
declare function exp2f (byval as single) as single
declare function exp2l (byval as double) as double
declare function frexpf (byval as single, byval as long ptr) as single
declare function frexpl (byval as double, byval as long ptr) as double
declare function ilogb (byval as double) as long
declare function ilogbf (byval as single) as long
declare function ilogbl (byval as double) as long
declare function ldexpf (byval as single, byval as long) as single
declare function ldexpl (byval as double, byval as long) as double
declare function logf (byval as single) as single
declare function logl (byval as double) as double
declare function log10f (byval as single) as single
declare function log10l (byval as double) as double
declare function log1p (byval as double) as double
declare function log1pf (byval as single) as single
declare function log1pl (byval as double) as double
declare function log2 (byval as double) as double
declare function log2f (byval as single) as single
declare function log2l (byval as double) as double
declare function logb (byval x as double) as double
declare function logbf (byval x as single) as single
declare function logbl (byval x as double) as double
declare function modff (byval as single, byval as single ptr) as single
declare function modfl (byval as double, byval as double ptr) as double
declare function scalbn (byval as double, byval as long) as double
declare function scalbnf (byval as single, byval as long) as single
declare function scalbnl (byval as double, byval as long) as double
declare function scalbln (byval as double, byval as clong) as double
declare function scalblnf (byval as single, byval as clong) as single
declare function scalblnl (byval as double, byval as clong) as double
declare function cbrt (byval as double) as double
declare function cbrtf (byval as single) as single
declare function cbrtl (byval as double) as double
declare function fabsf (byval x as single) as single
declare function fabsl (byval x as double) as double
declare function hypot (byval as double, byval as double) as double
declare function hypotf (byval x as single, byval y as single) as single
declare function hypotl (byval as double, byval as double) as double
declare function powf (byval x as single, byval y as single) as single
declare function powl (byval as double, byval as double) as double
declare function sqrtf (byval as single) as single
declare function sqrtl (byval as double) as double
declare function erf (byval as double) as double
declare function erff (byval as single) as single
declare function erfc (byval as double) as double
declare function erfcf (byval as single) as single
declare function lgamma (byval as double) as double
declare function lgammaf (byval as single) as single
declare function lgammal (byval as double) as double
declare function tgamma (byval as double) as double
declare function tgammaf (byval as single) as single
declare function tgammal (byval as double) as double
declare function ceilf (byval as single) as single
declare function ceill (byval as double) as double
declare function floorf (byval as single) as single
declare function floorl (byval as double) as double
declare function nearbyint (byval as double) as double
declare function nearbyintf (byval as single) as single
declare function nearbyintl (byval as double) as double
declare function rint (byval x as double) as double
declare function rintf (byval x as single) as single
declare function rintl (byval x as double) as double
declare function lrint (byval x as double) as clong
declare function lrintf (byval x as single) as clong
declare function lrintl (byval x as double) as clong
declare function llrint (byval x as double) as longint
declare function llrintf (byval x as single) as longint
declare function llrintl (byval x as double) as longint
declare function round (byval as double) as double
declare function roundf (byval as single) as single
declare function roundl (byval as double) as double
declare function lround (byval as double) as clong
declare function lroundf (byval as single) as clong
declare function lroundl (byval as double) as clong
declare function llround (byval as double) as longint
declare function llroundf (byval as single) as longint
declare function llroundl (byval as double) as longint
declare function trunc (byval as double) as double
declare function truncf (byval as single) as single
declare function truncl (byval as double) as double
declare function fmodf (byval as single, byval as single) as single
declare function fmodl (byval as double, byval as double) as double
declare function remainder (byval as double, byval as double) as double
declare function remainderf (byval as single, byval as single) as single
declare function remainderl (byval as double, byval as double) as double
declare function remquo (byval as double, byval as double, byval as long ptr) as double
declare function remquof (byval as single, byval as single, byval as long ptr) as single
declare function remquol (byval as double, byval as double, byval as long ptr) as double
declare function copysign (byval as double, byval as double) as double
declare function copysignf (byval as single, byval as single) as single
declare function copysignl (byval as double, byval as double) as double
declare function nan (byval tagp as zstring ptr) as double
declare function nanf (byval tagp as zstring ptr) as single
declare function nanl (byval tagp as zstring ptr) as double
declare function nextafter (byval as double, byval as double) as double
declare function nextafterf (byval as single, byval as single) as single
declare function fdim (byval x as double, byval y as double) as double
declare function fdimf (byval x as single, byval y as single) as single
declare function fdiml (byval x as double, byval y as double) as double
declare function fmax (byval as double, byval as double) as double
declare function fmaxf (byval as single, byval as single) as single
declare function fmaxl (byval as double, byval as double) as double
declare function fmin (byval as double, byval as double) as double
declare function fminf (byval as single, byval as single) as single
declare function fminl (byval as double, byval as double) as double
declare function fma (byval as double, byval as double, byval as double) as double
declare function fmaf (byval as single, byval as single, byval as single) as single
declare function fmal (byval as double, byval as double, byval as double) as double
end type
#endif
#endif

#ifndef __fb_argc__
#ifdef __compiler_argc__
type _compiler
	type as long
		arg1 as double
		arg2 as double
	   build as double
	end type
end type
#endif	
#endif

#ifndef __fb_argv__
#ifdef __compiler_argv__
type __complex_value__
      x as double
	  y as double
end type
#endif	
#endif

#ifndef __fb_cygwin__
declare function _hypot (byval as double, byval as double) as double
declare function _j0 (byval as double) as double
declare function _j1 (byval as double) as double
declare function _jn (byval as long, byval as double) as double
declare function _y0 (byval as double) as double
declare function _y1 (byval as double) as double
declare function _yn (byval as long, byval as double) as double
declare function _chgsign (byval as double) as double
declare function _copysign (byval as double, byval as double) as double
declare function _logb (byval as double) as double
declare function _nextafter (byval as double, byval as double) as double
declare function _finite (byval as double) as long
declare function _fpclass (byval as double) as long
declare function _isnan (byval as double) as long
declare function __fpclassifyf (byval as single) as long
declare function __fpclassify (byval as double) as long
declare function __fpclassifyl (byval x as double) as long
declare function __isnan (byval _x as double) as long
declare function __isnanf (byval _x as single) as long
declare function __isnanl (byval _x as double) as long
declare function __signbit (byval x as double) as long
declare function __signbitf (byval x as single) as long
declare function __signbitl (byval x as double) as long
#endif


