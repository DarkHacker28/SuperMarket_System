VERSION 5.00
Begin VB.Form frmDepozitimNew 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "New deposit"
   ClientHeight    =   3990
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5820
   Icon            =   "frmDepozitimNew.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3990
   ScaleWidth      =   5820
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   495
      Left            =   3960
      TabIndex        =   5
      Top             =   3360
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Save"
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   3360
      Width           =   1695
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   12
      Top             =   3240
      Width           =   5535
      _ExtentX        =   9763
      _ExtentY        =   53
   End
   Begin VB.Frame Frame1 
      Caption         =   "Deposit details"
      Height          =   2895
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   5535
      Begin VB.ComboBox txtbanka 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1560
         Style           =   2  'Dropdown List
         TabIndex        =   13
         Top             =   840
         Width           =   3735
      End
      Begin VB.TextBox txtshuma 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   360
         Left            =   1560
         MaxLength       =   50
         TabIndex        =   3
         Top             =   2280
         Width           =   3735
      End
      Begin VB.TextBox txtdata 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   360
         Left            =   1560
         MaxLength       =   50
         TabIndex        =   2
         Top             =   1800
         Width           =   3735
      End
      Begin VB.TextBox txtpershkrimi 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   360
         Left            =   1560
         MaxLength       =   50
         TabIndex        =   1
         Top             =   1320
         Width           =   3735
      End
      Begin VB.TextBox txtid 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   360
         Left            =   1560
         MaxLength       =   50
         TabIndex        =   0
         Top             =   360
         Width           =   3735
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "SUM:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004080&
         Height          =   255
         Index           =   4
         Left            =   240
         TabIndex        =   11
         Top             =   2340
         Width           =   1215
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Date:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   10
         Top             =   1845
         Width           =   1215
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Description:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   9
         Top             =   1365
         Width           =   1215
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Bank:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   8
         Top             =   870
         Width           =   1215
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Deposit NR:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   7
         Top             =   390
         Width           =   1215
      End
   End
End
Attribute VB_Name = "frmDepozitimNew"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Call dbconek
With ar
.Open "Select *From tblDepozitimet", strConek, adOpenStatic, adLockOptimistic
.AddNew
!id = txtid
!pershkrimi = txtpershkrimi
!banka = txtbanka
!Data = txtdata
!shuma = txtshuma
.Update
MsgBox "Shenimi u ruajt me sukses.", vbInformation, "Ruajtja!"
.Close
End With
'Ndryshimi i gjendjes******************
'Nderrimi i sasive
'***********************************************************
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblBankat Where emri='" & txtbanka & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!gjendja = Val(!gjendja) + Val(txtshuma)
.Update
.Close
End With
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
'Vendosja e Bankave ne Combo Box
Call dbconek
ar.Open "Select *From tblBankat", strConek, adOpenStatic, adLockOptimistic
If ar.RecordCount = 0 Then
Exit Sub
Else
ar.MoveFirst
Do While Not ar.EOF
txtbanka.AddItem ar!emri
ar.MoveNext
Loop
ar.Close
End If
'Numri automatik
'*************************************************
On Error Resume Next
Call dbconek
With ar
criteria = "Select *From tbldepozitimet"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If ar.RecordCount = 0 Then
txtid.Text = "1"
Else
.MoveLast
txtid = Val(!id) + 1
.Close
End If
End With
txtdata.Text = Format(Now, "dd/mm/yyyy")
End Sub

