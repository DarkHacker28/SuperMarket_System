VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "richtx32.ocx"
Begin VB.Form RaportiDitor 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Sales report"
   ClientHeight    =   8610
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10575
   Icon            =   "RaportiDitor.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8610
   ScaleWidth      =   10575
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture2 
      Height          =   10815
      Left            =   5760
      ScaleHeight     =   10755
      ScaleWidth      =   12555
      TabIndex        =   25
      Top             =   9600
      Visible         =   0   'False
      Width           =   12615
      Begin RichTextLib.RichTextBox rtfReport 
         Height          =   6135
         Left            =   -1920
         TabIndex        =   26
         Top             =   1440
         Width           =   11895
         _ExtentX        =   20981
         _ExtentY        =   10821
         _Version        =   393217
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"RaportiDitor.frx":0ECA
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
   Begin VB.CommandButton Command1 
      Caption         =   "Print"
      Height          =   450
      Left            =   120
      TabIndex        =   24
      Top             =   8040
      Width           =   1935
   End
   Begin VB.PictureBox Picture1 
      Height          =   4215
      Left            =   2280
      ScaleHeight     =   4155
      ScaleWidth      =   6915
      TabIndex        =   9
      Top             =   8640
      Visible         =   0   'False
      Width           =   6975
      Begin VB.CommandButton Command5 
         Caption         =   "Command5"
         Height          =   1335
         Left            =   5400
         TabIndex        =   29
         Top             =   840
         Width           =   1095
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
         TabIndex        =   14
         Top             =   2880
         Width           =   2895
      End
      Begin VB.CheckBox chkPunetori 
         Caption         =   "Raporti sipas Punetorit"
         Enabled         =   0   'False
         Height          =   255
         Left            =   4560
         TabIndex        =   13
         Top             =   3000
         Width           =   2655
      End
      Begin VB.ComboBox cboniveli 
         Height          =   315
         Left            =   4080
         TabIndex        =   12
         Text            =   "Shites"
         Top             =   2400
         Width           =   1815
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Raporti i Përgjithshëm"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   3360
         Value           =   1  'Checked
         Width           =   4335
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Command3"
         Height          =   735
         Left            =   240
         TabIndex        =   10
         Top             =   960
         Width           =   1815
      End
      Begin MSMask.MaskEdBox txt2 
         Height          =   375
         Left            =   2040
         TabIndex        =   15
         Top             =   2040
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         _Version        =   393216
         Enabled         =   0   'False
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
         Left            =   0
         TabIndex        =   16
         Top             =   500
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         _Version        =   393216
         Enabled         =   0   'False
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
      Begin MSComctlLib.ImageList itb32x32 
         Left            =   2160
         Top             =   960
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   32
         ImageHeight     =   32
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   17
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":0F53
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":28E5
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":4277
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":5C09
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":759B
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":8F2D
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":A8BF
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":C251
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":DBE3
               Key             =   ""
            EndProperty
            BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":F577
               Key             =   ""
            EndProperty
            BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":10253
               Key             =   ""
            EndProperty
            BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":10B33
               Key             =   ""
            EndProperty
            BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":1180F
               Key             =   ""
            EndProperty
            BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":124EB
               Key             =   ""
            EndProperty
            BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":131C7
               Key             =   ""
            EndProperty
            BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":13EA3
               Key             =   ""
            EndProperty
            BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor.frx":14B7F
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Prej:"
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
         Left            =   0
         TabIndex        =   22
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Deri:"
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
         Left            =   2040
         TabIndex        =   21
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label lblsup 
         Caption         =   "6"
         Height          =   255
         Left            =   5040
         TabIndex        =   20
         Top             =   0
         Width           =   1815
      End
      Begin VB.Label lblcat 
         Caption         =   "Label6"
         Height          =   255
         Left            =   2880
         TabIndex        =   19
         Top             =   1200
         Width           =   1935
      End
      Begin VB.Label Label1 
         Caption         =   "Arka NR:"
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
         Index           =   2
         Left            =   120
         TabIndex        =   18
         Top             =   2880
         Width           =   975
      End
      Begin VB.Label lblniveli 
         Caption         =   "Shites"
         Height          =   135
         Left            =   5040
         TabIndex        =   17
         Top             =   1680
         Width           =   1335
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   450
      Left            =   8760
      TabIndex        =   5
      Top             =   8040
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Command3"
      Height          =   735
      Left            =   6360
      TabIndex        =   0
      Top             =   11280
      Width           =   1815
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   1
      Top             =   960
      Width           =   10575
      _ExtentX        =   18653
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   6
      Top             =   7920
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   53
   End
   Begin MSComDlg.CommonDialog cd1 
      Left            =   8640
      Top             =   240
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin ComctlLib.ListView lv 
      Height          =   6255
      Left            =   120
      TabIndex        =   23
      Top             =   1560
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
         Object.Width           =   882
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
   Begin VB.Label Label3 
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
      Left            =   8520
      TabIndex        =   28
      Top             =   1125
      Width           =   735
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
      Left            =   9360
      TabIndex        =   27
      Top             =   1125
      Width           =   975
   End
   Begin VB.Label lbldata 
      Caption         =   "Label7"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   1920
      TabIndex        =   8
      Top             =   1200
      Width           =   2415
   End
   Begin VB.Label Label6 
      Caption         =   "Report for date:"
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
      TabIndex        =   7
      Top             =   1200
      Width           =   1455
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
      TabIndex        =   4
      Top             =   600
      Width           =   4935
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
      Index           =   0
      Left            =   1080
      TabIndex        =   3
      Top             =   240
      Width           =   3375
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "RaportiDitor.frx":1545B
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label2 
      Caption         =   "Label6"
      Height          =   255
      Left            =   8280
      TabIndex        =   2
      Top             =   11280
      Width           =   1935
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
            Picture         =   "RaportiDitor.frx":16325
            Key             =   ""
         EndProperty
      EndProperty
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
Attribute VB_Name = "RaportiDitor"
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
criteria = "Select *From systemuser Where emri='" & cboPunetoret.Text & "'"
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
criteria = "Select *From systemuser Where emri='" & cboPunetoret.Text & "'"
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
rtotal = rtotal + CCur(!totaltvsh)
Print #1, !barkodi & Space(15 - Len(!barkodi)) & !pershkrimi & Space(50 - Len(!pershkrimi)) & !qmimi & Space(15 - Len(!qmimi)) & !tvsh & Space(15 - Len(!tvsh)) & !sasia & Space(10 - Len(!sasia)) & !total
.MoveNext
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
Dim rtotal As Currency
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbshitja
ac.Open strConek
With ar
criteria = "Select *From saledetails Where  (date >= #" & SQLDate(txt1.Text) & "#) And (Date <= #" & SQLDate(txt2.Text) & "#)"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount > 1 Then
Open App.Path & "\Raporti.txt" For Append As #1
Print #1, "Report Title: Sales Report By Date Only"
Print #1, "Date Range: " & txt1.Text; " To " & txt2.Text
Print #1, "Supplier: All"
Print #1, "Category Name: All"
Print #1,
Print #1,
Print #1, "UPC/Barcode" & Space(15 - Len("UPC/Barcode")) & "Description" & Space(50 - Len("Description")) & "Unit Price" & Space(15 - Len("Unit Price")) & "Quantity" & Space(10 - Len("Quantity")) & "Total"
Print #1,
.MoveFirst
Do While Not .EOF
rtotal = rtotal + CCur(!total)
Print #1, !upc & Space(15 - Len(!upc)) & !longdesc & Space(50 - Len(!longdesc)) & !unitprice & Space(15 - Len(!unitprice)) & !quantity & Space(10 - Len(!quantity)) & !total
.MoveNext
Loop
Print #1, Space(98 - Len("Total Sales: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("Total Sales: " & Format(CCur(rtotal), "###,###,##0.00"))
Close #1
End If
End With
frmReports.Show
End Sub

Private Sub DTPicker1_Change()

End Sub

Private Sub Command4_Click()
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
Unload Me
End Sub

Private Sub Command5_Click()
Call ListView_FullRowSelect(lv)
On Error Resume Next
Call clearreport
'=====Vendosja e Emrave te perdoruesve ne Combo Box==============
txt1.Text = Format(Now, "dd/mm/yyyy")
txt2.Text = Format(Now, "dd/mm/yyyy")
lbldata.Caption = Format(Now, "dd/mm/yyyy")
rtfReport.Filename = App.Path & "\raporti.txt"
'*****************************************LISTA
lv.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblshitja Where (data >= #" & SQLDate(txt1.Text) & "#) And (data <= #" & SQLDate(txt2.Text) & "#)"
.Open criteria, strConek, 3, 3
Do While Not .EOF
rtotal = rtotal + CCur(!total)
lv.ListItems.Add , , !barkodi
lv.ListItems(lv.ListItems.Count).SubItems(1) = !pershkrimi
lv.ListItems(lv.ListItems.Count).SubItems(2) = !qmimi
lv.ListItems(lv.ListItems.Count).SubItems(3) = !tvsh
lv.ListItems(lv.ListItems.Count).SubItems(4) = !sasia
lv.ListItems(lv.ListItems.Count).SubItems(5) = !total
lbltotal.Caption = rtotal
.MoveNext
Loop
.Close
End With
'*****************************************END
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
'On Error Resume Next
Call clearreport
'=====Vendosja e Emrave te perdoruesve ne Combo Box==============
txt1.Text = Format(Now, "dd/mm/yyyy")
txt2.Text = Format(Now, "dd/mm/yyyy")
lbldata.Caption = Format(Now, "dd/mm/yyyy")
rtfReport.Filename = App.Path & "\raporti.txt"
'*****************************************LISTA
lv.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblshitja Where (data >= #" & SQLDate(txt1.Text) & "#) And (data <= #" & SQLDate(txt2.Text) & "#)"
.Open criteria, strConek, 3, 3
Do While Not .EOF
rtotal = rtotal + CCur(!total)
lv.ListItems.Add , , !barkodi
lv.ListItems(lv.ListItems.Count).SubItems(1) = !pershkrimi
lv.ListItems(lv.ListItems.Count).SubItems(2) = !qmimi
lv.ListItems(lv.ListItems.Count).SubItems(3) = !tvsh
lv.ListItems(lv.ListItems.Count).SubItems(4) = !sasia
lv.ListItems(lv.ListItems.Count).SubItems(5) = !total
lbltotal.Caption = rtotal
.MoveNext
Loop
.Close
End With
'*****************************************END
End Sub

Private Sub txt2_GotFocus()
    SendKeys "{home}+{end}"
End Sub

