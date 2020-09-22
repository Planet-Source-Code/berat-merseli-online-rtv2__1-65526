VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   0  'None
   Caption         =   " About Online RTV"
   ClientHeight    =   4185
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5280
   Icon            =   "frmAbout.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmAbout.frx":08CA
   ScaleHeight     =   4185
   ScaleWidth      =   5280
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer3 
      Interval        =   1
      Left            =   3480
      Top             =   1200
   End
   Begin VB.Timer Trans 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   2520
      Top             =   1200
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   1440
      Top             =   1200
   End
   Begin VB.Image Image1 
      Height          =   255
      Left            =   1680
      Top             =   3240
      Width           =   2175
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'**********************************************
'**  Program Name:  Online RTV   (©2006)     **
'**  Program Description:  Online RTV 2.01   **
'**        Online Radio & TV Tunner          **
'**  Programmer:    Berat Merseli            **
'**  E-mail:  berat.merseli@yahoo.com        **
'**********************************************
Private Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hwnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long

Private Const GWL_EXSTYLE = (-20)
Private Const LWA_ALPHA = &H2
Private Const WS_EX_LAYERED = &H80000


Dim Current As Integer
Dim Max As Integer

Private Sub Trans_Timer()

Current = Current - 5
If Current + 1 <= Max Then
    Trans.Enabled = False
    Transparent frmAbout.hwnd, 0
    Unload Me
    Exit Sub
End If

Transparent frmAbout.hwnd, Current

End Sub

Private Sub Form_Load()
Trans.Interval = 1
Current = 0
Max = 255
Transparent frmAbout.hwnd, Current
Frm = 255
End Sub

Private Function Transparent(ByVal hwnd As Long, Perc As Integer) As Long
    Dim MSG As Long
    On Error Resume Next
    If Perc < 0 Or Perc > 255 Then
      Transparent = 1
    Else
      MSG = GetWindowLong(hwnd, GWL_EXSTYLE)
      MSG = MSG Or WS_EX_LAYERED
      SetWindowLong hwnd, GWL_EXSTYLE, MSG
      SetLayeredWindowAttributes hwnd, 0, Perc, LWA_ALPHA
      Transparent = 0
    End If
    If Err Then
      Transparent = 2
    End If
End Function

Private Sub Timer1_Timer()
Timer1.Enabled = False
Current = 255
Max = 0
Transparent frmAbout.hwnd, Current
Trans.Enabled = True
End Sub


Private Sub Timer3_Timer()
Current = Current + 5
If Current - 1 >= Max Then
    Timer3.Enabled = False
    Transparent frmAbout.hwnd, 255
    Timer1.Enabled = True
    Exit Sub
End If

Transparent frmAbout.hwnd, Current
End Sub



