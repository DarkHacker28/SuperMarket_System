VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "Mscomctl.ocx"
Begin VB.Form frmHistoryReports 
   Caption         =   "Raportet"
   ClientHeight    =   8145
   ClientLeft      =   60
   ClientTop       =   2160
   ClientWidth     =   11940
   Icon            =   "frmHistoryReports.frx":0000
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   8145
   ScaleMode       =   0  'User
   ScaleWidth      =   11934.67
   WindowState     =   2  'Maximized
   Begin MSComDlg.CommonDialog CD1 
      Left            =   720
      Top             =   1320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.ImageList itb32x32 
      Left            =   2640
      Top             =   120
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
            Picture         =   "frmHistoryReports.frx":038A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":1D1C
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":36AE
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":5040
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":69D2
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":8364
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":9CF6
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":B688
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":D01A
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":E9AE
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":F68A
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":FF6A
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":10C46
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":11922
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":125FE
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":132DA
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmHistoryReports.frx":13FB6
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Height          =   600
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   14475
      _ExtentX        =   25532
      _ExtentY        =   1058
      ButtonWidth     =   3545
      ButtonHeight    =   1005
      Appearance      =   1
      Style           =   1
      TextAlignment   =   1
      ImageList       =   "itb32x32"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   1
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "F6 - Printo raportin"
            Key             =   "Print"
            ImageIndex      =   6
         EndProperty
      EndProperty
      BorderStyle     =   1
   End
End
Attribute VB_Name = "frmHistoryReports"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    If historyflag = 1 Then
        rtfReport.Filename = App.Path & "\pagesa.txt"
    ElseIf historyflag = 2 Then
        rtfReport.Filename = App.Path & "\pranimi.txt"
    ElseIf historyflag = 3 Then
        rtfReport.Filename = App.Path & "\blerja.txt"
    ElseIf historyflag = 4 Then
        rtfReport.Filename = App.Path & "\rikthimi.txt"
    ElseIf historyflag = 5 Then
        
        rtfReport.Filename = App.Path & "\Loan.txt"
    End If
    Me.Icon = Me.itb32x32.ListImages(14).Picture
End Sub

Private Sub Form_Resize()
    rtfReport.Height = ScaleHeight
    rtfReport.Width = ScaleWidth
    
    Toolbar1.Width = ScaleWidth + 10
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
On Error Resume Next
Select Case Button.Key
    Case "Print"
        On Error GoTo check_pr
            cd1.Flags = cdlPDDisablePrintToFile Or cdlPDNoSelection Or cdlPDReturnDC
    
            cd1.ShowPrinter
            For i = 1 To cd1.Copies
                rtfReport.SelPrint cd1.hDc
            Next i
    
        Exit Sub
        
        If historyflag = 1 Then
            Open App.Path & "\Payroll.txt" For Output As #1
                Print #1, ""
            Close #1
        ElseIf historyflag = 2 Then
            Open App.Path & "\pranimi.txt" For Output As #1
                Print #1, ""
            Close #1
        ElseIf historyflag = 3 Then
            Open App.Path & "\blerja.txt" For Output As #1
                Print #1, ""
            Close #1
        ElseIf historyflag = 4 Then
            Open App.Path & "\rikthimi.txt" For Output As #1
                Print #1, ""
            Close #1
        ElseIf historyflag = 5 Then
            Open App.Path & "\Loan.txt" For Output As #1
                Print #1, ""
            Close #1
        End If
        
        
check_pr:
    If err.Number = 32755 Then
          
    Else
        MsgBox "Gabim: " & err.Number & " " & err.Description
    End If
    
    'Case "Exit"
        'Open App.Path & "\Reports\raporti.txt" For Output As #1
        '    Print #1, ""
        'Close #1
    '    Call clearreport
    '    Unload Me
End Select
End Sub
