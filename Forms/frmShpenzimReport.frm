VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmShpenzimReport 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Expenses report"
   ClientHeight    =   8670
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10695
   Icon            =   "frmShpenzimReport.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8670
   ScaleWidth      =   10695
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
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
      ItemData        =   "frmShpenzimReport.frx":0C62
      Left            =   6480
      List            =   "frmShpenzimReport.frx":0C90
      TabIndex        =   13
      Text            =   "2007"
      Top             =   1150
      Width           =   1815
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   12
      Top             =   7920
      Width           =   10455
      _ExtentX        =   18441
      _ExtentY        =   53
   End
   Begin VB.TextBox txtdata 
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
      Left            =   2160
      TabIndex        =   10
      Top             =   1150
      Visible         =   0   'False
      Width           =   2415
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   9
      Top             =   960
      Width           =   11655
      _ExtentX        =   20558
      _ExtentY        =   53
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Preview"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   8400
      TabIndex        =   2
      Top             =   8040
      Width           =   2175
   End
   Begin VB.TextBox txtshuma 
      Alignment       =   1  'Right Justify
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   8400
      TabIndex        =   1
      Top             =   7320
      Width           =   2175
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
      ItemData        =   "frmShpenzimReport.frx":0CE8
      Left            =   2160
      List            =   "frmShpenzimReport.frx":0D10
      TabIndex        =   0
      Top             =   1150
      Width           =   3615
   End
   Begin ComctlLib.ListView lv 
      Height          =   5415
      Left            =   120
      TabIndex        =   3
      Top             =   1680
      Width           =   10455
      _ExtentX        =   18441
      _ExtentY        =   9551
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
   Begin VB.Label Label4 
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
      Left            =   6000
      TabIndex        =   14
      Top             =   1200
      Width           =   495
   End
   Begin VB.Label lblmuaji 
      Caption         =   "Label4"
      Height          =   255
      Left            =   5520
      TabIndex        =   11
      Top             =   240
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Image Image2 
      Height          =   675
      Left            =   120
      Picture         =   "frmShpenzimReport.frx":0D6E
      Top             =   120
      Width           =   690
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "Preview expenses report"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Left            =   960
      TabIndex        =   8
      Top             =   480
      Width           =   4335
   End
   Begin VB.Label Label11 
      BackStyle       =   0  'Transparent
      Caption         =   "Expenses report"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Left            =   960
      TabIndex        =   7
      Top             =   120
      Width           =   4335
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Report for month:"
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
      Left            =   240
      TabIndex        =   6
      Top             =   1200
      Width           =   2415
   End
   Begin VB.Label Label2 
      Caption         =   "Total:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   375
      Left            =   5640
      TabIndex        =   5
      Top             =   7320
      Width           =   2655
   End
   Begin VB.Label Label3 
      Caption         =   "ditor"
      Height          =   375
      Left            =   6960
      TabIndex        =   4
      Top             =   360
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   11775
   End
End
Attribute VB_Name = "frmShpenzimReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Select Case Label3.Caption
Case "ditore"
lv.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblShpenzimet Where (data >= #" & SQLDate(txtdata.Text) & "#) And (data <= #" & SQLDate(txtdata.Text) & "#)"
.Open criteria, strConek, 3, 3
Do While Not .EOF
rtotal = rtotal + CCur(!total)
lv.ListItems.Add , , !pershkrimi
lv.ListItems(lv.ListItems.Count).SubItems(1) = !personi_pergjegjes
lv.ListItems(lv.ListItems.Count).SubItems(2) = Format(CCur(!total), "###,###,##0.00")
txtshuma.Text = rtotal
.MoveNext
Loop
.Close
End With
Case "mujore"
lv.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblShpenzimet Where muaji='" & lblmuaji.Caption & "'"
.Open criteria, strConek, 3, 3
If !viti = txtviti.Text Then
Do While Not .EOF
lv.ListItems.Add , , !pershkrimi
lv.ListItems(lv.ListItems.Count).SubItems(1) = !personi_pergjegjes
lv.ListItems(lv.ListItems.Count).SubItems(2) = Format(CCur(!total), "###,###,##0.00")
rtotal = rtotal + CCur(!total)
txtshuma.Text = rtotal
.MoveNext
Loop
.Close
End If
End With
End Select
End Sub

Private Sub Command2_Click()

End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
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
