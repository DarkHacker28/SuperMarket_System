VERSION 5.00
Begin VB.Form frmKompania 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Company informations"
   ClientHeight    =   3540
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5880
   Icon            =   "frmKompania.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3540
   ScaleWidth      =   5880
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
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
      Left            =   3360
      TabIndex        =   10
      Top             =   2880
      Width           =   2415
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   9
      Top             =   2760
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   53
   End
   Begin VB.TextBox txtnumri 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   370
      Left            =   1800
      TabIndex        =   7
      Top             =   2160
      Width           =   3975
   End
   Begin VB.TextBox txtadresa 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   370
      Left            =   1800
      TabIndex        =   5
      Top             =   1680
      Width           =   3975
   End
   Begin VB.TextBox txtemri 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   370
      Left            =   1800
      TabIndex        =   3
      Top             =   1200
      Width           =   3975
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   0
      Top             =   960
      Width           =   12615
      _ExtentX        =   22251
      _ExtentY        =   53
   End
   Begin VB.Label Label5 
      Caption         =   "Phone:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   2160
      Width           =   1575
   End
   Begin VB.Label Label4 
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
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "Company name:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "frmKompania.frx":058A
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Type your company informations"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   10
      Left            =   1200
      TabIndex        =   2
      Top             =   600
      Width           =   3855
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Company informations"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1200
      TabIndex        =   1
      Top             =   120
      Width           =   6255
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   12375
   End
End
Attribute VB_Name = "frmKompania"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
WriteINI App.Path & "\Kompania.ini", "Emri", "Emri", txtemri.Text
WriteINI App.Path & "\Kompania.ini", "Adresa", "Adresa", txtadresa.Text
WriteINI App.Path & "\Kompania.ini", "Telefoni", "Telefoni", txtnumri.Text
Unload Me
End Sub

Private Sub Form_Load()
Dim Arq1 As String
Dim Arq2 As String
Dim Arq3 As String
Arq1 = ReadINI(App.Path & "\Kompania.ini", "Emri", "Emri")
Arq2 = ReadINI(App.Path & "\Kompania.ini", "Adresa", "Adresa")
Arq3 = ReadINI(App.Path & "\Kompania.ini", "Telefoni", "Telefoni")
txtemri.Text = Arq1
txtadresa.Text = Arq2
txtnumri.Text = Arq3
End Sub
