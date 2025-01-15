VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Begin VB.Form ReportCase2 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Raporti Sipas Punetoreve"
   ClientHeight    =   3735
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4305
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3735
   ScaleWidth      =   4305
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Shiko"
      Height          =   495
      Left            =   1200
      TabIndex        =   5
      Top             =   3120
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Dalja"
      Height          =   495
      Left            =   2760
      TabIndex        =   4
      Top             =   3120
      Width           =   1455
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
      TabIndex        =   2
      Top             =   1440
      Width           =   2895
   End
   Begin VB.CheckBox chkPunetori 
      Caption         =   "Raporti sipas Punetorit"
      Enabled         =   0   'False
      Height          =   255
      Left            =   4680
      TabIndex        =   1
      Top             =   5160
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   0
      Top             =   3000
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   3
      Top             =   720
      Width           =   4815
      _ExtentX        =   8493
      _ExtentY        =   53
   End
   Begin MSComDlg.CommonDialog cd1 
      Left            =   3600
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSMask.MaskEdBox txt2 
      Height          =   375
      Left            =   2160
      TabIndex        =   6
      Top             =   2160
      Width           =   1935
      _ExtentX        =   3413
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
      Left            =   120
      TabIndex        =   7
      Top             =   2160
      Width           =   1935
      _ExtentX        =   3413
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
   Begin VB.Label Label2 
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
      Left            =   120
      TabIndex        =   16
      Top             =   1920
      Width           =   975
   End
   Begin VB.Label Label3 
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
      Left            =   2160
      TabIndex        =   15
      Top             =   1920
      Width           =   975
   End
   Begin VB.Label lblsup 
      Caption         =   "6"
      Height          =   255
      Left            =   5160
      TabIndex        =   14
      Top             =   2160
      Width           =   1815
   End
   Begin VB.Label lblcat 
      Caption         =   "Label6"
      Height          =   255
      Left            =   4320
      TabIndex        =   13
      Top             =   8040
      Width           =   1935
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Raporti i Shitjes"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   960
      TabIndex        =   12
      Top             =   240
      Width           =   2535
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000010&
      Caption         =   "Zgjidhni daten filluese dhe daten perfundimtare"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   0
      TabIndex        =   11
      Top             =   960
      Width           =   4335
   End
   Begin VB.Label Label4 
      Caption         =   "Emri:"
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
      TabIndex        =   10
      Top             =   1440
      Width           =   975
   End
   Begin VB.Image Image3 
      Height          =   720
      Left            =   120
      Picture         =   "ReportCase2.frx":0000
      Top             =   0
      Width           =   720
   End
   Begin VB.Label Label6 
      Caption         =   "Shembull: 06/24/2006"
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
      Left            =   120
      TabIndex        =   9
      Top             =   2640
      Width           =   2055
   End
   Begin VB.Label Label7 
      Caption         =   "SHITES"
      Height          =   375
      Left            =   360
      TabIndex        =   8
      Top             =   3360
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00808080&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   735
      Left            =   0
      Top             =   0
      Width           =   11775
   End
End
Attribute VB_Name = "ReportCase2"
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
Print #1, "Raporti i shitjes"
Print #1, "Prej: " & txt1.Text; " Deri: " & txt2.Text
Print #1,
Print #1,
Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Pershkrimi" & Space(50 - Len("Pershkrimi")) & "Qmimi" & Space(15 - Len("Qmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "Total"
Print #1,
.MoveFirst
Do While Not .EOF
If !punetori = cboPunetoret.Text Then
rtotal = rtotal + CCur(!total)
Print #1, !barkodi & Space(15 - Len(!barkodi)) & !pershkrimi & Space(50 - Len(!pershkrimi)) & !qmimi & Space(15 - Len(!qmimi)) & !sasia & Space(10 - Len(!sasia)) & !total
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
Load frmReports
frmReports.Show vbModal
Else
MsgBox "Nuk ka pasur shitje gjate kesaj date", vbCritical, "Gabim!"
txt1.SetFocus
SendKeys "{home}+{end}"
Exit Sub
End If
.Close
Unload Me
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

Private Sub Form_Load()
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
criteria = "Select *From tblPerdoruesit Where pozicioni='" & Label7 & "'"
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

