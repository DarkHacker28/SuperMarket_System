VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmBilanci 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Final bilance"
   ClientHeight    =   4935
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4950
   Icon            =   "frmBilanci.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4935
   ScaleWidth      =   4950
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command4 
      Caption         =   "Preview"
      Height          =   495
      Left            =   3000
      TabIndex        =   21
      Top             =   4320
      Width           =   1815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Shpenzimi"
      Height          =   495
      Left            =   3480
      TabIndex        =   20
      Top             =   8160
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Shitja"
      Height          =   495
      Left            =   3480
      TabIndex        =   17
      Top             =   7560
      Width           =   1815
   End
   Begin SmartMarket.ctrlLiner ctrlLiner3 
      Height          =   30
      Left            =   120
      TabIndex        =   16
      Top             =   2400
      Width           =   4695
      _ExtentX        =   8281
      _ExtentY        =   53
   End
   Begin ComctlLib.ListView lvshitja 
      Height          =   2415
      Left            =   120
      TabIndex        =   15
      Top             =   5640
      Width           =   4935
      _ExtentX        =   8705
      _ExtentY        =   4260
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
         Text            =   ""
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   ""
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   ""
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   ""
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   ""
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(6) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   5
         Key             =   ""
         Object.Tag             =   ""
         Text            =   ""
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.ComboBox txtmuaji 
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
      ItemData        =   "frmBilanci.frx":0C62
      Left            =   1800
      List            =   "frmBilanci.frx":0C8A
      TabIndex        =   12
      Top             =   1320
      Width           =   3015
   End
   Begin VB.ComboBox txtviti 
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
      ItemData        =   "frmBilanci.frx":0CE8
      Left            =   1800
      List            =   "frmBilanci.frx":0D16
      TabIndex        =   11
      Top             =   1800
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      Height          =   495
      Left            =   120
      TabIndex        =   10
      Top             =   4320
      Width           =   1815
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   9
      Top             =   4200
      Width           =   4815
      _ExtentX        =   8493
      _ExtentY        =   53
   End
   Begin VB.TextBox txtneto 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   3600
      Width           =   1815
   End
   Begin VB.TextBox txtdaljet 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   3120
      Width           =   1815
   End
   Begin VB.TextBox txthyrjet 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3000
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   2640
      Width           =   1815
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   2
      Top             =   1080
      Width           =   7575
      _ExtentX        =   13361
      _ExtentY        =   53
   End
   Begin ComctlLib.ListView lvshpenzimet 
      Height          =   2415
      Left            =   5160
      TabIndex        =   18
      Top             =   5640
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   4260
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
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
      NumItems        =   3
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Pershkrimi"
         Object.Width           =   9701
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Personi Pergjegjes"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Shuma"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.Label lblmuaji 
      Caption         =   "Label8"
      Height          =   255
      Left            =   2400
      TabIndex        =   19
      Top             =   7920
      Width           =   855
   End
   Begin VB.Label Label7 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Bilanc for month:"
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
      Left            =   120
      TabIndex        =   14
      Top             =   1365
      Width           =   1695
   End
   Begin VB.Label Label5 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Year:"
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
      Left            =   120
      TabIndex        =   13
      Top             =   1845
      Width           =   495
   End
   Begin VB.Label Label6 
      Caption         =   "NETO:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   3600
      Width           =   2055
   End
   Begin VB.Label Label4 
      Caption         =   "Expenses:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   3120
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "BRUTO:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2640
      Width           =   2055
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Final bilance"
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
      TabIndex        =   1
      Top             =   120
      Width           =   3855
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Final bilance of company"
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
      Left            =   1200
      TabIndex        =   0
      Top             =   720
      Width           =   3855
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   240
      Picture         =   "frmBilanci.frx":0D6E
      Top             =   120
      Width           =   720
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
Attribute VB_Name = "frmBilanci"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
'Shitjet******************************************************************
lvshitja.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblShitja Where muaji='" & lblmuaji.Caption & "'"
.Open criteria, strConek, 3, 3
If !viti = txtviti.Text Then
Do While Not .EOF
lvshitja.ListItems.Add , , !pershkrimi
lvshitja.ListItems(lvshitja.ListItems.Count).SubItems(1) = !sasia
lvshitja.ListItems(lvshitja.ListItems.Count).SubItems(2) = !qmimi
lvshitja.ListItems(lvshitja.ListItems.Count).SubItems(3) = !total
rtotal = rtotal + CCur(!total)
txthyrjet.Text = rtotal
.MoveNext
Loop
.Close
End If
End With



End Sub

Private Sub Command3_Click()
'Shpenzimet**************************************************************
lvshpenzimet.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblShpenzimet Where muaji='" & lblmuaji & "'"
.Open criteria, strConek, 3, 3
If !viti = txtviti.Text Then
Do While Not .EOF
lvshpenzimet.ListItems.Add , , !pershkrimi
lvshpenzimet.ListItems(lvshpenzimet.ListItems.Count).SubItems(1) = !personi_pergjegjes
lvshpenzimet.ListItems(lvshpenzimet.ListItems.Count).SubItems(2) = Format(CCur(!total), "###,###,##0.00")
rtotal = rtotal + CCur(!total)
txtdaljet.Text = rtotal
.MoveNext
Loop
.Close
End If
txtneto.Text = Val(txthyrjet) - Val(txtdaljet)
End With
End Sub

Private Sub Command4_Click()
Command2_Click
Command3_Click
End Sub

Private Sub txtmuaji_Click()
Select Case txtmuaji.Text
Case "Janar"
lblmuaji.Caption = "01"
Case "Shkurt"
lblmuaji.Caption = "02"
Case "Mars"
lblmuaji.Caption = "03"
Case "Prill"
lblmuaji.Caption = "04"
Case "Maj"
lblmuaji.Caption = "05"
Case "Qershor"
lblmuaji.Caption = "06"
Case "Korrik"
lblmuaji.Caption = "07"
Case "Gusht"
lblmuaji.Caption = "08"
Case "Shtator"
lblmuaji.Caption = "09"
Case "Tetor"
lblmuaji.Caption = "10"
Case "Nentor"
lblmuaji.Caption = "11"
Case "Dhjetor"
lblmuaji.Caption = "12"
End Select
End Sub
