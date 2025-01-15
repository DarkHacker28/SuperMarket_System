VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmParagonet 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Sales receipt's"
   ClientHeight    =   7560
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6870
   Icon            =   "frmParagonet.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7560
   ScaleWidth      =   6870
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
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
      Left            =   1680
      TabIndex        =   0
      Top             =   1400
      Width           =   2775
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Print"
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
      Left            =   2760
      TabIndex        =   4
      Top             =   6960
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
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
      Left            =   5040
      TabIndex        =   3
      Top             =   6960
      Width           =   1695
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   1
      Top             =   6840
      Width           =   6615
      _ExtentX        =   11668
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   2
      Top             =   1200
      Width           =   8055
      _ExtentX        =   14208
      _ExtentY        =   53
   End
   Begin ComctlLib.ListView lv 
      Height          =   3975
      Left            =   120
      TabIndex        =   5
      Top             =   1920
      Width           =   6615
      _ExtentX        =   11668
      _ExtentY        =   7011
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList2"
      SmallIcons      =   "ImageList2"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   4
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Description"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Price"
         Object.Width           =   1411
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "QTY"
         Object.Width           =   1411
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Total"
         Object.Width           =   1411
      EndProperty
   End
   Begin VB.Label lblparagoni 
      Caption         =   "Label5"
      Height          =   495
      Left            =   6360
      TabIndex        =   14
      Top             =   7800
      Width           =   1455
   End
   Begin VB.Label Label3 
      Caption         =   "Receipt Nr:"
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
      TabIndex        =   13
      Top             =   1440
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   855
      Left            =   120
      Picture         =   "frmParagonet.frx":08CA
      Top             =   120
      Width           =   810
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Sales receipts"
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
      TabIndex        =   12
      Top             =   120
      Width           =   3855
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Cash sales receipts"
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
      TabIndex        =   11
      Top             =   720
      Width           =   3855
   End
   Begin ComctlLib.ImageList ImageList2 
      Left            =   5640
      Top             =   240
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   1
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmParagonet.frx":2D92
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label lblfirma 
      Caption         =   "Label4"
      Height          =   255
      Left            =   3240
      TabIndex        =   10
      Top             =   7920
      Width           =   2295
   End
   Begin VB.Label lblnib 
      Caption         =   "Label4"
      Height          =   255
      Left            =   240
      TabIndex        =   9
      Top             =   8040
      Width           =   2295
   End
   Begin VB.Label lbldata 
      Caption         =   "Label4"
      Height          =   255
      Left            =   840
      TabIndex        =   8
      Top             =   7680
      Width           =   735
   End
   Begin VB.Label lbltotal 
      BackColor       =   &H00000000&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   4800
      TabIndex        =   7
      Top             =   6000
      Width           =   1935
   End
   Begin VB.Label Label4 
      Caption         =   "TOTAL:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2760
      TabIndex        =   6
      Top             =   6000
      Width           =   1695
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   1215
      Left            =   0
      Top             =   0
      Width           =   7575
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00000000&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   630
      Left            =   4560
      Top             =   6000
      Width           =   255
   End
End
Attribute VB_Name = "frmParagonet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
Open App.Path & "\Raporti.txt" For Output As #1
Printer.FontName = "Courier New"
Printer.FontSize = 9
Print #1, " "
Close #1
Open App.Path & "\Raporti.txt" For Append As #1
Dim Arq3 As String
Arq1 = ReadINI(App.Path & "\Kompania.ini", "Emri", "Emri")
Arq2 = ReadINI(App.Path & "\Kompania.ini", "Adresa", "Adresa")
Print #1,
Print #1, Arq1
Print #1, Arq2
Print #1, " "
Print #1, "Data: " & lbldata.Caption
Print #1, "Paragoni NR: " & lblparagoni.Caption
Print #1, " "
Print #1, "..............................."
Print #1, " "
For ii = 1 To lv.ListItems.Count
Print #1, lv.ListItems(ii).Text
Print #1, "          " & lv.ListItems(ii).SubItems(1) & "   x   "; lv.ListItems(ii).SubItems(2) & "   =   " & lv.ListItems(ii).SubItems(3)
Next
Print #1, " "
Print #1, "..............................."
Print #1, ""
Dim lngSpace As Long
Print #1, "TOTAL   :  " & Space(lngSpace) & Format(lbltotal, "###,##0.00") & " "
Print #1, " "
Print #1, "Ju faleminderit!"
Print #1, " "
Print #1, "TVSH është llogaritur në çmim"
Print #1, " "
Close #1
Shell App.Path & "\prnt_fat.exe", vbHide
Unload Me
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
Dim Arq1 As String
Dim Arq2 As String
Arq1 = ReadINI(App.Path & "\Serveri.ini", "Emri", "Emri")
Arq2 = ReadINI(App.Path & "\Serveri.ini", "NIB", "NIB")
lblfirma.Caption = Arq1
lblnib.Caption = Arq2
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
If posterminal.Visible = True Then
Unload Me
posterminal.txt(0).SetFocus
Else
Unload Me
End If
End If
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
lv.ListItems.Clear
Call dbshitja
ac.Open strConek
With ar
criteria = "Select * From saledetails Where paragoni like'" & Text1 & "%'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
Do While Not .EOF
lv.ListItems.Add , , !longdesc, 1, 1
lv.ListItems(lv.ListItems.Count).SubItems(1) = Format(!unitprice, "###,###,##0.00")
lv.ListItems(lv.ListItems.Count).SubItems(2) = !quantity
lv.ListItems(lv.ListItems.Count).SubItems(3) = Format(!total, "###,###,##0.00")
lbldata.Caption = !Date
lblparagoni.Caption = Text1.Text
.MoveNext
Loop
.Close
End With
Text1.Text = ""
End If
'======Llogaritja e shumave============
lbltotal.Caption = "0.00"
For ilst = 1 To lv.ListItems.Count
in1 = lv.ListItems(ilst).SubItems(3)
in2 = lbltotal
lbltotal.Caption = Format(in2 + CCur(in1), "###,###,##0.00")
Next
End Sub

