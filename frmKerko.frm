VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Raporti i Furnizimit"
   ClientHeight    =   2535
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3615
   Icon            =   "frmKerko.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2535
   ScaleWidth      =   3615
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   10
      Top             =   1800
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   9
      Top             =   1080
      Width           =   6015
      _ExtentX        =   10610
      _ExtentY        =   53
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Në rregull"
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
      Left            =   2040
      TabIndex        =   0
      Top             =   1920
      Width           =   1455
   End
   Begin MSMask.MaskEdBox dtprej 
      Height          =   375
      Left            =   3720
      TabIndex        =   1
      Top             =   6120
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      _Version        =   393216
      MaxLength       =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin MSMask.MaskEdBox dtderi 
      Height          =   375
      Left            =   6120
      TabIndex        =   2
      Top             =   6120
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      _Version        =   393216
      MaxLength       =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin MSMask.MaskEdBox txtdata 
      Height          =   375
      Left            =   1800
      TabIndex        =   3
      Top             =   1200
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      _Version        =   393216
      MaxLength       =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin VB.Label Label3 
      Caption         =   "Deri:"
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
      Left            =   5640
      TabIndex        =   8
      Top             =   6120
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   "Prej:"
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
      Left            =   3240
      TabIndex        =   7
      Top             =   6120
      Width           =   495
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Shkruani datën:"
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
      Left            =   0
      TabIndex        =   6
      Top             =   1320
      Width           =   1815
   End
   Begin VB.Image Image1 
      Height          =   855
      Left            =   0
      Picture         =   "frmKerko.frx":08CA
      Top             =   0
      Width           =   810
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Shkruani datën për raportim"
      Height          =   375
      Left            =   960
      TabIndex        =   5
      Top             =   600
      Width           =   4335
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Raporti i Furnizimit"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   495
      Left            =   960
      TabIndex        =   4
      Top             =   120
      Width           =   4335
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      Height          =   1095
      Left            =   0
      Top             =   0
      Width           =   10815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs1 As New ADODB.Recordset
Public conn1 As New ADODB.Connection
Public rec1 As New ADODB.Recordset
Public cmd1 As New ADODB.Command
Private Sub Command1_Click()
On Error Resume Next
If dtprej = "" Then
flag = MsgBox("Shkruani të dy datat e sakta?", vbInformation + vbOKOnly, "Kujdes")
Else
rs1.Open "select*from tblFurnizimi where data between '" & dtprej.Text & "'and '" & dtderi.Text & "'", conn1
Set rptShitja.DataSource = rs1
rptShitja.Sections("section4").Controls("lblraporti").Caption = "RAPORTI I FURNIZIMIT"
rptShitja.Sections("section1").Controls("text1").DataField = "pershkrimi"
rptShitja.Sections("section1").Controls("text2").DataField = "qmimi"
rptShitja.Sections("section1").Controls("text5").DataField = "sasia"
rptShitja.Sections("section1").Controls("text8").DataField = "total"
Dim Arq1 As String
Dim Arq2 As String
Dim Arq3 As String
Arq1 = ReadINI(App.Path & "\Kompania.ini", "Emri", "Emri")
Arq2 = ReadINI(App.Path & "\Kompania.ini", "Adresa", "Adresa")
Arq3 = ReadINI(App.Path & "\Kompania.ini", "Telefoni", "Telefoni")
rptShitja.Sections("section4").Controls("lblemri").Caption = Arq1
rptShitja.Sections("section4").Controls("lbladresa").Caption = Arq2
rptShitja.Sections("section4").Controls("lblnumri").Caption = Arq3
rptShitja.Show 1
Unload Me
End If
End Sub

Private Sub Form_Load()
txtdata.Text = Format(Now, "dd/mm/yyyy")
conn1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & App.Path & "\data\dbase.db;Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
conn1.Open
cmd1.ActiveConnection = conn1
End Sub

Private Sub Form_Unload(Cancel As Integer)
conn1.Close
End Sub

Private Sub txtdata_Change()
dtprej.Text = txtdata.Text
dtderi.Text = txtdata.Text
End Sub

