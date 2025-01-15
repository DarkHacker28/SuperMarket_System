VERSION 5.00
Begin VB.Form frmxLogIn 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Login"
   ClientHeight    =   3060
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4485
   Icon            =   "frmLogIn.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3060
   ScaleWidth      =   4485
   StartUpPosition =   2  'CenterScreen
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   9
      Top             =   960
      Width           =   6615
      _ExtentX        =   11668
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   240
      TabIndex        =   6
      Top             =   2280
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   53
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00ECF4F4&
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   2880
      Picture         =   "frmLogIn.frx":08CA
      TabIndex        =   5
      Top             =   2400
      Width           =   1455
   End
   Begin VB.CommandButton cmd 
      BackColor       =   &H00ECF4F4&
      Caption         =   "OK"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   1320
      Picture         =   "frmLogIn.frx":1264
      TabIndex        =   4
      Top             =   2400
      Width           =   1455
   End
   Begin VB.TextBox txt 
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      IMEMode         =   3  'DISABLE
      Index           =   1
      Left            =   1440
      PasswordChar    =   "l"
      TabIndex        =   1
      Top             =   1680
      Width           =   2895
   End
   Begin VB.TextBox txt 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   0
      Left            =   1440
      TabIndex        =   0
      Top             =   1200
      Width           =   2895
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Login !"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   495
      Left            =   1080
      TabIndex        =   8
      Top             =   120
      Width           =   3735
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   240
      Picture         =   "frmLogIn.frx":1BFE
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Type Username and Password to login."
      Height          =   375
      Left            =   1080
      TabIndex        =   7
      Top             =   600
      Width           =   4575
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Password:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Index           =   1
      Left            =   240
      TabIndex        =   3
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Username:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Index           =   0
      Left            =   240
      TabIndex        =   2
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   8055
   End
End
Attribute VB_Name = "frmxLogIn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim passattemp As Integer
Private Declare Function InitCommonControls Lib "comctl32.dll" () As Long
Private Sub cmd_Click(Index As Integer)
On Error Resume Next
Select Case Index
Case 0
If txt(0) = "" Then
MsgBox "Type username", vbInformation, "Warning!"
txt(0).SetFocus
Exit Sub
End If
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbuser
ac.Open strConek
With ar
criteria = "Select *From tblPerdoruesit Where perdoruesi='" & txt(0) & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount >= 1 Then
If !fjalekalimi = txt(1) Then
currentemmsuser = !emri
CurrentPosition = !pozicioni
currentjoblevel = !niveli
If CurrentPosition = "CASHIER" Then
frmShitja.lblemri = currentemmsuser
frmShitja.Show 1
End If
If CurrentPosition = "ADMINISTRATOR" Then
Unload Me
Load frmMAIN
frmMAIN.StatusBar1.Panels(2).Text = currentemmsuser
frmShitja.lblemri.Caption = currentemmsuser
frmMAIN.Show
End If
'Else
End If
If CurrentPosition = "INSPEKTOR" Then
Unload Me
frmMAIN.rptditor2.Visible = True
frmMAIN.rptgjeneral2.Visible = True
frmMAIN.rptpunetoret2.Visible = True
frmMAIN.dit.Visible = False
frmMAIN.SIR.Visible = False
frmMAIN.para.Visible = False
Load frmMAIN
frmMAIN.StatusBar1.Panels(2).Text = currentemmsuser
frmMAIN.Show
End If
Else
End If
.Close
End With
Case 1
End
End Select
End Sub

Private Sub Form_Initialize()
InitCommonControls
End Sub

Private Sub txt_KeyPress(Index As Integer, KeyAscii As Integer)
On Error Resume Next
Select Case Index
    Case 0
        If KeyAscii = 13 Then
            If txt(0) = "" Then
                MsgBox "Type Username.", vbInformation, "Warning!"
                txt(0).SetFocus
                Exit Sub
            
            Else
                txt(1).SetFocus
                Exit Sub
            End If
        End If
    Case 1
        If KeyAscii = 13 Then
            If txt(1) = "" Then
                MsgBox "Type Password.", vbInformation, "Warning!"
                txt(1).SetFocus
                Exit Sub
            Else
            cmd_Click (0)

                Exit Sub
            End If
        End If
End Select
End Sub
