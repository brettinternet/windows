; Make (CTRL + ALT + Right Click a window) turns the window transparent

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