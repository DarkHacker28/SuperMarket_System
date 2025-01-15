VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmKatShpenzimet 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Expenses category"
   ClientHeight    =   4215
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4920
   Icon            =   "frmKatShpenzimet.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4215
   ScaleWidth      =   4920
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Add"
      Height          =   495
      Left            =   3120
      TabIndex        =   2
      Top             =   120
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Delete"
      Height          =   495
      Left            =   3120
      TabIndex        =   1
      Top             =   720
      Width           =   1695
   End
   Begin VB.CommandButton Command4 
      Caption         =   "OK"
      Height          =   495
      Left            =   3120
      TabIndex        =   0
      Top             =   3600
      Width           =   1695
   End
   Begin ComctlLib.ListView lv 
      Height          =   3975
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   2895
      _ExtentX        =   5106
      _ExtentY        =   7011
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      NumItems        =   1
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Category"
         Object.Width           =   4410
      EndProperty
   End
End
Attribute VB_Name = "frmKatShpenzimet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmKatNew.Show 1
End Sub

Private Sub Command3_Click()
If lv.ListItems.Count = 0 Then
Exit Sub
Else
Call dbconek
With ar
criteria = "Select *From tblKategoria_Shpenzimeve Where kategoria ='" & lv.SelectedItem.Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.Delete
MsgBox "Shenimi u fshi me sukses.", vbInformation, "Fshirja!"
.Close
End With
lv.Refresh
End If
lv.ListItems.Remove (lv.SelectedItem.Index)
End Sub

Private Sub Command4_Click()
Unload Me
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
lv.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblKategoria_Shpenzimeve"
.Open criteria, strConek, 3, 3
Do While Not .EOF
lv.ListItems.Add , , !kategoria
.MoveNext
Loop
.Close
End With
End Sub


