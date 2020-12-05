; Make (CTRL + ALT + Right Click a window) turns the window transparent
; Source: https://stackoverflow.com/a/45246326/6817437

^!RButton::
WinGet, currentTransparency, Transparent, A
if (currentTransparency = 230)
{
    WinSet, Transparent, OFF, A
}
else
{
    WinSet, Transparent, 230, A
}
return