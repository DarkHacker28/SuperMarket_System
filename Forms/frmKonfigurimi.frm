VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmKonfigurimi 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Settings"
   ClientHeight    =   4860
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6015
   Icon            =   "frmKonfigurimi.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4860
   ScaleWidth      =   6015
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox txtbar 
      Height          =   315
      ItemData        =   "frmKonfigurimi.frx":06EA
      Left            =   4680
      List            =   "frmKonfigurimi.frx":06F4
      TabIndex        =   14
      Text            =   "PO"
      Top             =   3600
      Width           =   1215
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   13
      Top             =   4080
      Width           =   5775
      _ExtentX        =   10186
      _ExtentY        =   53
   End
   Begin VB.TextBox txtnib 
      Height          =   285
      Left            =   1920
      TabIndex        =   11
      Top             =   2160
      Width           =   3975
   End
   Begin VB.TextBox txtemri 
      Height          =   285
      Left            =   1920
      TabIndex        =   0
      Top             =   1200
      Width           =   3975
   End
   Begin VB.TextBox txtadresa 
      Height          =   285
      Left            =   1920
      TabIndex        =   1
      Top             =   1680
      Width           =   3975
   End
   Begin VB.ComboBox lblprint 
      Height          =   315
      ItemData        =   "frmKonfigurimi.frx":0700
      Left            =   4680
      List            =   "frmKonfigurimi.frx":070A
      TabIndex        =   2
      Text            =   "PO"
      Top             =   2640
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog cdshitja 
      Left            =   960
      Top             =   5400
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComDlg.CommonDialog cdmain 
      Left            =   360
      Top             =   5400
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Save"
      Height          =   495
      Left            =   3960
      TabIndex        =   4
      Top             =   4200
      Width           =   1935
   End
   Begin VB.TextBox txtarka 
      Height          =   285
      Left            =   4680
      TabIndex        =   3
      Text            =   "01"
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label Label10 
      Caption         =   "Automatic UPC:"
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
      TabIndex        =   15
      Top             =   3600
      Width           =   3855
   End
   Begin VB.Label Label9 
      Caption         =   "Bussines NR:"
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
      TabIndex        =   12
      Top             =   2160
      Width           =   2175
   End
   Begin VB.Label Label8 
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
      TabIndex        =   10
      Top             =   1200
      Width           =   2175
   End
   Begin VB.Label Label7 
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
      TabIndex        =   9
      Top             =   1680
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "Cashier Nr:"
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
      Top             =   3120
      Width           =   3495
   End
   Begin VB.Label Label2 
      Caption         =   "Print receipt:"
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
      TabIndex        =   7
      Top             =   2640
      Width           =   3495
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Cashier settings"
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
      TabIndex        =   6
      Top             =   120
      Width           =   3735
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   240
      Picture         =   "frmKonfigurimi.frx":0716
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Select cashier options"
      Height          =   375
      Left            =   1080
      TabIndex        =   5
      Top             =   600
      Width           =   4575
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
Attribute VB_Name = "frmKonfigurimi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()


WriteINI App.Path & "\Konfigurimi.ini", "Print", "Print", lblprint.Text
WriteINI App.Path & "\Konfigurimi.ini", "Arka", "Arka", txtarka.Text
WriteINI App.Path & "\Konfigurimi.ini", "Kompania", "Kompania", txtemri.Text
WriteINI App.Path & "\Konfigurimi.ini", "Adresa", "Adresa", txtadresa.Text
WriteINI App.Path & "\Konfigurimi.ini", "NIB", "NIB", txtnib.Text
WriteINI App.Path & "\Konfigurimi.ini", "Barkodet", "Barkodet", txtbar.Text
Unload Me
End Sub

Private Sub Command2_Click()
cdmain.Filter = "Databaza Kryesore |*.db"
cdmain.ShowOpen
txtmain.Text = cdmain.Filename
End Sub

Private Sub Command3_Click()
cdshitja.Filter = "Baza e Shitjes |*.db"
cdshitja.ShowSave
txtshitja.Text = cdshitja.Filename
End Sub

Private Sub Form_Load()
Dim Arq1 As String
Dim Arq2 As String
Dim Arq3 As String
Dim Arq4 As String
Dim Arq5 As String
Dim Arq6 As String
Dim Arq7 As String
Dim Arq8 As String
Arq1 = ReadINI(App.Path & "\Konfigurimi.ini", "Baza Kryesore", "Baza Kryesore")
Arq2 = ReadINI(App.Path & "\Konfigurimi.ini", "Baza e Shitjes", "Baza e Shitjes")
Arq3 = ReadINI(App.Path & "\Konfigurimi.ini", "Print", "Print")
Arq4 = ReadINI(App.Path & "\Konfigurimi.ini", "Arka", "Arka")
Arq5 = ReadINI(App.Path & "\Konfigurimi.ini", "Kompania", "Kompania")
Arq6 = ReadINI(App.Path & "\Konfigurimi.ini", "Adresa", "Adresa")
Arq7 = ReadINI(App.Path & "\Konfigurimi.ini", "NIB", "NIB")
Arq8 = ReadINI(App.Path & "\Konfigurimi.ini", "Barkodet", "Barkodet")
lblprint.Text = Arq3


txtarka.Text = Arq4
txtemri.Text = Arq5
txtadresa.Text = Arq6
txtnib.Text = Arq7
txtbar.Text = Arq8
End Sub

