VERSION 5.00
Begin VB.Form frmVat 
   BackColor       =   &H00ECF4F4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "TVSH"
   ClientHeight    =   2175
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2415
   Icon            =   "frmvat.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2175
   ScaleWidth      =   2415
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      BackColor       =   &H00ECF4F4&
      Caption         =   "OK"
      Height          =   375
      Left            =   960
      TabIndex        =   4
      Top             =   1680
      Width           =   1335
   End
   Begin SmartCASH.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   3
      Top             =   1560
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   53
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Text            =   "15"
      Top             =   960
      Width           =   735
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "%"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      TabIndex        =   2
      Top             =   990
      Width           =   255
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "TVSH"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   840
      TabIndex        =   0
      Top             =   240
      Width           =   735
   End
   Begin VB.Image Image2 
      Height          =   735
      Left            =   0
      Picture         =   "frmvat.frx":06EA
      Top             =   0
      Width           =   735
   End
   Begin VB.Image Image1 
      Height          =   885
      Left            =   0
      Picture         =   "frmvat.frx":2382
      Stretch         =   -1  'True
      Top             =   0
      Width           =   14655
   End
End
Attribute VB_Name = "frmVat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
rsvat.Update "tvsh", Text1.Text
Unload Me
End Sub

Private Sub Form_Load()
DataConnect
OpenData
OpenDB
'======================
Text1.Text = rsvat!tvsh
End Sub
