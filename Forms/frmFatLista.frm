VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmFatLista 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Sales bill's"
   ClientHeight    =   8805
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10680
   Icon            =   "frmFatLista.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8805
   ScaleWidth      =   10680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "..."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      TabIndex        =   14
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox txtfat 
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
      Left            =   1680
      TabIndex        =   0
      Top             =   1080
      Width           =   2535
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   495
      Left            =   8400
      TabIndex        =   8
      Top             =   8160
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Print"
      Height          =   495
      Left            =   120
      TabIndex        =   7
      Top             =   8160
      Width           =   2175
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   6
      Top             =   8040
      Width           =   10455
      _ExtentX        =   18441
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   4
      Top             =   960
      Width           =   10695
      _ExtentX        =   18865
      _ExtentY        =   53
   End
   Begin ComctlLib.ListView lv 
      Height          =   6375
      Left            =   120
      TabIndex        =   1
      Top             =   1560
      Width           =   10455
      _ExtentX        =   18441
      _ExtentY        =   11245
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      NumItems        =   6
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "ID"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Emertimi i Artikullit"
         Object.Width           =   7937
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Sasia"
         Object.Width           =   1235
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Çmimi"
         Object.Width           =   1235
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "TVSH"
         Object.Width           =   1058
      EndProperty
      BeginProperty ColumnHeader(6) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   5
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Total"
         Object.Width           =   1235
      EndProperty
   End
   Begin VB.Label lbls 
      Caption         =   "MBYLLUR"
      Height          =   255
      Left            =   4320
      TabIndex        =   13
      Top             =   8400
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label lbltotal 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "00.00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   9600
      TabIndex        =   12
      Top             =   1080
      Width           =   975
   End
   Begin VB.Label Label5 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
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
      Height          =   255
      Left            =   8880
      TabIndex        =   11
      Top             =   1080
      Width           =   615
   End
   Begin VB.Label Label4 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Client:"
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
      Left            =   4920
      TabIndex        =   10
      Top             =   1080
      Width           =   735
   End
   Begin VB.Label lblklienti 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   5640
      TabIndex        =   9
      Top             =   1080
      Width           =   2775
   End
   Begin VB.Label Label3 
      Caption         =   "Bill Nr:"
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
      TabIndex        =   5
      Top             =   1150
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   120
      Picture         =   "frmFatLista.frx":1A72
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Sales bill's"
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
      Left            =   1200
      TabIndex        =   3
      Top             =   120
      Width           =   3855
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Lista of sales bill's"
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
      Left            =   1200
      TabIndex        =   2
      Top             =   600
      Width           =   3855
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
Attribute VB_Name = "frmFatLista"
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
If txtfat = "" Then
flag = MsgBox("Shkruani numrin e fakturës?", vbInformation + vbOKOnly, "Kujdes")
Else
'rs1.Open "select*from tblshitja where shitja_nr between '" & txtfat.Text & "'and '" & txtfat.Text & "'", conn1
rs1.Open "select*from tblshitja where shitja_nr like'" & txtfat & "%'", conn1
Set rptFaktura.DataSource = rs1
WriteINI App.Path & "\Print.ini", "Total", "Total", lbltotal.Caption
Dim Arq1 As String
Dim Arq2 As String
Dim Arq3 As String
Arq1 = ReadINI(App.Path & "\Kompania.ini", "Emri", "Emri")
Arq2 = ReadINI(App.Path & "\Kompania.ini", "Adresa", "Adresa")
Arq3 = ReadINI(App.Path & "\Kompania.ini", "Telefoni", "Telefoni")
rptFaktura.Sections("section4").Controls("label1").Caption = Arq1
rptFaktura.Sections("section4").Controls("label5").Caption = Arq2
rptFaktura.Sections("section4").Controls("label6").Caption = Arq3
rptFaktura.Sections("section4").Controls("Label15").Caption = txtfat.Text
rptFaktura.Sections("section4").Controls("lblklienti").Caption = lblklienti.Caption
rptFaktura.Show 1
Unload Me
End If
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
On Error Resume Next
Call dbconek
ar.Open "Select *From tblFakturat_Shitjes", strConek, adOpenStatic, adLockOptimistic
ar.MoveFirst
Do While Not ar.EOF
txtfat.AddItem ar!fat_nr
ar.MoveNext
Loop
ar.Close
'***************************
conn1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & App.Path & "\data\dbase.db;Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
conn1.Open
cmd1.ActiveConnection = conn1
End Sub

Private Sub Form_Unload(Cancel As Integer)
conn1.Close
End Sub


Private Sub txtfat_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
lv.ListItems.Clear
lbltotal.Caption = ""
Call dbconek
ac.Open strConek
With ar
criteria = "Select * From tblShitja Where shitja_nr like'" & txtfat & "%'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
Do While Not .EOF
lv.ListItems.Add , , !barkodi
lv.ListItems(lv.ListItems.Count).SubItems(1) = !pershkrimi
lv.ListItems(lv.ListItems.Count).SubItems(2) = !sasia
lv.ListItems(lv.ListItems.Count).SubItems(3) = Format(!qmimi, "###,###,##0.00")
lv.ListItems(lv.ListItems.Count).SubItems(4) = !tvsh
lv.ListItems(lv.ListItems.Count).SubItems(5) = !total
lblklienti.Caption = !klienti
lbltotal.Caption = Val(lbltotal.Caption) + Val(!total)
.MoveNext
Loop
.Close
End With
End If
End Sub
