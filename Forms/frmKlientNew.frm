VERSION 5.00
Begin VB.Form frmKlientNew 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Client details"
   ClientHeight    =   5205
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6525
   Icon            =   "frmKlientNew.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5205
   ScaleWidth      =   6525
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
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
      Left            =   4680
      TabIndex        =   15
      Top             =   4560
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Save"
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
      Left            =   120
      TabIndex        =   14
      Top             =   4560
      Width           =   2055
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   13
      Top             =   4440
      Width           =   6255
      _ExtentX        =   11033
      _ExtentY        =   53
   End
   Begin VB.Frame Frame1 
      Caption         =   "Clients details"
      Height          =   4095
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   6255
      Begin VB.TextBox txtkomenti 
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
         Height          =   1080
         Left            =   2160
         MaxLength       =   999
         TabIndex        =   5
         Top             =   2760
         Width           =   3855
      End
      Begin VB.TextBox txtmobil 
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   4
         Top             =   2280
         Width           =   3855
      End
      Begin VB.TextBox txttelefon 
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   3
         Top             =   1800
         Width           =   3855
      End
      Begin VB.TextBox txtadresa 
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   2
         Top             =   1320
         Width           =   3855
      End
      Begin VB.TextBox txtemri 
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   1
         Top             =   840
         Width           =   3855
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   0
         Top             =   360
         Width           =   3855
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Comment:"
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
         Index           =   5
         Left            =   240
         TabIndex        =   12
         Top             =   2760
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Mobile:"
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
         Index           =   4
         Left            =   240
         TabIndex        =   11
         Top             =   2280
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Telephone:"
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
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Address:"
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
         Top             =   1320
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Client name:"
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
         TabIndex        =   8
         Top             =   840
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "ID:"
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
         TabIndex        =   7
         Top             =   360
         Width           =   1815
      End
   End
   Begin VB.Label lblstatusi 
      Caption         =   "shto"
      Height          =   375
      Left            =   2760
      TabIndex        =   16
      Top             =   4680
      Visible         =   0   'False
      Width           =   1095
   End
End
Attribute VB_Name = "frmKlientNew"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Select Case lblstatusi.Caption
Case "shto"
Call dbconek
With ar
.Open "Select *From tblKlientet", strConek, adOpenStatic, adLockOptimistic
.AddNew
!id = txtid
!emri = txtemri
!adresa = txtadresa
!telefon = txttelefon
!mobil = txtmobil
!komenti = txtkomenti
.Update
MsgBox "Shenimi u ruajt me sukses.", vbInformation, "Ruajtja!"
.Close
End With
Unload Me
Case "ndrysho"
Call dbconek
With ar
criteria = "Select *From tblklientet Where id='" & txtid & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!id = txtid
!emri = txtemri
!adresa = txtadresa
!telefon = txttelefon
!mobil = txtmobil
!komenti = txtkomenti
.Update
MsgBox "Shenimi u ruajt me sukses.", vbInformation, "Ruajtja!"
.Close
End With
Unload Me
End Select
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
'Numri automatik
'*************************************************
On Error Resume Next
Call dbconek
With ar
criteria = "Select *From tblKlientet"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If ar.RecordCount = 0 Then
txtid.Text = "1"
Else
.MoveLast
txtid = Val(!id) + 1
.Close
End If
End With
End Sub
