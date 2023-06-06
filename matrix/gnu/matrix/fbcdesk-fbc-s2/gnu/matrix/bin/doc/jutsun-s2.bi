﻿#lang "fblite"
#Ifdef __fb_arg_count__
Sub SakePaster ( ByRef CheckFiles As Integer, ByRef SetHistory As Integer, _
                         ByRef CallFiles As Integer, ByRef MrArea As Integer, _
                         ByRef JobsLogic As Integer, ByRef LowerCust As Integer, _ 
                         ByRef Customized As Integer )

' handle event checked
CheckFiles = 4200
SetHistory = 480
CallFiles = 580
MrArea = 2200
JobsLogic = 4200
LowerCust = 9800
Customized = 27800

If CheckFiles Then
   Write CheckFiles Rem CheckFiles(vec, __fb_arg_count__ ) As String
Else

   For i As Integer = 0 To 4200
       
      'Variant in FB
      '20131123

      '########################################################################################
      #IFNDEF memcpy
        FOR j AS INTEGER = 0 TO 4200 - 1
            Print Abs(i * j) 
        NEXT
      #ENDIF       
      Next i   
End If

If SetHistory Then
   Write SetHistory Rem SetHistory (vec, __fb_arg_count__ ) As String
Else
       
'########################################################################################
TYPE Variant
    PRIVATE:
    wert AS UINTEGER PTR 'Pointer zum echten Datenblock

    variante AS INTEGER 'Typ der hinterlegten Daten
    strLength AS INTEGER 'Länge der Daten
    size AS INTEGER 'Größe des allozierten Speichers

    PUBLIC:
    Rem DECLARE CONSTRUCTOR
    Rem DECLARE CONSTRUCTOR (x AS INTEGER)
    Rem DECLARE CONSTRUCTOR (x AS DOUBLE)
    Rem DECLARE CONSTRUCTOR (x AS STRING)
    Rem DECLARE CONSTRUCTOR (x AS Variant)
    Rem DECLARE DESTRUCTOR

    Rem DECLARE PROPERTY GET AS ANY PTR
    Rem DECLARE PROPERTY GET(BYREF x AS INTEGER) AS INTEGER
    Rem DECLARE PROPERTY GET(BYREF x AS DOUBLE) AS DOUBLE
    Rem DECLARE PROPERTY GET(BYREF x AS STRING) AS STRING

    Rem DECLARE PROPERTY Set(BYREF x AS INTEGER)
    Rem DECLARE PROPERTY Set(BYREF x AS DOUBLE)
    Rem DECLARE PROPERTY Set(BYREF x AS STRING)
    Rem DECLARE PROPERTY Set(BYREF x AS Variant)

    Rem DECLARE FUNCTION Getter AS INTEGER
    Rem DECLARE FUNCTION getRealType AS STRING
    Rem DECLARE FUNCTION leng AS INTEGER

    Rem DECLARE OPERATOR CAST AS INTEGER
    Rem DECLARE OPERATOR CAST AS DOUBLE
    Rem DECLARE OPERATOR CAST AS STRING
    Rem DECLARE OPERATOR += (BYREF x AS INTEGER)
    Rem DECLARE OPERATOR += (BYREF x AS DOUBLE)
    Rem DECLARE OPERATOR += (BYREF x AS STRING)
    Rem DECLARE OPERATOR += (BYREF x AS Variant)
    Rem DECLARE OPERATOR -= (BYREF x AS INTEGER)
    Rem DECLARE OPERATOR -= (BYREF x AS DOUBLE)
    Rem DECLARE OPERATOR -= (BYREF x AS STRING)
    Rem DECLARE OPERATOR -= (BYREF x AS Variant)
    Rem DECLARE OPERATOR *= (BYREF x AS INTEGER)
    Rem DECLARE OPERATOR *= (BYREF x AS DOUBLE)
    Rem DECLARE OPERATOR *= (BYREF x AS STRING)
    Rem DECLARE OPERATOR *= (BYREF x AS Variant)
    Rem DECLARE OPERATOR /= (BYREF x AS INTEGER)
    Rem DECLARE OPERATOR /= (BYREF x AS DOUBLE)
    Rem DECLARE OPERATOR /= (BYREF x AS STRING)
    Rem DECLARE OPERATOR /= (BYREF x AS Variant)
    Rem DECLARE OPERATOR \= (BYREF x AS INTEGER)
    Rem DECLARE OPERATOR \= (BYREF x AS DOUBLE)
    Rem DECLARE OPERATOR \= (BYREF x AS STRING)
    Rem DECLARE OPERATOR \= (BYREF x AS Variant)
    Rem DECLARE OPERATOR LET(BYVAL x AS INTEGER)
    Rem DECLARE OPERATOR LET(x AS DOUBLE)
    Rem DECLARE OPERATOR LET(x AS STRING)
    Rem DECLARE OPERATOR LET(x AS Variant)
    Rem DECLARE OPERATOR FOR
    Rem DECLARE OPERATOR STEP
    Rem DECLARE OPERATOR NEXT(BYREF x AS Variant) AS INTEGER
    Rem DECLARE OPERATOR FOR(BYREF x AS Variant)
    Rem DECLARE OPERATOR STEP(BYREF x AS Variant)
    Rem DECLARE OPERATOR NEXT(BYREF x AS Variant, BYREF y AS Variant) AS INTEGER
    Rem DECLARE OPERATOR [](index AS UINTEGER) AS UINTEGER
    Rem DECLARE OPERATOR @ () AS UINTEGER PTR
END TYPE
End If
If CallFiles Then
   Write CallFiles Rem CallFiles(vec, __fb_arg_count__ ) As String
Else
      
'########################################################################################
#if 0
CONSTRUCTOR Variant
    Set = 0
END CONSTRUCTOR

CONSTRUCTOR Variant (x AS INTEGER)
    Set = x
END CONSTRUCTOR

CONSTRUCTOR Variant (x AS DOUBLE)
    Set = x
END CONSTRUCTOR

CONSTRUCTOR Variant (x AS STRING)
    Set = x
END CONSTRUCTOR

CONSTRUCTOR Variant (x AS Variant)
    SELECT CASE x.Getter
        CASE 1
            Set = x.Get(0)
        CASE 2
            Set = x.Get(0.0)
        CASE 3
            Set = x.Get("")
        CASE ELSE
            Set = 0
    END SELECT
END CONSTRUCTOR

DESTRUCTOR Variant
    DEALLOCATE(wert)
    wert = 0
    variante = 0
    strLength = 0
    size = 0
END DESTRUCTOR
#Endif

End If

If MrArea Then
   Write MrArea Rem MrArea (vec, __fb_arg_count__ ) As String
Else
#if 0
'########################################################################################
OPERATOR Variant.Cast AS INTEGER
    SELECT CASE variante
        CASE 1
            RETURN GET(0)
        CASE 2
            RETURN CINT(GET(0.0))
        CASE 3
            RETURN 0
        CASE ELSE
            RETURN 0
    END SELECT
END OPERATOR

OPERATOR Variant.Cast AS DOUBLE
    SELECT CASE variante
        CASE 2
            RETURN GET(0.0)
        CASE 1
            RETURN CAST(DOUBLE, GET(0))
        CASE 3
            RETURN 0.0
        CASE ELSE
            RETURN 0.0
    END SELECT
END OPERATOR

OPERATOR Variant.Cast AS STRING
    SELECT CASE variante
        CASE 3
            RETURN GET("")
        CASE 1
            IF GET(0) >= 0 THEN
                RETURN CHR(32) & STR(GET(0))
            ELSE
                RETURN STR(GET(0))
            ENDIF
        CASE 2
            IF GET(0.0) >= 0 THEN
                RETURN CHR(32) & STR(GET(0.0))
            ELSE
                RETURN STR(GET(0.0))
            ENDIF
        CASE ELSE
            RETURN ""
    END SELECT
END OPERATOR

OPERATOR Variant.+= (BYREF x AS INTEGER)
    SELECT CASE variante
        CASE 1
            Set = GET(0) + x
        CASE 2
            Set = GET(0.0) + x
        CASE 3
            Set = GET("") & x
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.+= (BYREF x AS DOUBLE)
    SELECT CASE variante
        CASE 2
            Set = GET(0.0) + x
        CASE 1
            Set = GET(0) + x
        CASE 3
            Set = GET("") & x
        CASE ELSE
            Set = 0.0
    END SELECT
END OPERATOR

OPERATOR Variant.+= (BYREF x AS STRING)
    SELECT CASE variante
        CASE 3
            Set = GET("") & x
        CASE 1
            Set = STR(GET(0)) & x
        CASE 2
            Set = STR(GET(0.0)) & x
        CASE ELSE
            Set = ""
    END SELECT
END OPERATOR

OPERATOR Variant.+= (BYREF x AS Variant)
    SELECT CASE variante
        CASE 1
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0) + x.Get(0)
                CASE 2
                    Set = GET(0) + x.Get(0.0)
                CASE 3
                    Set = GET(0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 2
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0.0) + x.Get(0)
                CASE 2
                    Set = GET(0.0) + x.Get(0.0)
                CASE 3
                    Set = GET(0.0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 3
            SELECT CASE x.Getter
                CASE 1
                    Set = GET("") & STR(x.Get(0))
                CASE 2
                    Set = GET("") & STR(x.Get(0.0))
                CASE 3
                    Set = GET("") & x.Get("")
                CASE ELSE
                    Set = 0
            END SELECT
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.-= (BYREF x AS INTEGER)
    SELECT CASE variante
        CASE 1
            Set = GET(0) - x
        CASE 2
            Set = GET(0.0) - x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.-= (BYREF x AS DOUBLE)
    SELECT CASE variante
        CASE 2
            Set = GET(0.0) - x
        CASE 1
            Set = GET(0) - x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0.0
    END SELECT
END OPERATOR

OPERATOR Variant.-= (BYREF x AS STRING)
    SELECT CASE variante
        CASE 3
            Set = GET("")
        CASE 1
            Set = GET("")
        CASE 2
            Set = GET("")
        CASE ELSE
            Set = ""
    END SELECT
END OPERATOR

OPERATOR Variant.-= (BYREF x AS Variant)
    SELECT CASE variante
        CASE 1
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0) - x.Get(0)
                CASE 2
                    Set = GET(0) - x.Get(0.0)
                CASE 3
                    Set = GET(0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 2
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0.0) - x.Get(0)
                CASE 2
                    Set = GET(0.0) - x.Get(0.0)
                CASE 3
                    Set = GET(0.0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.*= (BYREF x AS INTEGER)
    SELECT CASE variante
        CASE 1
            Set = GET(0) * x
        CASE 2
            Set = GET(0.0) * x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.*= (BYREF x AS DOUBLE)
    SELECT CASE variante
        CASE 2
            Set = GET(0.0) * x
        CASE 1
            Set = GET(0) * x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0.0
    END SELECT
END OPERATOR

OPERATOR Variant.*= (BYREF x AS STRING)
    SELECT CASE variante
        CASE 3
            Set = GET("")
        CASE 1
            Set = GET("")
        CASE 2
            Set = GET("")
        CASE ELSE
            Set = ""
    END SELECT
END OPERATOR

OPERATOR Variant.*= (BYREF x AS Variant)
    SELECT CASE variante
        CASE 1
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0) * x.Get(0)
                CASE 2
                    Set = GET(0) * x.Get(0.0)
                CASE 3
                    Set = GET(0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 2
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0.0) * x.Get(0)
                CASE 2
                    Set = GET(0.0) * x.Get(0.0)
                CASE 3
                    Set = GET(0.0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant./= (BYREF x AS INTEGER)
    SELECT CASE variante
        CASE 1
            Set = GET(0) / x
        CASE 2
            Set = GET(0.0) / x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant./= (BYREF x AS DOUBLE)
    SELECT CASE variante
        CASE 2
            Set = GET(0.0) / x
        CASE 1
            Set = GET(0) / x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0.0
    END SELECT
END OPERATOR

OPERATOR Variant./= (BYREF x AS STRING)
    SELECT CASE variante
        CASE 3
            Set = GET("")
        CASE 1
            Set = GET("")
        CASE 2
            Set = GET("")
        CASE ELSE
            Set = ""
    END SELECT
END OPERATOR

OPERATOR Variant./= (BYREF x AS Variant)
    SELECT CASE variante
        CASE 1
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0) / x.Get(0)
                CASE 2
                    Set = GET(0) / x.Get(0.0)
                CASE 3
                    Set = GET(0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 2
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0.0) / x.Get(0)
                CASE 2
                    Set = GET(0.0) / x.Get(0.0)
                CASE 3
                    Set = GET(0.0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.\= (BYREF x AS INTEGER)
    SELECT CASE variante
        CASE 1
            Set = GET(0) \ x
        CASE 2
            Set = GET(0.0) \ x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.\= (BYREF x AS DOUBLE)
    SELECT CASE variante
        CASE 2
            Set = GET(0.0) \ x
        CASE 1
            Set = GET(0) \ x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.\= (BYREF x AS STRING)
    SELECT CASE variante
        CASE 3
            Set = GET("")
        CASE 1
            Set = GET("")
        CASE 2
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.\= (BYREF x AS Variant)
    SELECT CASE variante
        CASE 1
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0) \ x.Get(0)
                CASE 2
                    Set = GET(0) \ x.Get(0.0)
                CASE 3
                    Set = GET(0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 2
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0.0) \ x.Get(0)
                CASE 2
                    Set = GET(0.0) \ x.Get(0.0)
                CASE 3
                    Set = GET(0.0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.Let(x AS INTEGER)
    Set = x
END OPERATOR

OPERATOR Variant.Let(x AS DOUBLE)
    Set = x
END OPERATOR

OPERATOR Variant.Let(x AS STRING)
    Set = x
END OPERATOR

OPERATOR Variant.Let(x AS Variant)
    SELECT CASE x.Getter
        CASE 1
            Set = x.Get(0)
        CASE 2
            Set = x.Get(0.0)
        CASE 3
            Set = x.Get("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.For

END OPERATOR

OPERATOR Variant.Step
    Set = GET(0) + 1
END OPERATOR

OPERATOR Variant.Next(BYREF x AS Variant) AS INTEGER
    RETURN GET(0) <= x.Get(0)
END OPERATOR

OPERATOR Variant.For(BYREF x AS Variant)

END OPERATOR

OPERATOR Variant.Step(BYREF x AS Variant)
    Set = GET(0) + x.Get(0)
END OPERATOR

OPERATOR Variant.Next(BYREF x AS Variant, BYREF y AS Variant) AS INTEGER
    IF y >= 0 THEN
        RETURN GET(0) <= x.Get(0)
    ELSE
        RETURN GET(0) >= x.Get(0)
    ENDIF
END OPERATOR

OPERATOR Variant.@ () AS UINTEGER PTR
    RETURN wert
END OPERATOR

OPERATOR Variant.[] (index AS UINTEGER) AS UINTEGER
    SELECT CASE variante
        CASE 1, 2
            RETURN 0
        CASE 3
            RETURN (*CAST(ZSTRING PTR, wert))[index]
        CASE ELSE
            RETURN 0
    END SELECT
END OPERATOR
#Endif
End If    
If JobLogic Then
   Write JobLogic Rem JobLogic(vec, __fb_arg_count__ ) As String
Else
#if 0
'########################################################################################
PROPERTY Variant.Get AS ANY PTR
    SELECT CASE variante
        CASE 1
            RETURN CAST(INTEGER PTR, wert)
        CASE 2
            RETURN CAST(DOUBLE PTR, wert)
        CASE 3
            RETURN CAST(ZSTRING PTR, wert)
        CASE ELSE
            RETURN 0
    END SELECT
END PROPERTY

PROPERTY Variant.Get(BYREF x AS INTEGER) AS INTEGER
    IF wert <> 0 THEN
        RETURN *CAST(INTEGER PTR, wert)
    ELSE
        RETURN 0
    ENDIF
END PROPERTY

PROPERTY Variant.Get(BYREF x AS DOUBLE) AS DOUBLE
    IF wert <> 0 THEN
        RETURN *CAST(DOUBLE PTR, wert)
    ELSE
        RETURN 0.0
    ENDIF
END PROPERTY

PROPERTY Variant.Get(BYREF x AS STRING) AS STRING
    IF wert <> 0 THEN
        DIM AS STRING ret = *CAST(ZSTRING PTR, wert)
        IF LEN(ret) = strLength - 1 THEN
            RETURN ret
        ELSE
            ret = ""
            DIM AS INTEGER size = SIZEOF(ZSTRING) * (strLength - 1)
            DIM AS UBYTE PTR temp = CALLOCATE(size, SIZEOF(ZSTRING))

            IF temp <> 0 THEN
                memcpy(temp, CAST(UBYTE PTR, wert), size)
                FOR i AS INTEGER = 0 TO strLength - 2
                    ret &= CHR(temp[i])
                NEXT
                RETURN ret
            ELSE
                RETURN ""
            ENDIF
        ENDIF
    ELSE
        RETURN ""
    ENDIF
END PROPERTY
#Endif
End If
If LowerCust Then
   Write LowerCust Rem LowerCust(vec, __fb_arg_count__ ) As String
Else
#if 0
'########################################################################################
PROPERTY Variant.Set(BYREF x AS INTEGER)
    IF variante <> 1 THEN
        IF variante <> 0 THEN
            DEALLOCATE(wert)
            wert = 0
            strLength = 0
            size = 0
        ENDIF
        variante = 1
        wert = CALLOCATE(1, SIZEOF(INTEGER))
        strLength = 4
        size = 4
    ENDIF

    IF wert <> 0 THEN
        memcpy(CAST(UBYTE PTR, wert), CAST(UBYTE PTR, @x), SIZEOF(INTEGER))
    ELSE
        wert = CALLOCATE(1, SIZEOF(INTEGER))
        IF wert <> 0 THEN
            memcpy(CAST(UBYTE PTR, wert), CAST(UBYTE PTR, @x), SIZEOF(INTEGER))
        ELSE
            '
        ENDIF
    ENDIF
END PROPERTY

PROPERTY Variant.Set(BYREF x AS DOUBLE)
    IF variante <> 2 THEN
        IF variante <> 0 THEN
            DEALLOCATE(wert)
            wert = 0
            strLength = 0
            size = 0
        ENDIF
        variante = 2
        wert = CALLOCATE(1, SIZEOF(DOUBLE))
        strLength = 8
        size = 8
    ENDIF

    IF wert <> 0 THEN
        memcpy(CAST(UBYTE PTR, wert), CAST(UBYTE PTR, @x), SIZEOF(DOUBLE))
    ELSE
        wert = CALLOCATE(1, SIZEOF(DOUBLE))
        IF wert <> 0 THEN
            memcpy(CAST(UBYTE PTR, wert), CAST(UBYTE PTR, @x), SIZEOF(DOUBLE))
        ELSE
            '
        ENDIF
    ENDIF
END PROPERTY

PROPERTY Variant.Set(BYREF x AS STRING)
    strLength = LEN(x) + 1

    SELECT CASE variante
        CASE 3
            IF size <= strLength THEN
                size = (strLength + (strLength SHR 3))
                IF wert <> 0 THEN
                    wert = REALLOCATE(wert, size * SIZEOF(ZSTRING))
                ELSE
                    wert = CALLOCATE(size, SIZEOF(ZSTRING))
                ENDIF
            ENDIF
        CASE 0
            variante = 3
            size = (((strLength) + 31) AND NOT 31)
            wert = CALLOCATE(size, SIZEOF(ZSTRING))
        CASE 1, 2
            DEALLOCATE(wert)
            wert = 0
            variante = 3
            size = (((strLength) + 31) AND NOT 31)
            wert = CALLOCATE(size, SIZEOF(ZSTRING))
        CASE ELSE
            variante = 0
            Set = x
    END SELECT

    IF wert <> 0 THEN
        memcpy(CAST(UBYTE PTR, wert), CAST(UBYTE PTR, STRPTR(x)), SIZEOF(ZSTRING) * (strLength - 1))
    ELSE
        wert = CALLOCATE(size, SIZEOF(ZSTRING))
        IF wert <> 0 THEN
            memcpy(CAST(UBYTE PTR, wert), CAST(UBYTE PTR, STRPTR(x)), SIZEOF(ZSTRING) * (strLength - 1))
        ELSE
            '
        ENDIF
    ENDIF
END PROPERTY

PROPERTY Variant.Set (BYREF x AS Variant)
    SELECT CASE x.Getter
        CASE 1
            Set = x.Get(0)
        CASE 2
            Set = x.Get(0.0)
        CASE 3
            Set = x.Get("")
        CASE ELSE
            Set = 0
    END SELECT
END PROPERTY
#Endif
End If
If Customized Then
   Write Customized Rem Customized (vec, __fb_arg_count__ ) As String
Else
#If 0
'########################################################################################
FUNCTION Variant.Getter AS INTEGER
    RETURN variante
END FUNCTION

FUNCTION Variant.getRealType AS STRING
    SELECT CASE variante
        CASE 1
            RETURN "Integer"
        CASE 2
            RETURN "Double"
        CASE 3
            RETURN "String"
        CASE ELSE
            RETURN "unbekannt"
    END SELECT
END FUNCTION

FUNCTION Variant.leng AS INTEGER
    SELECT CASE variante
        CASE 3
            RETURN (strLength - 1)
        CASE 1
            RETURN 4
        CASE 2
            RETURN 8
        CASE ELSE
            RETURN -1
    END SELECT
END FUNCTION

'########################################################################################
FUNCTION RIGHT OVERLOAD (BYREF x AS Variant, BYREF n AS INTEGER) AS STRING
    RETURN RIGHT(x.Get(""), n)
END FUNCTION

FUNCTION LEFT OVERLOAD (BYREF x AS Variant, BYREF n AS INTEGER) AS STRING
    RETURN LEFT(x.Get(""), n)
END FUNCTION

#IF __FB_VERSION__ <= "0.24"
FUNCTION UCASE OVERLOAD (BYREF x AS Variant) AS STRING
    RETURN UCASE(x.Get(""))
END FUNCTION

FUNCTION LCASE OVERLOAD (BYREF x AS Variant) AS STRING
    RETURN LCASE(x.Get(""))
END FUNCTION
#ENDIF

FUNCTION VAL OVERLOAD (BYREF x AS Variant) AS DOUBLE
    SELECT CASE x.Getter
        CASE 1
            RETURN x.Get(0)
        CASE 2
            RETURN x.Get(0.0)
        CASE 3
            RETURN VAL(x.Get(""))
        CASE ELSE
            RETURN 0
    END SELECT
END FUNCTION

FUNCTION VALINT OVERLOAD (BYREF x AS Variant) AS INTEGER
    SELECT CASE x.Getter
        CASE 1
            RETURN x.Get(0)
        CASE 2
            RETURN CINT(x.Get(0.0))
        CASE 3
            RETURN VALINT(x.Get(""))
        CASE ELSE
            RETURN 0
    END SELECT
END FUNCTION

FUNCTION VALUINT OVERLOAD (BYREF x AS Variant) AS UINTEGER
    SELECT CASE x.Getter
        CASE 1
            RETURN x.Get(0)
        CASE 2
            RETURN CINT(x.Get(0.0))
        CASE 3
            RETURN VALUINT(x.Get(""))
        CASE ELSE
            RETURN 0
    END SELECT
END FUNCTION

FUNCTION VALLNG OVERLOAD (BYREF x AS Variant) AS LONGINT
    SELECT CASE x.Getter
        CASE 1
            RETURN x.Get(0)
        CASE 2
            RETURN CINT(x.Get(0.0))
        CASE 3
            RETURN VALLNG(x.Get(""))
        CASE ELSE
            RETURN 0
    END SELECT
END FUNCTION

FUNCTION VALULNG OVERLOAD (BYREF x AS Variant) AS ULONGINT
    SELECT CASE x.Getter
        CASE 1
            RETURN x.Get(0)
        CASE 2
            RETURN CINT(x.Get(0.0))
        CASE 3
            RETURN VALULNG(x.Get(""))
        CASE ELSE
            RETURN 0
    END SELECT
END FUNCTION

FUNCTION HEX OVERLOAD (BYREF x AS Variant) AS STRING
    SELECT CASE x.Getter
        CASE 1
            RETURN HEX(x.Get(0))
        CASE 2
            RETURN HEX(x.Get(0.0))
        CASE 3
            RETURN HEX(VAL(x.Get("")))
        CASE ELSE
            RETURN ""
    END SELECT
END FUNCTION

FUNCTION WHEX OVERLOAD (BYREF x AS Variant) AS STRING
    SELECT CASE x.Getter
        CASE 1
            RETURN WHEX(x.Get(0))
        CASE 2
            RETURN WHEX(x.Get(0.0))
        CASE 3
            RETURN WHEX(VAL(x.Get("")))
        CASE ELSE
            RETURN ""
    END SELECT
END FUNCTION

FUNCTION BIN OVERLOAD (BYREF x AS Variant, d AS INTEGER = 0) AS STRING
    SELECT CASE x.Getter
        CASE 1
            IF d = 0 THEN
                RETURN BIN(x.Get(0))
            ELSE
                RETURN BIN(x.Get(0), d)
            ENDIF
        CASE 2
            IF d = 0 THEN
                RETURN BIN(x.Get(0.0))
            ELSE
                RETURN BIN(x.Get(0.0), d)
            ENDIF
        CASE 3
            IF d = 0 THEN
                RETURN BIN(VAL(x.Get("")))
            ELSE
                RETURN BIN(VAL(x.Get("")), d)
            ENDIF
        CASE ELSE
            RETURN ""
    END SELECT
END FUNCTION

FUNCTION WBIN OVERLOAD (BYREF x AS Variant, BYREF d AS INTEGER = 0) AS STRING
    SELECT CASE x.Getter
        CASE 1
            IF d = 0 THEN
                RETURN WBIN(x.Get(0))
            ELSE
                RETURN WBIN(x.Get(0), d)
            ENDIF
        CASE 2
            IF d = 0 THEN
                RETURN WBIN(x.Get(0.0))
            ELSE
                RETURN WBIN(x.Get(0.0), d)
            ENDIF
        CASE 3
            IF d = 0 THEN
                RETURN WBIN(VAL(x.Get("")))
            ELSE
                RETURN WBIN(VAL(x.Get("")), d)
            ENDIF
        CASE ELSE
            RETURN ""
    END SELECT
END FUNCTION

'Function Dir OverLoad (x As Variant, y As Integer = &H21, z As Integer Ptr = 0) As Variant
'   Dim As String temp
'   Dim As Variant ret
'   temp = x
'   ret = Dir(temp, y, z)
'   Return ret
'End Function


'########################################################################################
OPERATOR + (BYREF lhs AS Variant, BYREF rhs AS INTEGER) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN lhs.Get(0) + rhs
        CASE 2
            RETURN lhs.Get(0.0) + rhs
        CASE 3
            RETURN rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR + (BYREF lhs AS INTEGER, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs + rhs.Get(0)
        CASE 2
            RETURN lhs + rhs.Get(0.0)
        CASE 3
            RETURN lhs
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

OPERATOR - (BYREF lhs AS Variant, BYREF rhs AS INTEGER) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN lhs.Get(0) - rhs
        CASE 2
            RETURN lhs.Get(0.0) - rhs
        CASE 3
            RETURN rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR - (BYREF lhs AS INTEGER, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs - rhs.Get(0)
        CASE 2
            RETURN lhs - rhs.Get(0.0)
        CASE 3
            RETURN lhs
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

OPERATOR * (BYREF lhs AS Variant, BYREF rhs AS INTEGER) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN lhs.Get(0) * rhs
        CASE 2
            RETURN lhs.Get(0.0) * rhs
        CASE 3
            RETURN rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR * (BYREF lhs AS INTEGER, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs * rhs.Get(0)
        CASE 2
            RETURN lhs * rhs.Get(0.0)
        CASE 3
            RETURN lhs
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

OPERATOR / (BYREF lhs AS Variant, BYREF rhs AS INTEGER) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN lhs.Get(0) / rhs
        CASE 2
            RETURN lhs.Get(0.0) / rhs
        CASE 3
            RETURN rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR / (BYREF lhs AS INTEGER, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs / rhs.Get(0)
        CASE 2
            RETURN lhs / rhs.Get(0.0)
        CASE 3
            RETURN lhs
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

OPERATOR \ (BYREF lhs AS Variant, BYREF rhs AS INTEGER) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN lhs.Get(0) \ rhs
        CASE 2
            RETURN lhs.Get(0.0) \ rhs
        CASE 3
            RETURN rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR \ (BYREF lhs AS INTEGER, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs \ rhs.Get(0)
        CASE 2
            RETURN lhs \ rhs.Get(0.0)
        CASE 3
            RETURN lhs
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

OPERATOR + (BYREF lhs AS Variant, BYREF rhs AS DOUBLE) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN lhs.Get(0) + rhs
        CASE 2
            RETURN lhs.Get(0.0) + rhs
        CASE 3
            RETURN rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR + (BYREF lhs AS DOUBLE, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs + rhs.Get(0)
        CASE 2
            RETURN lhs + rhs.Get(0.0)
        CASE 3
            RETURN lhs
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

OPERATOR - (BYREF lhs AS Variant, BYREF rhs AS DOUBLE) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN lhs.Get(0) - rhs
        CASE 2
            RETURN lhs.Get(0.0) - rhs
        CASE 3
            RETURN rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR - (BYREF lhs AS DOUBLE, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs - rhs.Get(0)
        CASE 2
            RETURN lhs - rhs.Get(0.0)
        CASE 3
            RETURN lhs
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

OPERATOR * (BYREF lhs AS Variant, BYREF rhs AS DOUBLE) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN lhs.Get(0) * rhs
        CASE 2
            RETURN lhs.Get(0.0) * rhs
        CASE 3
            RETURN rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR * (BYREF lhs AS DOUBLE, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs * rhs.Get(0)
        CASE 2
            RETURN lhs * rhs.Get(0.0)
        CASE 3
            RETURN lhs
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

OPERATOR / (BYREF lhs AS Variant, BYREF rhs AS DOUBLE) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN lhs.Get(0) / rhs
        CASE 2
            RETURN lhs.Get(0.0) / rhs
        CASE 3
            RETURN rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR / (BYREF lhs AS DOUBLE, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs / rhs.Get(0)
        CASE 2
            RETURN lhs / rhs.Get(0.0)
        CASE 3
            RETURN lhs
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

OPERATOR \ (BYREF lhs AS Variant, BYREF rhs AS DOUBLE) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN lhs.Get(0) \ rhs
        CASE 2
            RETURN lhs.Get(0.0) \ rhs
        CASE 3
            RETURN rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR \ (BYREF lhs AS DOUBLE, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs \ rhs.Get(0)
        CASE 2
            RETURN lhs \ rhs.Get(0.0)
        CASE 3
            RETURN lhs
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

OPERATOR + (BYREF lhs AS Variant, BYREF rhs AS Variant) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get(0) + rhs.Get(0)
                CASE 2
                    RETURN lhs.Get(0) + rhs.Get(0.0)
                CASE 3
                    RETURN lhs.Get(0)
                CASE ELSE
                    RETURN lhs.Get(0)
            END SELECT
        CASE 2
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get(0.0) + rhs.Get(0)
                CASE 2
                    RETURN lhs.Get(0.0) + rhs.Get(0.0)
                CASE 3
                    RETURN lhs.Get(0.0)
                CASE ELSE
                    RETURN lhs.Get(0.0)
            END SELECT
        CASE 3
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get("") & STR(rhs.Get(0))
                CASE 2
                    RETURN lhs.Get("") & STR(rhs.Get(0.0))
                CASE 3
                    RETURN lhs.Get("") & rhs.Get("")
                CASE ELSE
                    RETURN lhs.Get("")
            END SELECT
        CASE ELSE
            RETURN 0
    END SELECT
END OPERATOR

OPERATOR - (BYREF lhs AS Variant, BYREF rhs AS Variant) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get(0) - rhs.Get(0)
                CASE 2
                    RETURN lhs.Get(0) - rhs.Get(0.0)
                CASE 3
                    RETURN lhs.Get(0)
                CASE ELSE
                    RETURN lhs.Get(0)
            END SELECT
        CASE 2
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get(0.0) - rhs.Get(0)
                CASE 2
                    RETURN lhs.Get(0.0) - rhs.Get(0.0)
                CASE 3
                    RETURN lhs.Get(0.0)
                CASE ELSE
                    RETURN lhs.Get(0.0)
            END SELECT
        CASE 3
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN 0 - rhs.Get(0)
                CASE 2
                    RETURN 0 - rhs.Get(0.0)
                CASE 3
                    RETURN 0
                CASE ELSE
                    RETURN 0
            END SELECT
        CASE ELSE
            RETURN 0
    END SELECT
END OPERATOR

OPERATOR * (BYREF lhs AS Variant, BYREF rhs AS Variant) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get(0) * rhs.Get(0)
                CASE 2
                    RETURN lhs.Get(0) * rhs.Get(0.0)
                CASE 3
                    RETURN lhs.Get(0)
                CASE ELSE
                    RETURN lhs.Get(0)
            END SELECT
        CASE 2
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get(0.0) * rhs.Get(0)
                CASE 2
                    RETURN lhs.Get(0.0) * rhs.Get(0.0)
                CASE 3
                    RETURN lhs.Get(0.0)
                CASE ELSE
                    RETURN lhs.Get(0.0)
            END SELECT
        CASE 3
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN rhs.Get(0)
                CASE 2
                    RETURN rhs.Get(0.0)
                CASE 3
                    RETURN 0
                CASE ELSE
                    RETURN 0
            END SELECT
        CASE ELSE
            RETURN 0
    END SELECT
END OPERATOR

OPERATOR / (BYREF lhs AS Variant, BYREF rhs AS Variant) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get(0) / rhs.Get(0)
                CASE 2
                    RETURN lhs.Get(0) / rhs.Get(0.0)
                CASE 3
                    RETURN lhs.Get(0)
                CASE ELSE
                    RETURN lhs.Get(0)
            END SELECT
        CASE 2
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get(0.0) / rhs.Get(0)
                CASE 2
                    RETURN lhs.Get(0.0) / rhs.Get(0.0)
                CASE 3
                    RETURN lhs.Get(0.0)
                CASE ELSE
                    RETURN lhs.Get(0.0)
            END SELECT
        CASE 3
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN rhs.Get(0)
                CASE 2
                    RETURN rhs.Get(0.0)
                CASE 3
                    RETURN 0
                CASE ELSE
                    RETURN 0
            END SELECT
        CASE ELSE
            RETURN 0
    END SELECT
END OPERATOR

OPERATOR \ (BYREF lhs AS Variant, BYREF rhs AS Variant) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get(0) \ rhs.Get(0)
                CASE 2
                    RETURN lhs.Get(0) \ rhs.Get(0.0)
                CASE 3
                    RETURN lhs.Get(0)
                CASE ELSE
                    RETURN lhs.Get(0)
            END SELECT
        CASE 2
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN lhs.Get(0.0) \ rhs.Get(0)
                CASE 2
                    RETURN lhs.Get(0.0) \ rhs.Get(0.0)
                CASE 3
                    RETURN lhs.Get(0.0)
                CASE ELSE
                    RETURN lhs.Get(0.0)
            END SELECT
        CASE 3
            SELECT CASE rhs.Getter
                CASE 1
                    RETURN rhs.Get(0)
                CASE 2
                    RETURN rhs.Get(0.0)
                CASE 3
                    RETURN 0
                CASE ELSE
                    RETURN 0
            END SELECT
    END SELECT
END OPERATOR

OPERATOR + (BYREF lhs AS Variant, BYREF rhs AS STRING) AS Variant
    SELECT CASE lhs.Getter
        CASE 1
            RETURN STR(lhs.Get(0)) & rhs
        CASE 2
            RETURN STR(lhs.Get(0.0)) & rhs
        CASE 3
            RETURN lhs.Get("") & rhs
        CASE ELSE
            RETURN rhs
    END SELECT
END OPERATOR

OPERATOR + (BYREF lhs AS STRING, BYREF rhs AS Variant) AS Variant
    SELECT CASE rhs.Getter
        CASE 1
            RETURN lhs & STR(rhs.Get(0))
        CASE 2
            RETURN lhs & STR(rhs.Get(0.0))
        CASE 3
            RETURN lhs & rhs.Get("")
        CASE ELSE
            RETURN lhs
    END SELECT
END OPERATOR

'########################################################################################
FUNCTION VGetMouse(BYREF x AS Variant, BYREF y AS Variant, BYREF wheel AS Variant = 0, BYREF buttons AS Variant = 0, BYREF clip AS Variant = 0) AS INTEGER
    DIM AS INTEGER xr, yr, wheelr, buttonsr, clipr, ret
    ret = GETMOUSE(xr, yr, wheelr, buttonsr, clipr)
    x = xr
    y = yr
    wheel = wheelr
    buttons = buttonsr
    clip = clipr
    RETURN ret
END FUNCTION

#DEFINE Length(x) x.leng
#Endif
'########################################################################################
End If
END SUB                         
#Endif