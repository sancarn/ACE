Gui, Add, ActiveX, w800 h800 vwb, Shell.Explorer
wb.Navigate(A_WorkingDir . "\ed.html")
Gui,+AlwaysOnTop +Resize +MaximizeBox +MinimizeBox
Gui,Show
while wb.busy
    sleep 10
window := wb.document.parentWindow
return

GuiClose:
    ExitApp