#Requires AutoHotkey v2.0

; Move Window Up
F13 & W::
{
    WinGetPos &X, &Y, &W, &H, "A"
    WinMove X,Y-200,W,H,"A"
    return
}

; Move Window Left
F13 & A::
{
    WinGetPos &X, &Y, &W, &H, "A"
    WinMove X-200,Y,W,H,"A"
    return
}

; Move Window down
F13 & S::
{
    WinGetPos &X, &Y, &W, &H, "A"
    WinMove X,Y+200,W,H,"A"
    return
}

; Move Window right
F13 & D::
{
    WinGetPos &X, &Y, &W, &H, "A"
    WinMove X+200,Y,W,H,"A"
    return
}

; Compress Window left
#HotIf GetKeyState("Alt")
F14 & A::
{
    WinGetPos &X, &Y, &W, &H, "A"
    WinMove X,Y,W-200,H,"A"
    return
}

; Expand window left
#HotIf
F14 & A::
{
    WinGetPos &X, &Y, &W, &H, "A"
    WinMove X-200,Y,W+200,H,"A"
    return
}

; Compress Window right
#HotIf GetKeyState("Alt")
F14 & D::
{
    WinGetPos &X, &Y, &W, &H, "A"
    WinMove X+200,Y,W-200,H,"A"
    return
}

; Expand window right
#HotIf
F14 & D::
{
    WinGetPos &X, &Y, &W, &H, "A"
    WinMove X,Y,W+200,H,"A"
    return
}

; Type Clipboard Contents
F22::
{
    SendInput "{Raw}" A_Clipboard
}