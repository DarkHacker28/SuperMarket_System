VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmShitja2 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Shitja 2"
   ClientHeight    =   3990
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4575
   Icon            =   "frmShitja2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3990
   ScaleWidth      =   4575
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Shiko"
      Height          =   495
      Left            =   1200
      TabIndex        =   7
      Top             =   3360
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Dalja"
      Height          =   495
      Left            =   2880
      TabIndex        =   6
      Top             =   3360
      Width           =   1575
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
      Left            =   1680
      TabIndex        =   4
      Text            =   "Combo1"
      Top             =   1440
      Width           =   2775
   End
   Begin VB.CheckBox chkPunetori 
      Caption         =   "Raporti sipas Punetorit"
      Enabled         =   0   'False
      Height          =   255
      Left            =   4680
      TabIndex        =   3
      Top             =   5160
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin VB.ComboBox cboniveli 
      Height          =   315
      Left            =   840
      TabIndex        =   1
      Text            =   "Shites"
      Top             =   6600
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
      TabIndex        =   0
      Top             =   1920
      Width           =   4335
   End
   Begin SmartCASH.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   2
      Top             =   3240
      Width           =   4335
      _ExtentX        =   7646
      _ExtentY        =   53
   End
   Begin SmartCASH.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   5
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
      Left            =   2520
      TabIndex        =   8
      Top             =   2640
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   661
      _Version        =   393216
      MaxLength       =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
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
      TabIndex        =   9
      Top             =   2640
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   661
      _Version        =   393216
      MaxLength       =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin MSComctlLib.ImageList itb32x32 
      Left            =   3600
      Top             =   6840
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
            Picture         =   "frmShitja2.frx":0ECA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":285C
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":41EE
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":5B80
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":7512
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":8EA4
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":A836
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":C1C8
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":DB5A
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":F4EE
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":101CA
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":10AAA
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":11786
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":12462
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":1313E
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":13E1A
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmShitja2.frx":14AF6
            Key             =   ""
         EndProperty
      EndProperty
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
      TabIndex        =   17
      Top             =   2400
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
      Left            =   2520
      TabIndex        =   16
      Top             =   2400
      Width           =   975
   End
   Begin VB.Label lblsup 
      Caption         =   "6"
      Height          =   255
      Left            =   5160
      TabIndex        =   15
      Top             =   2160
      Width           =   1815
   End
   Begin VB.Label lblcat 
      Caption         =   "Label6"
      Height          =   255
      Left            =   4320
      TabIndex        =   14
      Top             =   7080
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
      Left            =   840
      TabIndex        =   13
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
      TabIndex        =   12
      Top             =   960
      Width           =   4695
   End
   Begin VB.Label Label4 
      Caption         =   "Emri i Punetorit:"
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
      TabIndex        =   11
      Top             =   1440
      Width           =   1455
   End
   Begin VB.Image Image3 
      Height          =   720
      Left            =   0
      Picture         =   "frmShitja2.frx":153D2
      Top             =   0
      Width           =   720
   End
   Begin VB.Label lblniveli 
      Caption         =   "Shites"
      Height          =   135
      Left            =   1800
      TabIndex        =   10
      Top             =   5880
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   0
      Picture         =   "frmShitja2.frx":1629C
      Stretch         =   -1  'True
      Top             =   0
      Width           =   4665
   End
End
Attribute VB_Name = "frmShitja2"
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
End If
If Check1.Value = 0 Then
cboPunetoret.Enabled = True
chkPunetori.Enabled = True
End If
End Sub

Private Sub Command1_Click()
On Error Resume Next
Dim rtotal As Currency
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbshitjaf2
ac.Open strConek
    With ar
        criteria = "Select *From saledetails Where  (date >= #" & SQLDate(txt1.Text) & "#) And (Date <= #" & SQLDate(txt2.Text) & "#)"
        .Open criteria, strConek, adOpenStatic, adLockOptimistic
            If .RecordCount > 1 Then
                If chkPunetori.Value = 0 And Check1.Value = 1 Then
                    Open App.Path & "\Raporti.txt" For Append As #1
                        Print #1, "Raporti i shitjes"
                        Print #1, "Prej: " & txt1.Text; " Deri: " & txt2.Text
                        Print #1,
                        Print #1,
                        Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Pershkrimi" & Space(50 - Len("Pershkrimi")) & "Qmimi" & Space(15 - Len("Qmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "Total"
                        Print #1,
                        .MoveFirst
                        Do While Not .EOF
                            rtotal = rtotal + CCur(!total)
                            Print #1, !upc & Space(15 - Len(!upc)) & !longdesc & Space(50 - Len(!longdesc)) & !unitprice & Space(15 - Len(!unitprice)) & !quantity & Space(10 - Len(!quantity)) & !total
                            .MoveNext
                        Loop
                        Print #1, Space(98 - Len("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))
                    Close #1
                ElseIf chkPunetori.Value = 1 Then
                        'If !supplierid = lblsup.Caption Then
                            Open App.Path & "\Raporti.txt" For Append As #1
                                Print #1, "Raporti i shitjes"
                                Print #1, "Prej: " & txt1.Text; " Deri: " & txt2.Text
                                Print #1,
                                Print #1,
                                Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Pershkrimi" & Space(50 - Len("Pershkrimi")) & "Qmimi" & Space(15 - Len("Qmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "Total"
                                Print #1,
                                .MoveFirst
                                Do While Not .EOF
                                    If !emp = lblsup.Caption Then
                                        rtotal = rtotal + CCur(!total)
                                        Print #1, !upc & Space(15 - Len(!upc)) & !longdesc & Space(50 - Len(!longdesc)) & !unitprice & Space(15 - Len(!unitprice)) & !quantity & Space(10 - Len(!quantity)) & !total
                                        .MoveNext
                                    Else
                                        .MoveNext
                                    End If
                                Loop
                                Print #1, Space(98 - Len("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))
                            Close #1
                        'Else
                        '    MsgBox "No sales for that supplier in the given date", vbCritical, "Error"
                        '    cboxsupplier.SetFocus
                        '    Exit Sub
                        'End If
                ElseIf chksupplier.Value = 0 And chkcategory = 1 Then
                        'If !categoryid = lblcat.Caption Then
                            Open App.Path & "\Raporti.txt" For Append As #1
                                Print #1, "Raporti i shitjes sipas Kategorisë"
                                Print #1, "Prej: " & txt1.Text; " Deri: " & txt2.Text
                                Print #1, "Furnizuesit: Të gjithë"
                                Print #1, "Kategoria: " & cboxcategory.Text
                                Print #1,
                                Print #1,
                                Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Pershkrimi" & Space(50 - Len("Pershkrimi")) & "Qmimi" & Space(15 - Len("Qmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "Total"
                                Print #1,
                                .MoveFirst
                                Do While Not .EOF
                                If !categoryid = lblcat.Caption Then
                                    rtotal = rtotal + CCur(!total)
                                    Print #1, !upc & Space(15 - Len(!upc)) & !longdesc & Space(50 - Len(!longdesc)) & !unitprice & Space(15 - Len(!unitprice)) & !quantity & Space(10 - Len(!quantity)) & !total
                                    .MoveNext
                                Else
                                    .MoveNext
                                End If
                                Loop
                                Print #1, Space(98 - Len("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))
                            Close #1
                        'Else
                        '    MsgBox "No sales for that category in the given date", vbCritical, "Error"
                        '    cboxsupplier.SetFocus
                        '    Exit Sub
                        'End If
                ElseIf chksupplier.Value = 1 And chkcategory = 1 Then
                        'If !supplierid = lblsup And !categoryid = lblcat Then
                            Open App.Path & "\Raporti.txt" For Append As #1
                                Print #1, "Raporti sipas Datës, Furnizuesit dhe Kategorisë"
                                Print #1, "Prej: " & txt1.Text; " Deri: " & txt2.Text
                                Print #1, "Furnizuesi: " & cboxsupplier.Text
                                Print #1, "Kategoria: " & cboxcategory.Text
                                Print #1,
                                Print #1,
                                Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Pershkrimi" & Space(50 - Len("Pershkrimi")) & "Qmimi" & Space(15 - Len("Qmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "Total"
                                Print #1,
                                .MoveFirst
                                Do While Not .EOF
                                If !supplierid = lblsup And !categoryid = lblcat Then
                                    rtotal = rtotal + CCur(!total)
                                    Print #1, !upc & Space(15 - Len(!upc)) & !longdesc & Space(50 - Len(!longdesc)) & !unitprice & Space(15 - Len(!unitprice)) & !quantity & Space(10 - Len(!quantity)) & !total
                                    .MoveNext
                                Else
                                    .MoveNext
                                End If
                                Loop
                                Print #1, Space(98 - Len("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))
                            Close #1
                        'Else
                        '    MsgBox "No sales for that category and supplier in the given date", vbCritical, "Error"
                        '    cboxsupplier.SetFocus
                        '    Exit Sub
                        'End If
                End If
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
cd1.Filter = "Baza e Shitjes |*.db"
cd1.ShowOpen
lblbaza.Caption = cd1.Filename
WriteINI App.Path & "\Shitja.ini", "Shitja", "Shitja", lblbaza.Caption
End Sub

Private Sub Form_Load()
On Error Resume Next
    Call clearreport
    txt1 = Format(Date, "mm/dd/yyyy")
    txt2 = Format(Date, "mm/dd/yyyy")
'=====Vendosja e Emrave te perdoruesve ne Combo Box==============
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbuser
ac.Open strConek
With ar
criteria = "Select *From systemuser"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.MoveFirst
.Filter = "(Pozicioni ='" & lblniveli.Caption & "')"
Do While Not .EOF
cboPunetoret.AddItem !emri
cboPunetoret.Text = ""
.MoveNext
Loop
.Close
End With
'===============================================================
'LoadSubCat
End Sub
Private Sub txt2_GotFocus()
    SendKeys "{home}+{end}"
End Sub

