global WS_VSCROLL := 0x200000, SIZE_MINIMIZED := 1, SIF_RANGE := 0x1, SIF_PAGE := 0x2
     , SB_VERT := 1, SB_LINEUP := 0, SB_LINEDOWN := 1, WM_VSCROLL := 0x115

Gui +%WS_VSCROLL% +Resize +hwndhGui
Gui, Margin, 10, 10
Loop 20
   Gui, Add, Edit, w200 h80
ScrollSize := 80*20 + 10*19 + 20
Gui, Show, h400

OnMessage(0x20A, Func("WM_MOUSEWHEEL").Bind(hGui))
OnMessage(0x5, Func("WM_SIZE").Bind(ScrollSize))
OnMessage(0x115, "WM_VSCROLL")

UpdateScrollBar(hGui, ScrollSize, 400)
Return

GuiClose:
   ExitApp
   
WM_SIZE(ScrollSize, wp, lp, msg, hWnd)
{
   if (wp = SIZE_MINIMIZED)
      Return
   
   GuiWidth := lp & 0xFFFF, GuiHeight := lp >> 16
   Loop 20
      GuiControl, Move, Edit%A_Index%, % "w" GuiWidth - 20
   UpdateScrollBar(hWnd, ScrollSize, GuiHeight)
}

WM_MOUSEWHEEL(hWnd, wp)
{
   Loop 4
      WM_VSCROLL(wp>>16 & 0xFFFF < 0x7FFF ? SB_LINEUP : SB_LINEDOWN, 0, WM_VSCROLL, hWnd)
}

UpdateScrollBar(hWnd, ScrollHeight, GuiHeight)
{
   VarSetCapacity(si, 28, 0)
   NumPut(28, si) ; cbSize
   NumPut(SIF_RANGE | SIF_PAGE, si, 4)
   NumPut(ScrollHeight, si, 12) ; nMax
   NumPut(GuiHeight, si, 16) ; nPage
   DllCall("SetScrollInfo", Ptr, hWnd, UInt, SB_VERT, Ptr, &si, UInt, 1)
   
   GuiControlGet, Pos, %hWnd%: Pos, Edit1
   if (PosY = 10)
      Return
   
   top := PosY - 10
   GuiControlGet, Pos, %hWnd%: Pos, Edit20
   bottom := PosY + PosH + 10
   if (top < 0 && bottom < GuiHeight)
   {
      y := (a := Abs(top)) > (b := GuiHeight-bottom) ? b : a
      DllCall("ScrollWindow", Ptr, hWnd, Int, 0, Int, y, Ptr, 0, Ptr, 0)
   }
}

WM_VSCROLL(wParam, lParam, msg, hwnd)
{
   static SIF_ALL:=0x17, SCROLL_STEP:=10
   bar := msg=0x115 ; SB_HORZ=0, SB_VERT=1

   VarSetCapacity(si, 28, 0)
   NumPut(28, si, "UInt") ; cbSize
   NumPut(SIF_ALL, si, 4, "UInt") ; fMask
   if !DllCall("GetScrollInfo", Ptr, hwnd, Int, bar, Ptr, &si)
     return

   VarSetCapacity(rect, 16)
   DllCall("GetClientRect", Ptr, hwnd, Ptr, &rect)

   new_pos := NumGet(si, 20, "UInt") ; nPos

   action := wParam & 0xFFFF
   if action = 0 ; SB_LINEUP
     new_pos -= SCROLL_STEP
   else if action = 1 ; SB_LINEDOWN
     new_pos += SCROLL_STEP
   else if action = 2 ; SB_PAGEUP
     new_pos -= NumGet(rect, 12, "Int") - SCROLL_STEP
   else if action = 3 ; SB_PAGEDOWN
     new_pos += NumGet(rect, 12, "Int") - SCROLL_STEP
   else if (action = 5 || action = 4) ; SB_THUMBTRACK || SB_THUMBPOSITION
     new_pos := wParam>>16
   else if action = 6 ; SB_TOP
     new_pos := NumGet(si, 8, "Int") ; nMin
   else if action = 7 ; SB_BOTTOM
     new_pos := NumGet(si, 12, "Int") ; nMax
   else
     return

   min := NumGet(si, 8, "Int") ; nMin
   max := NumGet(si, 12, "Int") - NumGet(si, 16, "UInt") ; nMax-nPage
   new_pos := new_pos > max ? max : new_pos
   new_pos := new_pos < min ? min : new_pos

   old_pos := NumGet(si, 20, "Int") ; nPos

   y := old_pos-new_pos
   ; Scroll contents of window and invalidate uncovered area.
   DllCall("ScrollWindow", Ptr, hwnd, Int, 0, Int, y, UInt, 0, UInt, 0)

   ; Update scroll bar.
   NumPut(new_pos, si, 20, "Int") ; nPos
   DllCall("SetScrollInfo", Ptr, hwnd, Int, bar, Ptr, &si, Int, 1)
}