VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "richtx32.ocx"
Begin VB.Form frmReports 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Report preview"
   ClientHeight    =   8145
   ClientLeft      =   45
   ClientTop       =   2145
   ClientWidth     =   11940
   Icon            =   "frmReports.frx":0000
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8145
   ScaleMode       =   0  'User
   ScaleWidth      =   11934.67
   WindowState     =   2  'Maximized
   Begin ComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   870
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   11940
      _ExtentX        =   21061
      _ExtentY        =   1535
      ButtonWidth     =   2090
      ButtonHeight    =   1376
      Appearance      =   1
      ImageList       =   "ImageList1"
      _Version        =   327682
      BeginProperty Buttons {0713E452-850A-101B-AFC0-4210102A8DA7} 
         NumButtons      =   1
         BeginProperty Button1 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Printo Raportin"
            Key             =   ""
            Object.Tag             =   ""
            ImageIndex      =   1
         EndProperty
      EndProperty
   End
   Begin RichTextLib.RichTextBox rtfReport 
      Height          =   6135
      Left            =   0
      TabIndex        =   0
      Top             =   840
      Width           =   11895
      _ExtentX        =   20981
      _ExtentY        =   10821
      _Version        =   393217
      ReadOnly        =   -1  'True
      ScrollBars      =   2
      TextRTF         =   $"frmReports.frx":038A
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
   Begin MSComDlg.CommonDialog CD1 
      Left            =   2760
      Top             =   7320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      FontName        =   "tahoma"
   End
   Begin ComctlLib.ImageList ImageList1 
      Left            =   480
      Top             =   960
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   16711935
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   1
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmReports.frx":0413
            Key             =   ""
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "frmReports"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
rtfReport.Filename = App.Path & "\raporti.txt"
End Sub

Private Sub Form_Resize()
rtfReport.height = ScaleHeight - 865
rtfReport.Width = ScaleWidth
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As ComctlLib.Button)
Select Case Button.Index
Case 1:
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
End Select
End Sub
