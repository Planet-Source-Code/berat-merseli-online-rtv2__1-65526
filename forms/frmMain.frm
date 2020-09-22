VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form frmMain 
   BorderStyle     =   0  'None
   Caption         =   "Online RTV"
   ClientHeight    =   4185
   ClientLeft      =   5025
   ClientTop       =   -4140
   ClientWidth     =   5265
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmMain.frx":08CA
   ScaleHeight     =   4185
   ScaleMode       =   0  'User
   ScaleWidth      =   5280
   ShowInTaskbar   =   0   'False
   Begin Project1.FileDownloader FileDownloader 
      Left            =   3960
      Top             =   4560
      _ExtentX        =   1799
      _ExtentY        =   1667
   End
   Begin VB.TextBox Text 
      Height          =   285
      Left            =   360
      TabIndex        =   5
      Text            =   "http://www.mobiclassic.org/bmsoft/fmstacionet.dat"
      Top             =   4680
      Width           =   3495
   End
   Begin Project1.isButton bbUpdate 
      Height          =   300
      Left            =   0
      TabIndex        =   4
      Top             =   840
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   529
      Icon            =   "frmMain.frx":11B45
      Style           =   9
      Caption         =   "Check Update"
      IconAlign       =   1
      iNonThemeStyle  =   0
      Tooltiptitle    =   ""
      ToolTipIcon     =   0
      ToolTipType     =   0
      ttForeColor     =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin Project1.XandersXPTaskBar XandersXPTaskBar1 
      Left            =   3600
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      Alignment       =   3
   End
   Begin VB.ListBox rLista 
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   1635
      ItemData        =   "frmMain.frx":11B61
      Left            =   1080
      List            =   "frmMain.frx":11B63
      TabIndex        =   1
      Top             =   1560
      Width           =   4095
   End
   Begin Project1.isButton bbStop 
      Height          =   300
      Left            =   4560
      TabIndex        =   3
      Top             =   3240
      Width           =   495
      _ExtentX        =   873
      _ExtentY        =   529
      Icon            =   "frmMain.frx":11B65
      Style           =   9
      Caption         =   "Stop"
      IconAlign       =   1
      iNonThemeStyle  =   0
      Tooltiptitle    =   ""
      ToolTipIcon     =   0
      ToolTipType     =   0
      ttForeColor     =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   10
      TabIndex        =   7
      Top             =   0
      Width           =   135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   5116
      TabIndex        =   6
      Top             =   0
      Width           =   135
   End
   Begin VB.Image Image1 
      Height          =   615
      Left            =   3960
      Top             =   3600
      Width           =   1335
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "About Me"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   4200
      TabIndex        =   2
      Top             =   720
      Width           =   975
   End
   Begin WMPLibCtl.WindowsMediaPlayer wmpr 
      Height          =   915
      Left            =   1080
      TabIndex        =   0
      Top             =   1320
      Width           =   4080
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
      uiMode          =   "mini"
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
      _cx             =   7197
      _cy             =   1614
   End
End
Attribute VB_Name = "frmMain"
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
Option Explicit
Dim ArrStations() As String
Public Event Click(ClickWhat As String)

Private Sub bbStop_Click()
On Error GoTo ErrorHandler

wmpr.Close

Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly

End Sub

Private Sub bbUpdate_Click()
On Error GoTo ErrorHandler
    If bbUpdate.Caption = "Download" Then
        If Trim(Text.Text) <> "" Then
            Text.Enabled = False
            
            bbUpdate.Caption = "Cancel"
            
            
            FileDownloader.DownloadFile Text.Text, App.Path & "\" & GetFileName(Text.Text)
        End If
    Else
        FileDownloader.Cancel
        
        Text.Enabled = True
        
        
        bbUpdate.Caption = "Download"
    End If

Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly

End Sub
Private Sub FileDownloader_DowloadComplete()
    MsgBox "Download complete", vbOKOnly + vbInformation, "Success"
    
    Text.Enabled = True
    
    bbUpdate.Caption = "Check Update"
    
    rLista.Refresh
    End Sub

Private Sub FileDownloader_DownloadErrors(strError As String)
    MsgBox strError, vbOKOnly + vbCritical, "Error"
    
    Text.Enabled = True
    
    bbUpdate.Caption = "Download"
    
  
    FileDownloader.Cancel
End Sub

Private Sub Form_Load()
On Error Resume Next
 Dim Tmp, Tmparray
 ReDim ArrStations(0) As String
 If Dir(App.Path & "\fmstacionet.dat") <> "" Then
    Open App.Path & "\fmstacionet.dat" For Input As #1
        rLista.Clear
        While Not EOF(1)
        Line Input #1, Tmp
        If Trim(Tmp) <> "" Then
            Tmparray = Split(Tmp, "==>")
            ReDim Preserve ArrStations(UBound(ArrStations) + 1) As String
            If Tmparray(0) <> "" Then
                ArrStations(UBound(ArrStations) - 1) = Trim(Tmparray(1))
                rLista.AddItem Trim(Tmparray(0))
            End If
        End If
    Wend
Close #1
End If

End Sub

Private Sub Image1_Click()
On Error GoTo ErrorHandler

frmMainTV.Show
Unload Me
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly

End Sub

Private Sub Label1_Click()
On Error GoTo ErrorHandler
frmAbout.Show
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly
End Sub

Private Sub Label2_Click(Index As Integer)
On Error GoTo ErrorHandler
Unload Me
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly

End Sub

Private Sub rLista_DblClick()
On Error GoTo ErrorHandler
Call rLista_Change
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly

End Sub
Private Sub rLista_Change()
On Error GoTo ErrorHandler
wmpr.Close
wmpr.URL = ArrStations(rLista.ListIndex)
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly

End Sub
