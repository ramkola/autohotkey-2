; The PrintScreen button auto opens Paint and pastes it into the canvas. (it also saves your current clipboard)
PrintScreen::
clipsave = %clipboard%
Send, #{PRINTSCREEN}
Run, mspaint.exe
WinWaitActive ahk_class MSPaintApp
{
Send, ^v
}
clipboard = %clipsave%
coolTip("screen printed!")
return