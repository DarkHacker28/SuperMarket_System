VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmKerko 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Product search"
   ClientHeight    =   6765
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7950
   Icon            =   "frmKerko.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6765
   ScaleWidth      =   7950
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   4
      Top             =   600
      Width           =   7935
      _ExtentX        =   13996
      _ExtentY        =   53
   End
   Begin VB.TextBox txtpershkrimi 
      Height          =   375
      Left            =   2160
      TabIndex        =   0
      Top             =   840
      Width           =   5655
   End
   Begin ComctlLib.ListView lv 
      Height          =   5295
      Left            =   120
      TabIndex        =   1
      Top             =   1320
      Width           =   7695
      _ExtentX        =   13573
      _ExtentY        =   9340
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      NumItems        =   2
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "UPC"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Description"
         Object.Width           =   7937
      EndProperty
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Products search"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Left            =   840
      TabIndex        =   3
      Top             =   100
      Width           =   3735
   End
   Begin VB.Image Image1 
      Height          =   360
      Left            =   240
      Picture         =   "frmKerko.frx":1A72
      Top             =   120
      Width           =   360
   End
   Begin VB.Label Label1 
      Caption         =   "Description:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   900
      Width           =   1815
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   615
      Left            =   0
      Top             =   0
      Width           =   8055
   End
End
Attribute VB_Name = "frmKerko"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
End Sub

Private Sub lv_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
Unload Me
End If
End Sub

Private Sub lv_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblartikujt Where barkodi='" & lv.SelectedItem.Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount = 1 Then
frmShitja.lvshitja.ListItems.Add , , lv.SelectedItem.Text
frmShitja.lvshitja.ListItems(frmShitja.lvshitja.ListItems.Count).SubItems(1) = !pershkrimi
frmShitja.lvshitja.ListItems(frmShitja.lvshitja.ListItems.Count).SubItems(2) = Format(CCur(!qmimi_shitjes), "###,###,###0.00")
frmShitja.lvshitja.ListItems(frmShitja.lvshitja.ListItems.Count).SubItems(3) = frmShitja.txtsasia.Text
frmShitja.lvshitja.ListItems(frmShitja.lvshitja.ListItems.Count).SubItems(4) = Format(frmShitja.txtsasia * CCur(!qmimi_shitjes), "###,###,###0.00")
inttotal1 = Val(frmShitja.txtsasia)
inttotal2 = Format(CCur(!qmimi_shitjes), "###,###,###0.00")
inttotal = inttotal1 * inttotal2
frmShitja.txtsasia = "1"
frmShitja.txtbarkodi = ""
frmShitja.lbltotal = Format(CCur(frmShitja.lbltotal) + CCur(inttotal), "###,###,###0.00")
On Error Resume Next
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (NEXT_LINE)
frmShitja.MSComm1.Output = txbuff
txbuff = !pershkrimi
txb = !qmimi_shitjes
frmShitja.MSComm1.Output = "> " & txbuff & "    " & txb
'===============================================
Unload Me
End If
End With
End If
End Sub

Private Sub txtpershkrimi_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
Unload Me
End If
End Sub

Private Sub txtpershkrimi_KeyPress(KeyAscii As Integer)
On Error Resume Next
Dim inti As ListItem
If KeyAscii = 13 Then
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
lv.ListItems.Clear
With ar
criteria = "Select *From tblArtikujt"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.MoveFirst
Do While Not .EOF
If Mid(!pershkrimi, 1, Len(txtpershkrimi)) = txtpershkrimi Then
Set intitem = lv.ListItems.Add(, , !barkodi)
intitem.SubItems(1) = !pershkrimi
End If
.MoveNext
lv.SetFocus
Loop
.Close
End With
End If
KeyAscii = Asc(UCase(Chr(KeyAscii)))
End Sub
