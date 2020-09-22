VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form frmTV 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "  Online RTV"
   ClientHeight    =   5940
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   7500
   Icon            =   "frmTV.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Picture         =   "frmTV.frx":08CA
   ScaleHeight     =   5940
   ScaleWidth      =   7500
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   15000
      Left            =   6000
      Top             =   480
   End
   Begin WMPLibCtl.WindowsMediaPlayer wmpt 
      Height          =   4200
      Left            =   0
      TabIndex        =   0
      Top             =   720
      Visible         =   0   'False
      Width           =   7500
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "none"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   0   'False
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   13229
      _cy             =   7408
   End
End
Attribute VB_Name = "frmTV"
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
Private Sub Image1_Click()
On Error GoTo ErrorHandler
wmpt.Close
Unload Me
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly

End Sub

Private Sub Timer1_Timer()
Current = Current + 15
If Current - 1 >= Max Then
    Timer1.Enabled = False
    wmpt.Visible = True
    Exit Sub
End If

End Sub
