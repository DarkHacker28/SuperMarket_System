VERSION 5.00
Begin VB.Form frmShpenzimet 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Expenses"
   ClientHeight    =   4140
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7575
   Icon            =   "frmShpenzimet.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4140
   ScaleWidth      =   7575
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox txtpershkrimi 
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
      Left            =   2160
      TabIndex        =   13
      Top             =   1680
      Width           =   5295
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   12
      Top             =   3240
      Width           =   7335
      _ExtentX        =   12938
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   11
      Top             =   960
      Width           =   7575
      _ExtentX        =   13361
      _ExtentY        =   53
   End
   Begin VB.TextBox txtshitja_nr 
      BackColor       =   &H00E2F9FE&
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
      Left            =   2160
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   1200
      Width           =   2295
   End
   Begin VB.TextBox txtpersoni 
      BackColor       =   &H00FFFFFF&
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
      Left            =   2160
      TabIndex        =   1
      Top             =   2160
      Width           =   3015
   End
   Begin VB.TextBox txtshuma 
      BackColor       =   &H00FFFFFF&
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
      Left            =   2160
      TabIndex        =   2
      Top             =   2640
      Width           =   3015
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Save"
      Enabled         =   0   'False
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   3480
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Exit"
      Height          =   495
      Left            =   5400
      TabIndex        =   3
      Top             =   3480
      Width           =   2055
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "Save expenses"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Left            =   960
      TabIndex        =   10
      Top             =   480
      Width           =   4335
   End
   Begin VB.Label Label11 
      BackStyle       =   0  'Transparent
      Caption         =   "Expense transaction"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Left            =   960
      TabIndex        =   9
      Top             =   120
      Width           =   4335
   End
   Begin VB.Image Image2 
      Height          =   690
      Left            =   120
      Picture         =   "frmShpenzimet.frx":0C62
      Top             =   120
      Width           =   675
   End
   Begin VB.Label Label1 
      Caption         =   "Transaction Nr:"
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
      Left            =   240
      TabIndex        =   8
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "Category:"
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
      Left            =   240
      TabIndex        =   7
      Top             =   1680
      Width           =   1815
   End
   Begin VB.Label Label5 
      Caption         =   "Your name:"
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
      Left            =   240
      TabIndex        =   6
      Top             =   2160
      Width           =   1695
   End
   Begin VB.Label Label6 
      Caption         =   "Total:"
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
      Left            =   240
      TabIndex        =   5
      Top             =   2640
      Width           =   1335
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   11775
   End
End
Attribute VB_Name = "frmShpenzimet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
Call dbconek
With ar
.Open "Select *From tblShpenzimet", strConek, adOpenStatic, adLockOptimistic
.AddNew
!shpenzimi_id = txtshitja_nr
!pershkrimi = txtpershkrimi
!personi_pergjegjes = txtpersoni
!total = txtshuma
!Data = Format(Now, "dd/mm/yyyy")
!muaji = Format(Now, "mm")
!viti = Format(Now, "yyyy")
.Update
MsgBox "Transaksioni u ruajt me sukses.", vbInformation, "Ruajtja!"
.Close
End With
Unload Me
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

Private Sub Form_Load()
'Numri automatik
'*************************************************
On Error Resume Next
Call dbconek
With ar
criteria = "Select *From tblShpenzimet"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If ar.RecordCount = 0 Then
txtshitja_nr.Text = "1"
Else
.MoveLast
txtshitja_nr = Val(!shpenzimi_id) + 1
.Close
End If
End With
'Vendosja e Kategorive ne Combo========================
Call dbconek
ar.Open "Select *From tblKategoria_Shpenzimeve", strConek, adOpenStatic, adLockOptimistic
If ar.RecordCount = 0 Then Exit Sub
ar.MoveFirst
Do While Not ar.EOF
txtpershkrimi.AddItem ar!kategoria
ar.MoveNext
Loop
ar.Close
End Sub

Private Sub txtshuma_Change()
Command2.Enabled = True
End Sub

