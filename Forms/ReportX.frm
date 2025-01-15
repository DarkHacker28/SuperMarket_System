VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form ReportSalesx 
   BackColor       =   &H00ECF4F4&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Raporti i Shitjes"
   ClientHeight    =   3510
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7365
   Icon            =   "ReportX.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3510
   ScaleWidth      =   7365
   StartUpPosition =   2  'CenterScreen
   Begin SmartCASH.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   13
      Top             =   2760
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   53
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Dalja"
      Height          =   495
      Left            =   5640
      TabIndex        =   7
      Top             =   2880
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Shiko"
      Height          =   495
      Left            =   3960
      TabIndex        =   6
      Top             =   2880
      Width           =   1575
   End
   Begin MSMask.MaskEdBox txt2 
      Height          =   375
      Left            =   5280
      TabIndex        =   1
      Top             =   1200
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
      Left            =   3120
      TabIndex        =   0
      Top             =   1200
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
   Begin VB.ComboBox cboxcategory 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   3120
      TabIndex        =   3
      Text            =   "< Zgjidheni Kategorinë >"
      Top             =   2160
      Width           =   4095
   End
   Begin VB.ComboBox cboxsupplier 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   3120
      TabIndex        =   2
      Text            =   "< Zgjidheni Furnizuesin >"
      Top             =   1680
      Width           =   4095
   End
   Begin VB.CheckBox chkcategory 
      BackColor       =   &H00ECF4F4&
      Caption         =   "Raporti sipas Kategorisë"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   2160
      Width           =   2655
   End
   Begin VB.CheckBox chksupplier 
      BackColor       =   &H00ECF4F4&
      Caption         =   "Raporti sipas Furnizuesit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   1680
      Width           =   2655
   End
   Begin MSComctlLib.ImageList itb32x32 
      Left            =   1680
      Top             =   5280
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
            Picture         =   "ReportX.frx":08CA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":225C
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":3BEE
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":5580
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":6F12
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":88A4
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":A236
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":BBC8
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":D55A
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":EEEE
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":FBCA
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":104AA
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":11186
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":11E62
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":12B3E
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":1381A
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "ReportX.frx":144F6
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   120
      Picture         =   "ReportX.frx":14DD2
      Top             =   120
      Width           =   480
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
      TabIndex        =   12
      Top             =   240
      Width           =   2535
   End
   Begin VB.Label lblcat 
      Caption         =   "Label6"
      Height          =   255
      Left            =   2400
      TabIndex        =   11
      Top             =   5520
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label lblsup 
      Caption         =   "Label5"
      Height          =   255
      Left            =   2400
      TabIndex        =   10
      Top             =   5160
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Deri:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5280
      TabIndex        =   9
      Top             =   960
      Width           =   2895
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Prej:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3120
      TabIndex        =   8
      Top             =   960
      Width           =   2055
   End
   Begin VB.Image Image1 
      Height          =   885
      Left            =   0
      Picture         =   "ReportX.frx":1569C
      Stretch         =   -1  'True
      Top             =   0
      Width           =   14655
   End
End
Attribute VB_Name = "ReportSalesx"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cboxcategory_Click()
On Error Resume Next
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    Call dbconek
    ac.Open strConek
    With ar
        criteria = "Select *From category Where categorydesc='" & cboxcategory.Text & "'"
        .Open criteria, strConek, adOpenStatic, adLockOptimistic
            lblcat.Caption = !categoryid
        .Close
    End With
End Sub

Private Sub cboxsupplier_Click()
On Error Resume Next
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    
    Call dbconek
    ac.Open strConek
    
    
    With ar
        criteria = "Select *From supplier Where supplierdesc='" & cboxsupplier.Text & "'"
        .Open criteria, strConek, adOpenStatic, adLockOptimistic
            lblsup.Caption = !supplierid
        .Close
    End With
End Sub

Private Sub Command1_Click()
On Error Resume Next
Dim rtotal As Currency
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    
    Call dbconek
    ac.Open strConek
    
    
    With ar
        criteria = "Select *From saledetails2 Where  (date >= #" & SQLDate(txt1.Text) & "#) And (Date <= #" & SQLDate(txt2.Text) & "#)"
        .Open criteria, strConek, adOpenStatic, adLockOptimistic
            If .RecordCount > 1 Then
                If chksupplier.Value = 0 And chkcategory.Value = 0 Then
                    Open App.Path & "\raporti.txt" For Append As #1
                        Print #1, "Raporti i Shitjes sipas Datës"
                        Print #1, "Prej: " & txt1.Text; " Deri: " & txt2.Text
                        Print #1, "Furnizuesi: Të gjithë"
                        Print #1, "Kategoria: Të gjithë"
                        Print #1,
                        Print #1,
                        Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Përshkrimi" & Space(50 - Len("Përshkrimi")) & "Çmimi" & Space(15 - Len("Çmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "TOTAL"
                        Print #1,
                        .MoveFirst
                        Do While Not .EOF
                            rtotal = rtotal + CCur(!total)
                            Print #1, !upc & Space(15 - Len(!upc)) & !longdesc & Space(50 - Len(!longdesc)) & !unitprice & Space(15 - Len(!unitprice)) & !quantity & Space(10 - Len(!quantity)) & !total
                            .MoveNext
                        Loop
                        Print #1, Space(98 - Len("Shitja Totale: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("Shitja Totale: " & Format(CCur(rtotal), "###,###,##0.00"))
                    Close #1
                ElseIf chksupplier.Value = 1 And chkcategory = 0 Then
                        'If !supplierid = lblsup.Caption Then
                            Open App.Path & "\raporti.txt" For Append As #1
                                Print #1, "Shitja Sipas Furnizuesit"
                                Print #1, "Prej: " & txt1.Text; " Deri: " & txt2.Text
                                Print #1, "Furnizuesi: " & cboxsupplier.Text
                                Print #1, "Kategoria: Të gjitha"
                                Print #1,
                                Print #1,
                                Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Përshkrimi" & Space(50 - Len("Përshkrimi")) & "Çmimi" & Space(15 - Len("Çmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "TOTAL"
                                Print #1,
                                .MoveFirst
                                Do While Not .EOF
                                    If !supplierid = lblsup.Caption Then
                                        rtotal = rtotal + CCur(!total)
                                        Print #1, !upc & Space(15 - Len(!upc)) & !longdesc & Space(50 - Len(!longdesc)) & !unitprice & Space(15 - Len(!unitprice)) & !quantity & Space(10 - Len(!quantity)) & !total
                                        .MoveNext
                                    Else
                                        .MoveNext
                                    End If
                                Loop
                                Print #1, Space(98 - Len("Shitja Totale: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("Shitja Totale: " & Format(CCur(rtotal), "###,###,##0.00"))
                            Close #1
                        'Else
                        '    MsgBox "No sales for that supplier in the given date", vbCritical, "Error"
                        '    cboxsupplier.SetFocus
                        '    Exit Sub
                        'End If
                ElseIf chksupplier.Value = 0 And chkcategory = 1 Then
                        'If !categoryid = lblcat.Caption Then
                            Open App.Path & "\raporti.txt" For Append As #1
                                Print #1, "Shitja Sipas Kategorisë"
                                Print #1, "Prej: " & txt1.Text; " Deri: " & txt2.Text
                                Print #1, "Furnizuesi: Të gjithë"
                                Print #1, "Kategoria: " & cboxcategory.Text
                                Print #1,
                                Print #1,
                                Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Përshkrimi" & Space(50 - Len("Përshkrimi")) & "Çmimi" & Space(15 - Len("Çmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "TOTAL"
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
                                Print #1, Space(98 - Len("Shitja Totale: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("Shitja Totale: " & Format(CCur(rtotal), "###,###,##0.00"))
                            Close #1
                        'Else
                        '    MsgBox "No sales for that category in the given date", vbCritical, "Error"
                        '    cboxsupplier.SetFocus
                        '    Exit Sub
                        'End If
                ElseIf chksupplier.Value = 1 And chkcategory = 1 Then
                        'If !supplierid = lblsup And !categoryid = lblcat Then
                            Open App.Path & "\raporti.txt" For Append As #1
                                Print #1, "Shitja sipas datës, furnizuesit dhe kategorisë"
                                Print #1, "Prej: " & txt1.Text; " Deri: " & txt2.Text
                                Print #1, "Furnizuesi: " & cboxsupplier.Text
                                Print #1, "Kategoria: " & cboxcategory.Text
                                Print #1,
                                Print #1,
                                Print #1, "Barkodi" & Space(15 - Len("Barkodi")) & "Përshkrimi" & Space(50 - Len("Përshkrimi")) & "Çmimi" & Space(15 - Len("Çmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "TOTAL"
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
                                Print #1, Space(98 - Len("Shitja Totale: " & Format(CCur(rtotal), "###,###,##0.00"))) & ("Shitja Totale: " & Format(CCur(rtotal), "###,###,##0.00"))
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
                MsgBox "Nuk ka pasur shitje gjatë datës që ju keni zgjedhur.", vbCritical, "Gabim!"
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

Private Sub Form_Load()
On Error Resume Next
    Call clearreport
    txt1 = Format(Date, "mm/dd/yyyy")
    txt2 = Format(Date, "mm/dd/yyyy")
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    
    Call dbconek
    ac.Open strConek
    
    With ar
        criteria = "Select *From supplier"
        .Open criteria, strConek, adOpenStatic, adLockOptimistic
            .MoveFirst
            Do While Not .EOF
                cboxsupplier.AddItem !supplierdesc
                .MoveNext
            Loop
        .Close
    End With
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    
    Call dbconek
    ac.Open strConek
    
    With ar
        criteria = "Select *From category"
        .Open criteria, strConek, adOpenStatic, adLockOptimistic
            .MoveFirst
            Do While Not .EOF
                cboxcategory.AddItem !categorydesc
                .MoveNext
            Loop
        .Close
    End With
End Sub

Private Sub txt2_GotFocus()
    SendKeys "{home}+{end}"
End Sub
