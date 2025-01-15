VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmos 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Product out of stock"
   ClientHeight    =   8145
   ClientLeft      =   45
   ClientTop       =   2145
   ClientWidth     =   11940
   Icon            =   "frmos.frx":0000
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8145
   ScaleMode       =   0  'User
   ScaleWidth      =   11934.67
   WindowState     =   2  'Maximized
   Begin ComctlLib.ListView lst 
      Height          =   7335
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9615
      _ExtentX        =   16960
      _ExtentY        =   12938
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
      NumItems        =   5
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Barkodi"
         Object.Width           =   3176
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Pershkrimi"
         Object.Width           =   8823
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Furnizuesi"
         Object.Width           =   3000
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Kategoria ID"
         Object.Width           =   3000
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Sasia"
         Object.Width           =   2294
      EndProperty
   End
   Begin VB.Label txtsasia 
      Caption         =   "0"
      Height          =   255
      Left            =   5400
      TabIndex        =   1
      Top             =   7560
      Width           =   1335
   End
   Begin ComctlLib.ImageList ImageList1 
      Left            =   10080
      Top             =   1080
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   1
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmos.frx":038A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin ComctlLib.ImageList ImageList2 
      Left            =   0
      Top             =   0
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
            Picture         =   "frmos.frx":0FDC
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuMenyja 
      Caption         =   "Menyja"
      Visible         =   0   'False
      Begin VB.Menu mnuShtyp 
         Caption         =   "Shtype listën e artikujve"
      End
   End
End
Attribute VB_Name = "frmos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
'Call ListView_FullRowSelect(lst)
Call dbconek
ac.Open strConek
With ar
criteria = "Select * From tblArtikujt Where sasia like'" & txtsasia & "%'"
.Open criteria, strConek, 3, 3
Do While Not .EOF
lst.ListItems.Add , , !barkodi
lst.ListItems(lst.ListItems.Count).SubItems(1) = !pershkrimi
lst.ListItems(lst.ListItems.Count).SubItems(2) = !furnizuesi
lst.ListItems(lst.ListItems.Count).SubItems(3) = !kategoria
lst.ListItems(lst.ListItems.Count).SubItems(4) = !sasia
.MoveNext
Loop
.Close
End With
End Sub

Private Sub Form_Resize()
    lst.Width = ScaleWidth
lst.height = ScaleHeight
End Sub

Private Sub lst_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 2 Then PopupMenu mnumenyja
End Sub

Private Sub mnuShtyp_Click()
On Error Resume Next
Kill App.Path & "\blerja.txt"
Open App.Path & "\blerja.txt" For Append As #1
Print #1,
Print #1, "LISTA E ARTIKUJVE PER POROSI"
Print #1, "---------------------------------------------------------------------------"
Print #1,
Print #1, "Data: " & Format(Now, "dd/mm/yyyy")
Print #1,
Print #1,
Print #1, "Pershkrimi" & Space(50 - Len("Pershkrimi")) & "Sasia" & Space(15 - Len("Sasia")) & "Furnizuesi" & Space(10 - Len("Furnizuesi"))
Print #1,
For ii = 1 To lst.ListItems.Count
Print #1, lst.ListItems(ii).SubItems(1) & Space(50 - Len(lst.ListItems(ii).SubItems(1))) & lst.ListItems(ii).SubItems(4) & Space(15 - Len(lst.ListItems(ii).SubItems(4))) & lst.ListItems(ii).SubItems(2) & Space(10 - Len(lst.ListItems(ii).SubItems(2)))
Next
Print #1,
Print #1, "---------------------------------------------------------------------------"
Close #1
frmosreports.Show
Unload Me
End Sub
