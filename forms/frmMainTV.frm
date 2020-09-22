VERSION 5.00
Begin VB.Form frmMainTV 
   BorderStyle     =   0  'None
   Caption         =   "Online RTV"
   ClientHeight    =   4200
   ClientLeft      =   5040
   ClientTop       =   -4155
   ClientWidth     =   5280
   Icon            =   "frmMainTV.frx":0000
   LinkTopic       =   "frmMainTv"
   Picture         =   "frmMainTV.frx":08CA
   ScaleHeight     =   4200
   ScaleWidth      =   5280
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   3480
      TabIndex        =   9
      Text            =   "http://www.mobiclassic.org/bmsoft/tvadult.dat"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.ListBox aLista 
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1635
      Left            =   1440
      TabIndex        =   8
      Top             =   1440
      Visible         =   0   'False
      Width           =   3735
   End
   Begin Project1.isButton hAdult 
      Height          =   375
      Left            =   1560
      TabIndex        =   5
      Top             =   3120
      Visible         =   0   'False
      Width           =   3495
      _ExtentX        =   6165
      _ExtentY        =   661
      Icon            =   "frmMainTV.frx":148A1
      Style           =   9
      Caption         =   "Hide Adult TV"
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
   Begin Project1.isButton sAdult 
      Height          =   375
      Left            =   1560
      TabIndex        =   4
      Top             =   3120
      Width           =   3495
      _ExtentX        =   6165
      _ExtentY        =   661
      Icon            =   "frmMainTV.frx":148BD
      Style           =   9
      Caption         =   "Show Adult TV (RESTRICT +18)"
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
   Begin VB.TextBox Text 
      Height          =   315
      Left            =   360
      TabIndex        =   3
      Text            =   "http://www.mobiclassic.org/bmsoft/tvstacionet.dat"
      Top             =   4560
      Width           =   3855
   End
   Begin Project1.FileDownloader FileDownloader 
      Left            =   3600
      Top             =   5280
      _ExtentX        =   1799
      _ExtentY        =   1667
   End
   Begin Project1.isButton bbUpdate 
      Height          =   300
      Left            =   0
      TabIndex        =   2
      Top             =   840
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   529
      Icon            =   "frmMainTV.frx":148D9
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
   Begin VB.ListBox tLista 
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
      Left            =   1440
      TabIndex        =   0
      Top             =   1440
      Width           =   3735
   End
   Begin Project1.XandersXPTaskBar XandersXPTaskBar1 
      Left            =   2880
      Top             =   5520
      _ExtentX        =   847
      _ExtentY        =   847
      Alignment       =   3
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
      Left            =   0
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
      Left            =   5160
      TabIndex        =   6
      Top             =   0
      Width           =   135
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
      TabIndex        =   1
      Top             =   720
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   615
      Left            =   3960
      Top             =   3600
      Width           =   1095
   End
End
Attribute VB_Name = "frmMainTV"
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
Dim AssStations() As String
Public Event Click(ClickWhat As String)

Private Sub aLista_DblClick()
On Error GoTo ErrorHandler
Call aLista_Change
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly
End Sub

Private Sub aLista_Change()
On Error GoTo ErrorHandler
frmTV.Show
frmTV.wmpt.Close
frmTV.wmpt.URL = AssStations(aLista.ListIndex)
frmTV.Timer1.Enabled = True
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly
End Sub

Private Sub bbUpdate_Click()
    If bbUpdate.Caption = "Download" Then
        If Trim(Text.Text) <> "" Then
            Text.Enabled = False
        If Trim(Text1.Text) <> "" Then
            Text1.Enabled = False
            bbUpdate.Caption = "Cancel"
            FileDownloader.DownloadFile Text.Text, App.Path & "\" & GetFileName(Text.Text)
            FileDownloader.DownloadFile Text1.Text, App.Path & "\" & GetFileName(Text1.Text)
        End If
        End If
    Else
        FileDownloader.Cancel
        Text.Enabled = True
        Text1.Enabled = True
        bbUpdate.Caption = "Download"
    End If
End Sub

Private Sub FileDownloader_DowloadComplete()
    MsgBox "Download complete: Restart Program to take effect", vbOKOnly + vbInformation, "Success"
    Text.Enabled = True
    bbUpdate.Caption = "Check Update"
    tLista.Refresh
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
 If Dir(App.Path & "\tvstacionet.dat") <> "" Then
    Open App.Path & "\tvstacionet.dat" For Input As #1
        tLista.Clear
        While Not EOF(1)
        Line Input #1, Tmp
        If Trim(Tmp) <> "" Then
            Tmparray = Split(Tmp, "||>")
            ReDim Preserve ArrStations(UBound(ArrStations) + 1) As String
            If Tmparray(0) <> "" Then
                ArrStations(UBound(ArrStations) - 1) = Trim(Tmparray(1))
                tLista.AddItem Trim(Tmparray(0))
            End If
        End If
    Wend
Close #1
End If
 Dim Tmp1, Tmparray1
 ReDim AssStations(0) As String
 If Dir(App.Path & "\tvadult.dat") <> "" Then
    Open App.Path & "\tvadult.dat" For Input As #1
        aLista.Clear
        While Not EOF(1)
        Line Input #1, Tmp1
        If Trim(Tmp1) <> "" Then
            Tmparray1 = Split(Tmp1, "||>")
            ReDim Preserve AssStations(UBound(AssStations) + 1) As String
            If Tmparray1(0) <> "" Then
                AssStations(UBound(AssStations) - 1) = Trim(Tmparray1(1))
                aLista.AddItem Trim(Tmparray1(0))
            End If
        End If
    Wend
Close #1
End If
End Sub

Private Sub hAdult_Click()
On Error GoTo ErrorHandler
sAdult.Visible = True
hAdult.Visible = False
aLista.Visible = False
tLista.Visible = True
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly
End Sub

Private Sub Image1_Click()
On Error GoTo ErrorHandler
frmMain.Show
Unload Me
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly
End Sub

Private Sub Label1_Click()
frmAbout.Show
End Sub

Private Sub Label2_Click(Index As Integer)
Unload Me
End Sub

Private Sub sAdult_Click()
On Error GoTo ErrorHandler
hAdult.Visible = True
sAdult.Visible = False
tLista.Visible = False
aLista.Visible = True
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly
End Sub

Private Sub tLista_DblClick()
On Error GoTo ErrorHandler
Call tLista_Change
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly
End Sub

Private Sub tLista_Change()
On Error GoTo ErrorHandler
frmTV.Show
frmTV.wmpt.Close
frmTV.wmpt.URL = ArrStations(tLista.ListIndex)
frmTV.Timer1.Enabled = True
Exit Sub
ErrorHandler:
MsgBox "Check Internet Connection.", vbInformation + vbOKOnly
End Sub
