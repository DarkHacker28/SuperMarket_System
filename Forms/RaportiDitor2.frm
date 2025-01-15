VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form RaportiDitor2 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Raporti Ditor"
   ClientHeight    =   2520
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4230
   Icon            =   "RaportiDitor2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2520
   ScaleWidth      =   4230
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "Command3"
      Height          =   735
      Left            =   6360
      TabIndex        =   16
      Top             =   11280
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Dalja"
      Height          =   450
      Left            =   2400
      TabIndex        =   15
      Top             =   1920
      Width           =   1695
   End
   Begin VB.PictureBox Picture1 
      Height          =   495
      Left            =   7080
      ScaleHeight     =   435
      ScaleWidth      =   1035
      TabIndex        =   1
      Top             =   240
      Visible         =   0   'False
      Width           =   1095
      Begin VB.CommandButton Command4 
         Caption         =   "Command3"
         Height          =   735
         Left            =   240
         TabIndex        =   6
         Top             =   960
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
         TabIndex        =   5
         Top             =   3360
         Value           =   1  'Checked
         Width           =   4335
      End
      Begin VB.ComboBox cboniveli 
         Height          =   315
         Left            =   4080
         TabIndex        =   4
         Text            =   "Shites"
         Top             =   2400
         Width           =   1815
      End
      Begin VB.CheckBox chkPunetori 
         Caption         =   "Raporti sipas Punetorit"
         Enabled         =   0   'False
         Height          =   255
         Left            =   4560
         TabIndex        =   3
         Top             =   3000
         Width           =   2655
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
         Top             =   2880
         Width           =   2895
      End
      Begin MSMask.MaskEdBox txt2 
         Height          =   375
         Left            =   2040
         TabIndex        =   7
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
         TabIndex        =   8
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
               Picture         =   "RaportiDitor2.frx":0C62
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":25F4
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":3F86
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":5918
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":72AA
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":8C3C
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":A5CE
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":BF60
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":D8F2
               Key             =   ""
            EndProperty
            BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":F286
               Key             =   ""
            EndProperty
            BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":FF62
               Key             =   ""
            EndProperty
            BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":10842
               Key             =   ""
            EndProperty
            BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":1151E
               Key             =   ""
            EndProperty
            BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":121FA
               Key             =   ""
            EndProperty
            BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":12ED6
               Key             =   ""
            EndProperty
            BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":13BB2
               Key             =   ""
            EndProperty
            BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RaportiDitor2.frx":1488E
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin VB.Label lblniveli 
         Caption         =   "Shites"
         Height          =   135
         Left            =   5040
         TabIndex        =   14
         Top             =   1680
         Width           =   1335
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
         TabIndex        =   13
         Top             =   2880
         Width           =   975
      End
      Begin VB.Label lblcat 
         Caption         =   "Label6"
         Height          =   255
         Left            =   2880
         TabIndex        =   12
         Top             =   1200
         Width           =   1935
      End
      Begin VB.Label lblsup 
         Caption         =   "6"
         Height          =   255
         Left            =   5040
         TabIndex        =   11
         Top             =   0
         Width           =   1815
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
         TabIndex        =   10
         Top             =   1800
         Width           =   975
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
         TabIndex        =   9
         Top             =   1800
         Width           =   975
      End
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Shiko"
      Height          =   450
      Left            =   120
      TabIndex        =   0
      Top             =   1920
      Width           =   1695
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   17
      Top             =   960
      Width           =   9735
      _ExtentX        =   17171
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   18
      Top             =   1800
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   53
   End
   Begin MSComDlg.CommonDialog cd1 
      Left            =   8640
      Top             =   240
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
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
            Picture         =   "RaportiDitor2.frx":1516A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label2 
      Caption         =   "Label6"
      Height          =   255
      Left            =   8280
      TabIndex        =   23
      Top             =   11280
      Width           =   1935
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "RaportiDitor2.frx":154BC
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Raporti i Shitjes"
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
      TabIndex        =   22
      Top             =   240
      Width           =   3375
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Shkruani datën për raportim"
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
      TabIndex        =   21
      Top             =   600
      Width           =   4935
   End
   Begin VB.Label Label6 
      Caption         =   "Raporti për daten:"
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
      TabIndex        =   20
      Top             =   1320
      Width           =   1695
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
      TabIndex        =   19
      Top             =   1320
      Width           =   2415
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
Attribute VB_Name = "RaportiDitor2"
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
Call dbshitja
ac.Open strConek
With ar
criteria = "Select *From saledetails Where  (date >= #" & SQLDate(txt1.Text) & "#) And (Date <= #" & SQLDate(txt2.Text) & "#)"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount > 1 Then
If chkPunetori.Value = 0 And Check1.Value = 1 Then
Open App.Path & "\Raporti.txt" For Append As #1
.MoveFirst
Do While Not .EOF
rtotal = rtotal + CCur(!total)
rtblerja = rtblerja + CCur(!blerja)
rprofiti = rtotal - rtblerja
lv.ListItems.Add , , !upc
lv.ListItems(lv.ListItems.Count).SubItems(1) = !longdesc
'Print #1, !upc & Space(15 - Len(!upc)) & !longdesc & Space(50 - Len(!longdesc)) & !unitprice & Space(15 - Len(!unitprice)) & !quantity & Space(10 - Len(!quantity)) & !total
.MoveNext
Loop
Close #1
ElseIf chkPunetori.Value = 1 Then
'If !supplierid = lblsup.Caption Then
Open App.Path & "\Raporti.txt" For Append As #1
                                .MoveFirst
                                Do While Not .EOF
                                    If !arka = cboPunetoret.Text Then
                                        rtotal = rtotal + CCur(!total)
lv.ListItems.Add , , !upc
lv.ListItems(lv.ListItems.Count).SubItems(1) = !longdesc
                                        .MoveNext
                                    Else
                                        .MoveNext
                                    End If
                                Loop
                                Print #1, Space(98 - Len("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))
                            Print #1,
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
On Error Resume Next
Dim rtotal As Currency
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblShitja2 Where  (data >= #" & SQLDate(txt1.Text) & "#) And (data <= #" & SQLDate(txt2.Text) & "#)"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount > 0 Then
If chkPunetori.Value = 0 And Check1.Value = 1 Then
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
Print #1, "--------------------------------------------------------------------------------"
Print #1,
Print #1, "Raporti i shitjes"
Print #1, "Data: " & txt1.Text
Print #1,
Print #1,
Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Pershkrimi" & Space(50 - Len("Pershkrimi")) & "Qmimi" & Space(15 - Len("Qmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "Total"
Print #1,
.MoveFirst
Do While Not .EOF
rtotal = rtotal + CCur(!total)
rtblerja = rtblerja + CCur(!blerja)
rprofiti = rtotal - rtblerja
Print #1, !barkodi & Space(15 - Len(!barkodi)) & !pershkrimi & Space(50 - Len(!pershkrimi)) & !qmimi & Space(15 - Len(!qmimi)) & !sasia & Space(10 - Len(!sasia)) & !total
.MoveNext
Loop
Print #1,
Print #1,
Print #1, "--------------------------------------------------------------------------------"
Print #1,
Print #1,
Print #1, "TOTAL : " & Format(CCur(rtotal), "###,###,##0.00")
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
                                    If !arka = cboPunetoret.Text Then
                                        rtotal = rtotal + CCur(!total)
                                        Print #1, !upc & Space(15 - Len(!upc)) & !longdesc & Space(50 - Len(!longdesc)) & !unitprice & Space(15 - Len(!unitprice)) & !quantity & Space(10 - Len(!quantity)) & !total
                                        .MoveNext
                                    Else
                                        .MoveNext
                                    End If
                                Loop
                                Print #1, Space(98 - Len("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("TOTAL: " & Format(CCur(rtotal), "###,###,##0.00"))
                            Print #1,
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

Private Sub Form_Load()
On Error Resume Next
Call clearreport
'=====Vendosja e Emrave te perdoruesve ne Combo Box==============
cboPunetoret.AddItem "01"
cboPunetoret.AddItem "02"
txt1.Text = Format(Now, "dd/mm/yyyy")
txt2.Text = Format(Now, "dd/mm/yyyy")
lbldata.Caption = Format(Now, "dd/mm/yyyy")
rtfReport.Filename = App.Path & "\raporti.txt"
End Sub
Private Sub txt2_GotFocus()
    SendKeys "{home}+{end}"
End Sub


