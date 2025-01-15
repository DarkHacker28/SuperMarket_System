VERSION 5.00
Begin VB.Form frmPagesa 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "CASH Payment"
   ClientHeight    =   4695
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5400
   Icon            =   "frmPagesa.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4695
   ScaleWidth      =   5400
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin SmartMarket.ctrlLiner ctrlLiner3 
      Height          =   30
      Left            =   0
      TabIndex        =   15
      Top             =   960
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   14
      Top             =   3720
      Width           =   5175
      _ExtentX        =   9128
      _ExtentY        =   53
   End
   Begin VB.CommandButton Command1 
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
      Height          =   615
      Left            =   2760
      TabIndex        =   9
      Top             =   3960
      Width           =   2535
   End
   Begin VB.TextBox txttotal 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   1200
      Width           =   2535
   End
   Begin VB.TextBox txtkusuri 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   2880
      Width           =   2535
   End
   Begin VB.TextBox txtpaguar 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2760
      TabIndex        =   0
      Top             =   2160
      Width           =   2535
   End
   Begin VB.PictureBox ctrlLiner1 
      Height          =   30
      Left            =   0
      ScaleHeight     =   30
      ScaleWidth      =   7695
      TabIndex        =   3
      Top             =   960
      Width           =   7695
   End
   Begin VB.Label lblprint 
      Caption         =   "print"
      Height          =   255
      Left            =   1080
      TabIndex        =   13
      Top             =   4080
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label lblarka 
      Caption         =   "arka"
      Height          =   255
      Left            =   1080
      TabIndex        =   12
      Top             =   3840
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label lblnib 
      Caption         =   "nib"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   4080
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label lblfirma 
      Caption         =   "firma"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   3840
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label Label4 
      Caption         =   "Total:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   615
      Left            =   120
      TabIndex        =   7
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Label Label3 
      Caption         =   "Change:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   5
      Top             =   2880
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Payed:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   4
      Top             =   2160
      Width           =   1455
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "CASH Payment"
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
      TabIndex        =   2
      Top             =   120
      Width           =   3735
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "frmPagesa.frx":0ECA
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Type your sum of payment"
      Height          =   375
      Left            =   1080
      TabIndex        =   1
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
Attribute VB_Name = "frmPagesa"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
If txtpaguar < txttotal Then
txtpaguar.SetFocus
SendKeys "{home}+{end}"
Exit Sub
Else
For ilst = 1 To frmShitja.lvshitja.ListItems.Count
lstid = frmShitja.lvshitja.ListItems(ilst).Text
lstpershkrimi = frmShitja.lvshitja.ListItems(ilst).SubItems(1)
lstqmimi = frmShitja.lvshitja.ListItems(ilst).SubItems(2)
lstsasia = frmShitja.lvshitja.ListItems(ilst).SubItems(3)
lsttotal = frmShitja.lvshitja.ListItems(ilst).SubItems(4)
'Ruajtja ne raportet e shitjes
'***********************************************************
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblshitja"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.AddNew
!shitja_nr = frmShitja.lblnumri.Caption
!barkodi = lstid
!pershkrimi = lstpershkrimi
!qmimi = lstqmimi
!sasia = lstsasia
!total = lsttotal
!Data = Format(Now, "mm/dd/yyyy")
!punetori = frmShitja.lblemri.Caption
!arka = frmShitja.lblarka.Caption
!muaji = Format(Now, "mm")
!viti = Format(Now, "yyyy")
.Update
.Close
End With
'Nderrimi i sasive
'***********************************************************
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblArtikujt Where barkodi='" & lstid & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!sasia = Val(!sasia) - Val(lstsasia)
.Update
.Close
End With
Next
'Printimi ******************************
Open App.Path & "\Raporti.txt" For Output As #1
Printer.FontName = "Courier New"
Printer.FontSize = 9
Print #1, " "
Close #1
Open App.Path & "\Raporti.txt" For Append As #1
Print #1, lblfirma.Caption
Print #1, " "
Print #1, "NIB :  "; lblnib.Caption
Print #1, Format(Now, "dd/mm/yyyy") & "          " & Format(Now, "hh:mm:ss")
Print #1, "Arka :" & lblarka.Caption & "         " & "Paragoni NR :" & frmShitja.lblnumri.Caption
Print #1, " "
Print #1, "........................................"
Print #1, " "
For ii = 1 To frmShitja.lvshitja.ListItems.Count
Print #1, frmShitja.lvshitja.ListItems(ii).SubItems(1)
Print #1, "          " & frmShitja.lvshitja.ListItems(ii).SubItems(2) & "   x   "; frmShitja.lvshitja.ListItems(ii).SubItems(3) & "   =   " & frmShitja.lvshitja.ListItems(ii).SubItems(4)
Next
Print #1, " "
Print #1, "........................................."
Print #1, ""
Dim lngSpace As Long

Print #1, "TOTALI   :  " & Space(lngSpace) & Format(txttotal, "###,##0.00") & " "
Print #1, "PAGUAR  :  " & Space(lngSpace) & Format(txtpaguar, "###,##0.00") & " "
Print #1, "KUSURI   :  " & Space(lngSpace) & Format(txtkusuri, "###,##0.00") & " "

Print #1, " "
Print #1, " "
Print #1, "TVSH është llogaritur në çmim"
Print #1, " "
Print #1, "Ju faleminderit!!"
Print #1, " "
Close #1
If lblprint.Caption = "PO" Then
Shell App.Path & "\prnt_fat.exe", vbHide
End If
'*******End Print*********************************************************
WriteINI App.Path & "\Paragoni.ini", "Numri", "Numri", frmShitja.lblnumri + 1
Dim Arq1 As String
Arq1 = ReadINI(App.Path & "\Paragoni.ini", "Numri", "Numri")
frmShitja.lblnumri.Caption = Arq1
frmShitja.lvshitja.ListItems.Clear
frmShitja.lbltotal.Caption = "0.00"
On Error Resume Next
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (NEXT_LINE)
frmShitja.MSComm1.Output = txbuff
txbuff = "> B I G    S T A R <"
frmShitja.MSComm1.Output = txbuff
Unload Me
End If
End Sub

Private Sub Form_Load()
Dim Arq1 As String
Dim Arq2 As String
Dim Arq3 As String
Dim Arq4 As String
Arq1 = ReadINI(App.Path & "\Konfigurimi.ini", "Kompania", "Kompania")
Arq2 = ReadINI(App.Path & "\Konfigurimi.ini", "NIB", "NIB")
Arq3 = ReadINI(App.Path & "\Konfigurimi.ini", "Arka", "Arka")
Arq4 = ReadINI(App.Path & "\Konfigurimi.ini", "Print", "Print")
lblfirma.Caption = Arq1
lblnib.Caption = Arq2
lblarka.Caption = Arq3
lblprint.Caption = Arq4
'***************************
On Error Resume Next
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (NEXT_LINE)
frmShitja.MSComm1.Output = txbuff
txbuff = frmShitja.lbltotal.Caption
frmShitja.MSComm1.Output = "TOTAL:  " & txbuff
End Sub

Private Sub txtpaguar_Change()
If txtpaguar.Text = "" Then
txtkusuri.Text = ""
Else
txtkusuri.Text = Format(txtpaguar - CCur(txttotal), "###,###,###0.00")
End If
End Sub

Private Sub txtpaguar_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
'***************************
On Error Resume Next
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (NEXT_LINE)
frmShitja.MSComm1.Output = txbuff
txbuff = frmShitja.lbltotal.Caption
frmShitja.MSComm1.Output = "TOTAL:  " & txbuff
Unload Me
End If
End Sub

Private Sub txtpaguar_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Command1_Click
End If
End Sub

