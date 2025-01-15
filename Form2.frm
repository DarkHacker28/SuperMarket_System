VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   7140
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8865
   LinkTopic       =   "Form2"
   ScaleHeight     =   7140
   ScaleWidth      =   8865
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ListView LvSearch 
      Height          =   4695
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8535
      _ExtentX        =   15055
      _ExtentY        =   8281
      View            =   3
      Sorted          =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      Checkboxes      =   -1  'True
      FullRowSelect   =   -1  'True
      _Version        =   393217
      Icons           =   "imglstListImages"
      SmallIcons      =   "imglstListImages"
      ColHdrIcons     =   "imglstListImages"
      ForeColor       =   -2147483640
      BackColor       =   16640987
      BorderStyle     =   1
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
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Artikulli"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Qmimi"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Sasia"
         Object.Width           =   2646
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "TOTAL"
         Object.Width           =   2540
      EndProperty
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Dim itmX As ListItem
Dim DataBases As Database
Dim RSocio As Recordset
Dim StrSQL As String
Dim CondizioniRicerca As Boolean
LvSearch.ListItems.Clear
StrSQL = "SELECT * FROM saledetails" ' WHERE Cognome Like " & " '" & Text1.Text & "*'" & " order by Cognome"
Set DataBases = OpenDatabase(App.Path & "\db1.MDB")
Set RSocio = DataBases.OpenRecordset(StrSQL)
Do Until RSocio.EOF
Set itmX = LvSearch.ListItems.Add()
With RSocio
itmX.Text = .Fields("longdesc")
itmX.SubItems(1) = .Fields("unitprice")
itmX.SubItems(2) = .Fields("quantity")
itmX.SubItems(3) = .Fields("total")
CondizioniRicerca = True
RSocio.MoveNext
End With
Loop
If CondizioniRicerca = False Then
LvSearch.ListItems.Add.Text = "Ricerca completata, nessun record trovato..."
End If
LvSearch.GridLines = True
End Sub
