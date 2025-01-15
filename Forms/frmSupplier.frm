VERSION 5.00
Begin VB.Form frmMMSSupplier 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Suppliers"
   ClientHeight    =   4905
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6345
   Icon            =   "frmSupplier.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4905
   ScaleWidth      =   6345
   StartUpPosition =   2  'CenterScreen
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   19
      Top             =   720
      Width           =   6735
      _ExtentX        =   11880
      _ExtentY        =   53
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   430
      Left            =   4320
      TabIndex        =   18
      Top             =   4350
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   430
      Left            =   2160
      TabIndex        =   17
      Top             =   4350
      Width           =   2055
   End
   Begin VB.CommandButton cmdLookup 
      Caption         =   "Search"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   430
      Left            =   120
      TabIndex        =   16
      Top             =   4350
      Width           =   1935
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "Save"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   430
      Left            =   4320
      TabIndex        =   15
      Top             =   3840
      Width           =   1935
   End
   Begin VB.CommandButton cmdEdit 
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   430
      Left            =   2160
      TabIndex        =   14
      Top             =   3840
      Width           =   2055
   End
   Begin VB.CommandButton cmdNew 
      Caption         =   "Add"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   430
      Left            =   120
      TabIndex        =   13
      Top             =   3840
      Width           =   1935
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   12
      Top             =   3720
      Width           =   6135
      _ExtentX        =   10821
      _ExtentY        =   53
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Index           =   4
      Left            =   1920
      Locked          =   -1  'True
      MaxLength       =   15
      TabIndex        =   9
      Top             =   3120
      Width           =   4335
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Index           =   3
      Left            =   1920
      Locked          =   -1  'True
      MaxLength       =   60
      TabIndex        =   8
      Top             =   2640
      Width           =   4335
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Index           =   2
      Left            =   1920
      Locked          =   -1  'True
      MaxLength       =   50
      TabIndex        =   7
      Top             =   2160
      Width           =   4335
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Index           =   1
      Left            =   1920
      Locked          =   -1  'True
      MaxLength       =   50
      TabIndex        =   6
      Top             =   1680
      Width           =   4335
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Index           =   0
      Left            =   1920
      Locked          =   -1  'True
      MaxLength       =   7
      TabIndex        =   5
      Top             =   1200
      Width           =   2415
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Suppliers"
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
      Index           =   5
      Left            =   840
      TabIndex        =   11
      Top             =   240
      Width           =   2535
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   120
      Picture         =   "frmSupplier.frx":08CA
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000010&
      Caption         =   "Supplier informations"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   0
      TabIndex        =   10
      Top             =   840
      Width           =   6375
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Supplier ID:"
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
      TabIndex        =   4
      Top             =   1200
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Description:"
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
      Height          =   375
      Index           =   3
      Left            =   120
      TabIndex        =   3
      Top             =   1680
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Phone:"
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
      Index           =   7
      Left            =   120
      TabIndex        =   2
      Top             =   3120
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Address:"
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
      Height          =   495
      Index           =   8
      Left            =   120
      TabIndex        =   1
      Top             =   2640
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Contact Person:"
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
      Height          =   375
      Index           =   9
      Left            =   120
      TabIndex        =   0
      Top             =   2160
      Width           =   2415
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
Attribute VB_Name = "frmMMSSupplier"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdedit_Click()
    Call txt_unlock
    cmdLookup.Enabled = True
    cmdSave.Enabled = True
    cmdSave.Caption = "Fresko"
    cmdEdit.Enabled = False
    cmdNew.Enabled = False
    Command2.Enabled = True
    txt(0).SetFocus
End Sub

Private Sub cmdlookup_Click()
    supplierflag = 1
    txt(0).SetFocus
    LoadForm SupplierSearch
End Sub

Private Sub cmdnew_Click()
    Call new_supplierid
    Call txt_unlock
    txt(0).Locked = True
    cmdNew.Enabled = False
    cmdEdit.Enabled = False
    cmdSave.Enabled = True
    Command2.Enabled = True
    txt(1).SetFocus
End Sub

Private Sub cmdsave_Click()
Select Case cmdSave.Caption
Case "Ruaje"
Call dbconek
With ar
.Open "Select *From tblFurnizuesit", strConek, adOpenStatic, adLockOptimistic
.AddNew
!fur_id = txt(0)
!furnizuesi = txt(1)
!personi = txt(2)
!adresa = txt(3)
!numri = txt(4)
.Update
MsgBox "Furnizuesi u ruajt me sukses.", vbInformation, "Ruajtja!"
Call Command2_Click
.Close
End With
Case "Fresko"
Call dbconek
With ar
criteria = "Select *From tblFurnizuesit Where fur_id='" & txt(0) & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!fur_id = txt(0)
!furnizuesi = txt(1)
!personi = txt(2)
!adresa = txt(3)
!numri = txt(4)
.Update
MsgBox "Furnizuesi u ruajt me sukses.", vbInformation, "Ruajtja!"
Call Command2_Click
.Close
End With
End Select
End Sub

Private Sub Command1_Click()
    Unload Me
End Sub

Private Sub Command2_Click()
    Unload Me
    LoadForm frmMMSSupplier
End Sub

Private Sub new_supplierid()
On Error Resume Next
Call dbconek
Dim lastid As String
With ar
criteria = "Select *From tblFurnizuesit"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.MoveLast
lastid = Mid(!fur_id, 5, Len(!fur_id))
lastid = Val(lastid) + 1
If Len(lastid) = 1 Then
                txt(0) = "FUR-" & "00" & lastid
            ElseIf Len(lastid) = 2 Then
                txt(0) = "FUR-" & "0" & lastid
            ElseIf Len(lastid) = 3 Then
                txt(0) = "FUR-" & lastid
            End If
            
            .Close
        End With
End Sub

Private Sub txt_unlock()
Dim I As Integer

    For I = 0 To 4
        txt(I).Locked = False
    Next
End Sub

Private Sub clear_txt()
Dim I As Integer

    For I = 0 To 4
        txt(I) = ""
    Next
End Sub

Private Sub txt_GotFocus(Index As Integer)
SendKeys "{end}+{home}"
End Sub

Private Sub txt_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
Case 0
If KeyAscii = 13 Then
Call dbconek
With ar
criteria = "Select *From tblFurnizuesit Where fur_id='" & txt(0) & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount = 1 Then
txt(1) = !furnizuesi
txt(2) = !personi
txt(3) = !adresa
txt(4) = !numri
Else
MsgBox "Furnizuesi nuk ekziston.", vbInformation, "Gabim!"
                        Exit Sub
                    End If
                .Close
            End With
        End If
        KeyAscii = Asc(UCase(Chr(KeyAscii)))
    Case 1
        KeyAscii = Asc(UCase(Chr(KeyAscii)))
    Case 2
        KeyAscii = Asc(UCase(Chr(KeyAscii)))
    Case 3
        KeyAscii = Asc(UCase(Chr(KeyAscii)))
    Case 4
        KeyAscii = Asc(UCase(Chr(KeyAscii)))
End Select
End Sub
