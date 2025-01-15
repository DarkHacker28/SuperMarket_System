VERSION 5.00
Begin VB.Form frmPastrimi 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Clear database"
   ClientHeight    =   4020
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5055
   Icon            =   "frmPastrimi.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4020
   ScaleWidth      =   5055
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Clear sales database"
      Height          =   495
      Left            =   120
      TabIndex        =   5
      Top             =   1320
      Width           =   4815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Clear Expenses database"
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   1920
      Width           =   4815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Clear Delivery database"
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   2520
      Width           =   4815
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Exit"
      Height          =   495
      Left            =   3480
      TabIndex        =   0
      Top             =   3360
      Width           =   1455
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   1
      Top             =   3240
      Width           =   4815
      _ExtentX        =   8493
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   2
      Top             =   1080
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   53
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "frmPastrimi.frx":0A02
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Clera different records"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   10
      Left            =   1000
      TabIndex        =   7
      Top             =   600
      Width           =   3855
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Clear database"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   960
      TabIndex        =   6
      Top             =   120
      Width           =   3855
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   1095
      Left            =   0
      Top             =   0
      Width           =   12375
   End
End
Attribute VB_Name = "frmPastrimi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim repp As Integer
repp = MsgBox("A jeni i sigurtë se doni ti fshini shenimet?", vbExclamation + vbYesNo, "Smart Management")
If repp = vbYes Then
Call dbconek
With ar
criteria = "Select *From tblShitja"
.Open criteria, strConek, 3, 3
Do While Not .EOF
.Delete
.MoveNext
Loop
.Close
End With
'=========
Call dbconek
With ar
criteria = "Select *From tblFakturat_Shitjes"
.Open criteria, strConek, 3, 3
Do While Not .EOF
.Delete
.MoveNext
Loop
.Close
End With
'=========
Call dbconek
With ar
criteria = "Select *From tblFakturat_Shitjes"
.Open criteria, strConek, 3, 3
Do While Not .EOF
.Delete
.MoveNext
Loop
.Close
End With
'=========
Call dbconek
With ar
criteria = "Select *From tblTemp_Shitja"
.Open criteria, strConek, 3, 3
Do While Not .EOF
.Delete
.MoveNext
Loop
.Close
End With
End If
End Sub

Private Sub Command2_Click()
Dim repp As Integer
repp = MsgBox("A jeni i sigurtë se doni ti fshini shenimet?", vbExclamation + vbYesNo, "Smart Management")
If repp = vbYes Then
Call dbconek
With ar
criteria = "Select *From tblshpenzimet"
.Open criteria, strConek, 3, 3
Do While Not .EOF
.Delete
.MoveNext
Loop
.Close
End With
'=============
Call dbconek
With ar
criteria = "Select *From tblDaljet"
.Open criteria, strConek, 3, 3
Do While Not .EOF
.Delete
.MoveNext
Loop
.Close
End With
End If
End Sub

Private Sub Command3_Click()
Dim repp As Integer
repp = MsgBox("A jeni i sigurtë se doni ti fshini shenimet?", vbExclamation + vbYesNo, "Smart Management")
If repp = vbYes Then
'pastrimi i fakturave=========================
Call dbconek
With ar
criteria = "Select *From tblFurnizimi"
.Open criteria, strConek, 3, 3
Do While Not .EOF
.Delete
.MoveNext
Loop
.Close
End With
'pastrimi i fakturave=========================
Call dbconek
With ar
criteria = "Select *From tblFatura"
.Open criteria, strConek, 3, 3
Do While Not .EOF
.Delete
.MoveNext
Loop
.Close
End With
End If
End Sub

Private Sub Command4_Click()
Unload Me
End Sub

