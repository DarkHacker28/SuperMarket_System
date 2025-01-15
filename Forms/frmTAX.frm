VERSION 5.00
Begin VB.Form frmTAX 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Social Security Table"
   ClientHeight    =   3240
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9420
   Icon            =   "frmTAX.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3240
   ScaleWidth      =   9420
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdsave 
      Caption         =   "&Save"
      Enabled         =   0   'False
      Height          =   375
      Left            =   6600
      TabIndex        =   14
      Top             =   2640
      Width           =   1215
   End
   Begin VB.CommandButton cmdexit 
      Caption         =   "&Exit"
      Height          =   375
      Left            =   7920
      TabIndex        =   13
      Top             =   2640
      Width           =   1215
   End
   Begin VB.CommandButton cmdedit 
      Caption         =   "&Edit"
      Height          =   375
      Left            =   5280
      TabIndex        =   12
      Top             =   2640
      Width           =   1215
   End
   Begin VB.CommandButton cmdnew 
      Caption         =   "&New"
      Height          =   375
      Left            =   3960
      TabIndex        =   11
      Top             =   2640
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Cancel"
      Enabled         =   0   'False
      Height          =   375
      Left            =   2640
      TabIndex        =   10
      Top             =   2640
      Width           =   1215
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   1
      Left            =   2160
      MaxLength       =   10
      TabIndex        =   1
      Text            =   "0.00"
      Top             =   2040
      Width           =   2415
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   0
      Left            =   2160
      Locked          =   -1  'True
      MaxLength       =   10
      TabIndex        =   0
      Top             =   1680
      Width           =   2415
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   2
      Left            =   6720
      MaxLength       =   10
      TabIndex        =   2
      Text            =   "0.00"
      Top             =   1680
      Width           =   2415
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   3
      Left            =   6720
      MaxLength       =   10
      TabIndex        =   3
      Text            =   "0.00"
      Top             =   2040
      Width           =   2415
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   9480
      Y1              =   2520
      Y2              =   2520
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "TAX Brackets and Monthly Deduction"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   5
      Left            =   240
      TabIndex        =   9
      Top             =   1320
      Width           =   4335
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Salary Range"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   6
      Left            =   4800
      TabIndex        =   8
      Top             =   1320
      Width           =   4335
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "To:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Index           =   3
      Left            =   4800
      TabIndex        =   7
      Top             =   2040
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "From:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Index           =   2
      Left            =   4800
      TabIndex        =   6
      Top             =   1680
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Monthly Deduction:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Index           =   1
      Left            =   240
      TabIndex        =   5
      Top             =   2040
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "SSS Bracket:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Index           =   8
      Left            =   240
      TabIndex        =   4
      Top             =   1680
      Width           =   1815
   End
   Begin VB.Image Image1 
      Height          =   1050
      Left            =   0
      Picture         =   "frmTAX.frx":000C
      Stretch         =   -1  'True
      Top             =   0
      Width           =   9975
   End
End
Attribute VB_Name = "frmTAX"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdedit_Click()
    cmdnew.Enabled = False
        cmdedit.Enabled = False
        cmdsave.Enabled = True
        cmdsave.Caption = "&Update"
        Command1.Enabled = True
        txt(0).Locked = False
        txt(0).SetFocus
End Sub

Private Sub cmdexit_Click()
    Unload Me
End Sub

Private Sub cmdnew_Click()
On Error Resume Next
    Call dbconek
        ar.Open "Select *From taxtable", strConek, adOpenStatic, adLockOptimistic
            ar.MoveLast
            
            txt(0) = ar!salarybracket + 1
        ar.Close
        
        cmdnew.Enabled = False
        cmdedit.Enabled = False
        cmdsave.Enabled = True
        Command1.Enabled = True
        txt(1).SetFocus
        
End Sub

Private Sub cmdsave_Click()
On Error Resume Next
    Select Case cmdsave.Caption
    Case "&Save"
        Call dbconek
        For i = 0 To 3
            If txt(i) = "" Then
                MsgBox "All Fields Are Required", vbCritical, "Error"
                txt(i).SetFocus
                Exit Sub
            End If
        Next
        ar.Open "Select *From taxtable", strConek, adOpenStatic, adLockOptimistic
            ar.AddNew
                ar!salarybracket = txt(0)
                ar!deduction = Format(CCur(txt(1)), "###,###,##0.00")
                ar!salaryfrom = Format(CCur(txt(2)), "###,###,##0.00")
                ar!salaryto = Format(CCur(txt(3)), "###,###,##0.00")
            ar.Update
            
            MsgBox "Social Security Information Saved...", vbInformation
            Call Command1_Click
        ar.Close
    Case "&Update"
        Call dbconek
        For i = 0 To 3
            If txt(i) = "" Then
                MsgBox "All Fields Are Required", vbCritical, "Error"
                txt(i).SetFocus
                Exit Sub
            End If
        Next
        ar.Open "Select *From taxtable Where salarybracket='" & txt(0) & "'", strConek, adOpenStatic, adLockOptimistic
                'ar!salarybracket = txt(0)
                ar!deduction = Format(CCur(txt(1)), "###,###,##0.00")
                ar!salaryfrom = Format(CCur(txt(2)), "###,###,##0.00")
                ar!salaryto = Format(CCur(txt(3)), "###,###,##0.00")
            ar.Update
            
            MsgBox "Social Security Information Saved...", vbInformation
            Call Command1_Click
        ar.Close
    End Select
End Sub

Private Sub Command1_Click()
    Unload Me
    LoadForm frmTAX
End Sub

Private Sub Form_Load()
    Me.Icon = frmNewEmployee.SmallImages.ListImages(4).Picture
End Sub

Private Sub txt_GotFocus(Index As Integer)
    SendKeys "{end}+{home}"
End Sub



Private Sub txt_KeyPress(Index As Integer, KeyAscii As Integer)
'On Error Resume Next
Select Case Index
    Case 0
        If KeyAscii = 13 Then
            Call dbconek
            ar.Open "Select *From taxtable Where salarybracket='" & txt(0).Text & "'", strConek, adOpenStatic, adLockOptimistic
                If ar.RecordCount >= 1 Then
                    txt(1) = Format(CCur(ar!deduction), "###,###,##0.00")
                    txt(2) = Format(CCur(ar!salaryfrom), "###,###,##0.00")
                    txt(3) = Format(CCur(ar!salaryto), "###,###,##0.00")
                Else
                    txt(0).SetFocus
                End If
        ar.Close
        
        End If
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
    Case 1
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
    Case 2
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
    Case 3
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
    
End Select
End Sub
