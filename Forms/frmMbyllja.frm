VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form frmMbyllja 
   Caption         =   "Form1"
   ClientHeight    =   8130
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9585
   LinkTopic       =   "Form1"
   ScaleHeight     =   8130
   ScaleWidth      =   9585
   StartUpPosition =   3  'Windows Default
   Begin ComctlLib.ListView lv 
      Height          =   5055
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   8916
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   3
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
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   1335
      Left            =   2520
      TabIndex        =   0
      Top             =   5760
      Width           =   3855
   End
End
Attribute VB_Name = "frmMbyllja"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For ilst = 1 To lv.ListItems.Count
lstid = lv.ListItems(ilst).Text
lstpershkrimi = lv.ListItems(ilst).SubItems(1)
lstsasia = lv.ListItems(ilst).SubItems(2)
'Nderrimi i sasive
'***********************************************************
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbsasia
ac.Open strConek
With ar
criteria = "Select *From tblArtikujt Where barkodi='" & lstid & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!sasia = Val(!sasia) - Val(lstsasia)
.Update
.Close
End With
Next
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
lv.ListItems.Clear
Call dbshitja
With ar
criteria = "Select *From tblshitja"
.Open criteria, strConek, 3, 3
Do While Not .EOF
lv.ListItems.Add , , !barkodi
lv.ListItems(lv.ListItems.Count).SubItems(1) = !pershkrimi
lv.ListItems(lv.ListItems.Count).SubItems(2) = !sasia
.MoveNext
Loop
.Close
End With
End Sub
