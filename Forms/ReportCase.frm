VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "richtx32.ocx"
Begin VB.Form ReportCase 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Sales report"
   ClientHeight    =   8865
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10605
   Icon            =   "ReportCase.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8865
   ScaleWidth      =   10605
   StartUpPosition =   2  'CenterScreen
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   20
      Top             =   8160
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   53
   End
   Begin VB.PictureBox Picture2 
      Height          =   2415
      Left            =   4920
      ScaleHeight     =   2355
      ScaleWidth      =   2235
      TabIndex        =   18
      Top             =   8880
      Visible         =   0   'False
      Width           =   2295
      Begin RichTextLib.RichTextBox rtfReport 
         Height          =   6135
         Left            =   600
         TabIndex        =   19
         Top             =   -120
         Width           =   11895
         _ExtentX        =   20981
         _ExtentY        =   10821
         _Version        =   393217
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"ReportCase.frx":0ECA
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Courier New"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   3480
         Top             =   6120
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
         FontName        =   "tahoma"
      End
   End
   Begin VB.CommandButton Command3 
      Caption         =   "OK"
      Height          =   375
      Left            =   9240
      TabIndex        =   17
      Top             =   1200
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      Height          =   495
      Left            =   5640
      ScaleHeight     =   435
      ScaleWidth      =   2115
      TabIndex        =   11
      Top             =   8520
      Visible         =   0   'False
      Width           =   2175
      Begin VB.CheckBox chkPunetori 
         Caption         =   "Raporti sipas Punetorit"
         Enabled         =   0   'False
         Height          =   255
         Left            =   0
         TabIndex        =   12
         Top             =   1080
         Value           =   1  'Checked
         Width           =   2655
      End
      Begin MSComDlg.CommonDialog cd1 
         Left            =   960
         Top             =   0
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.Label lblsup 
         Caption         =   "6"
         Height          =   255
         Left            =   0
         TabIndex        =   15
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label lblcat 
         Caption         =   "Label6"
         Height          =   255
         Left            =   0
         TabIndex        =   14
         Top             =   1440
         Width           =   1935
      End
      Begin VB.Label Label7 
         Caption         =   "SHITES"
         Height          =   375
         Left            =   960
         TabIndex        =   13
         Top             =   960
         Visible         =   0   'False
         Width           =   615
      End
   End
   Begin VB.ComboBox cboPunetoret 
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
      Height          =   315
      Left            =   1200
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   1200
      Width           =   2895
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   495
      Left            =   2160
      TabIndex        =   3
      Top             =   8280
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Print"
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   8280
      Width           =   1935
   End
   Begin MSMask.MaskEdBox txt2 
      Height          =   375
      Left            =   7320
      TabIndex        =   1
      Top             =   1200
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   661
      _Version        =   393216
      MaxLength       =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin MSMask.MaskEdBox txt1 
      Height          =   375
      Left            =   4920
      TabIndex        =   0
      Top             =   1200
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   661
      _Version        =   393216
      MaxLength       =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   8
      Top             =   960
      Width           =   10575
      _ExtentX        =   18653
      _ExtentY        =   53
   End
   Begin ComctlLib.ListView lv 
      Height          =   6255
      Left            =   120
      TabIndex        =   16
      Top             =   1680
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   11033
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
         Text            =   "Kodi"
         Object.Width           =   2646
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Emertimi i Artikullit"
         Object.Width           =   6174
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Çmimi"
         Object.Width           =   1587
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "TVSH"
         Object.Width           =   1587
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Sasia"
         Object.Width           =   1499
      EndProperty
      BeginProperty ColumnHeader(6) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   5
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Total"
         Object.Width           =   1587
      EndProperty
   End
   Begin VB.Label lbltotal 
      Alignment       =   1  'Right Justify
      Caption         =   "00.00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   9480
      TabIndex        =   22
      Top             =   8400
      Width           =   975
   End
   Begin VB.Label Label5 
      Caption         =   "TOTAL:"
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
      Left            =   8640
      TabIndex        =   21
      Top             =   8400
      Width           =   735
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "ReportCase.frx":0F53
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Sales report"
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
      Index           =   2
      Left            =   1080
      TabIndex        =   10
      Top             =   240
      Width           =   3375
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Type date for report"
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
      Height          =   255
      Index           =   1
      Left            =   1080
      TabIndex        =   9
      Top             =   600
      Width           =   4935
   End
   Begin VB.Label Label4 
      Caption         =   "Cashier:"
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
      TabIndex        =   7
      Top             =   1200
      Width           =   975
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "To:"
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
      Left            =   6840
      TabIndex        =   5
      Top             =   1200
      Width           =   975
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "From:"
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
      Left            =   4320
      TabIndex        =   4
      Top             =   1200
      Width           =   975
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   11775
   End
End
Attribute VB_Name = "ReportCase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False











Private Sub cboPunetoret_Click()
On Error Resume Next
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbuser
ac.Open strConek
With ar
criteria = "Select *From tblperdoruesit Where emri='" & cboPunetoret.Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
lblsup.Caption = !id
.Close
End With
End Sub
Public Sub LoadSubCat()
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbuser
ac.Open strConek
With ar
criteria = "Select *From tblperdoruesit Where emri='" & cboPunetoret.Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic

cboPunetoret.Clear
ar.Filter = "(Niveli ='" & lblniveli.Caption & "')"
Do Until ar.EOF
If Not IsNull(ar!perdoruesi) Then cboPunetoret.AddItem ar!perdoruesi
ar.MoveNext
DoEvents
Loop
If ar.RecordCount > 0 Then
ar.MoveFirst
cboPunetoret.Text = ar!perdoruesi
End If
End With
End Sub


Private Sub Check1_Click()
If Check1.Value = 1 Then
cboPunetoret.Enabled = False
chkPunetori.Enabled = False
chkPunetori.Value = 0
End If
If Check1.Value = 0 Then
cboPunetoret.Enabled = True
chkPunetori.Enabled = True
chkPunetori.Value = 1
End If
End Sub

Private Sub Command1_Click()
On Error Resume Next
Dim rtotal As Currency
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblshitja Where  (data >= #" & SQLDate(txt1.Text) & "#) And (data <= #" & SQLDate(txt2.Text) & "#)"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount > 0 Then
Open App.Path & "\Raporti.txt" For Append As #1
Dim Arq1 As String
Dim Arq2 As String
Dim Arq3 As String
Arq1 = ReadINI(App.Path & "\Kompania.ini", "Emri", "Emri")
Arq2 = ReadINI(App.Path & "\Kompania.ini", "Adresa", "Adresa")
Arq3 = ReadINI(App.Path & "\Kompania.ini", "Telefoni", "Telefoni")
Print #1,
Print #1, Arq1
Print #1, Arq2
Print #1, Arq3
Print #1, "-------------------------------------------------------------------------"
Print #1,
Print #1, "Raporti i shitjes"
Print #1, "Prej: " & txt1.Text; " Deri: " & txt2.Text
Print #1,
Print #1,
Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Pershkrimi" & Space(50 - Len("Pershkrimi")) & "Qmimi" & Space(15 - Len("Qmimi")) & "TVSH" & Space(15 - Len("TVSH")) & "Sasia" & Space(10 - Len("Sasia")) & "Total"
Print #1,
.MoveFirst
Do While Not .EOF
If !punetori = cboPunetoret.Text Then
rtotal = rtotal + CCur(!totaltvsh)
Print #1, !barkodi & Space(15 - Len(!barkodi)) & !pershkrimi & Space(50 - Len(!pershkrimi)) & !qmimi & Space(15 - Len(!qmimi)) & !tvsh & Space(15 - Len(!tvsh)) & !sasia & Space(10 - Len(!sasia)) & !total
.MoveNext
Else
.MoveNext
End If
Loop
Print #1,
Print #1,
Print #1, "TOTAL : " & Format(CCur(rtotal), "###,###,##0.00")
Print #1,
Close #1
'Printimi*****************************************
rtfReport.Filename = App.Path & "\raporti.txt"
On Error GoTo check_pr
cd1.Flags = cdlPDDisablePrintToFile Or cdlPDNoSelection Or cdlPDReturnDC
cd1.ShowPrinter
For I = 1 To cd1.Copies
rtfReport.SelPrint cd1.hDc
Next I
Exit Sub
check_pr:
If err.Number = 32755 Then
Else
MsgBox "Gabim: " & err.Number & " " & err.Description
End If
'Load frmReports
'frmReports.Show vbModal
Else
MsgBox "Nuk ka pasur shitje gjate kesaj date", vbCritical, "Gabim!"
txt1.SetFocus
SendKeys "{home}+{end}"
Exit Sub
End If
.Close
End With
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Command3_Click()
lv.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblshitja Where (data >= #" & SQLDate(txt1.Text) & "#) And (data <= #" & SQLDate(txt2.Text) & "#)"
.Open criteria, strConek, 3, 3
Do While Not .EOF
If !punetori = cboPunetoret.Text Then
rtotal = rtotal + CCur(!total)
lv.ListItems.Add , , !barkodi
lv.ListItems(lv.ListItems.Count).SubItems(1) = !pershkrimi
lv.ListItems(lv.ListItems.Count).SubItems(2) = !qmimi
lv.ListItems(lv.ListItems.Count).SubItems(3) = !tvsh
lv.ListItems(lv.ListItems.Count).SubItems(4) = !sasia
lv.ListItems(lv.ListItems.Count).SubItems(5) = !total
lbltotal.Caption = rtotal
.MoveNext
Else
.MoveNext
End If
Loop
.Close
End With
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
On Error Resume Next
Call clearreport
txt1 = Format(Date, "dd/mm/yyyy")
txt2 = Format(Date, "dd/mm/yyyy")
'=====Vendosja e Emrave te perdoruesve ne Combo Box==============
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbuser
ac.Open strConek
With ar
criteria = "Select *From tblPerdoruesit"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
ar.MoveFirst
Do While Not ar.EOF
cboPunetoret.AddItem ar!emri
ar.MoveNext
Loop
ar.Close
End With
End Sub
Private Sub txt2_GotFocus()
    SendKeys "{home}+{end}"
End Sub
