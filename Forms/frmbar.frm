VERSION 5.00
Begin VB.Form frmBar 
   BackColor       =   &H00ECF4F4&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Shtypja e Barkodit"
   ClientHeight    =   5070
   ClientLeft      =   45
   ClientTop       =   2145
   ClientWidth     =   4965
   Icon            =   "frmbar.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   338
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   331
   StartUpPosition =   1  'CenterOwner
   Begin SmartCASH.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   16
      Top             =   4080
      Width           =   4695
      _ExtentX        =   8281
      _ExtentY        =   53
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Printo Tiketën"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2520
      TabIndex        =   15
      Top             =   4200
      Width           =   2295
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00ECF4F4&
      Caption         =   "Kerkimi sipas barkodit"
      Height          =   975
      Left            =   120
      TabIndex        =   5
      Top             =   960
      Width           =   4695
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2040
         TabIndex        =   14
         Top             =   2520
         Width           =   2535
      End
      Begin VB.TextBox txt 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   405
         Index           =   5
         Left            =   2040
         MaxLength       =   25
         TabIndex        =   12
         Top             =   1920
         Width           =   1575
      End
      Begin VB.TextBox txt 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Index           =   4
         Left            =   2040
         Locked          =   -1  'True
         MaxLength       =   25
         TabIndex        =   3
         Text            =   "0.00"
         Top             =   1440
         Width           =   1575
      End
      Begin VB.TextBox txt 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   375
         Index           =   0
         Left            =   1080
         MaxLength       =   25
         TabIndex        =   0
         Top             =   360
         Width           =   3375
      End
      Begin VB.TextBox txt 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   375
         Index           =   1
         Left            =   2040
         Locked          =   -1  'True
         MaxLength       =   25
         TabIndex        =   1
         Top             =   1080
         Width           =   5535
      End
      Begin VB.TextBox txt 
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   375
         Index           =   2
         Left            =   2040
         Locked          =   -1  'True
         MaxLength       =   25
         TabIndex        =   2
         Text            =   "o"
         Top             =   5760
         Width           =   5535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "TVSH  (%) :"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   7
         Left            =   240
         TabIndex        =   13
         Top             =   1920
         Width           =   1335
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Çmimi i shitjes:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   6
         Left            =   240
         TabIndex        =   11
         Top             =   1440
         Width           =   1455
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Barkodi:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   10
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Përshkrimi:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   1
         Left            =   240
         TabIndex        =   9
         Top             =   1080
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Përshkrimi i shkurt:"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   2
         Left            =   240
         TabIndex        =   8
         Top             =   5760
         Width           =   2175
      End
      Begin VB.Label lblsup 
         Caption         =   "Label3"
         Height          =   255
         Left            =   4680
         TabIndex        =   7
         Top             =   2040
         Visible         =   0   'False
         Width           =   3015
      End
      Begin VB.Label lblcat 
         Caption         =   "lblcat"
         Height          =   255
         Left            =   4680
         TabIndex        =   6
         Top             =   2280
         Visible         =   0   'False
         Width           =   3015
      End
   End
   Begin VB.Image Image2 
      Height          =   735
      Left            =   120
      Picture         =   "frmbar.frx":08CA
      Top             =   0
      Width           =   660
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Shtypja e Barkodeve"
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
      Index           =   3
      Left            =   960
      TabIndex        =   4
      Top             =   240
      Width           =   2535
   End
   Begin VB.Image Image1 
      Height          =   885
      Left            =   0
      Picture         =   "frmbar.frx":2252
      Stretch         =   -1  'True
      Top             =   0
      Width           =   14655
   End
End
Attribute VB_Name = "frmBar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cbox_Click(Index As Integer)
End Sub

Private Sub cbox_KeyPress(Index As Integer, KeyAscii As Integer)
    KeyAscii = 0
End Sub

Private Sub cboxdiscount_KeyPress(KeyAscii As Integer)
    KeyAscii = 0
End Sub
Private Sub cboxinterest_KeyPress(KeyAscii As Integer)
    KeyAscii = 0
End Sub

Private Sub cmdedit_Click()
    Call txt_unlock
    txt(0).SetFocus
    cmdnew.Enabled = False
    cmdsave.Caption = "Fresko"
    cmdsave.Enabled = True
    Command1.Enabled = True
    cmdedit.Enabled = False
    cmdlookup.Enabled = True
End Sub

Private Sub cmdexit_Click()
    Unload Me
End Sub

Private Sub cmdlookup_Click()
    txt(0).SetFocus
    itemflag = 1
    LoadForm ItemSearch
End Sub

Private Sub cmdnew_Click()
Call txt_unlock
txt(0).SetFocus
txt(0).Text = ""
txt(1).Text = ""

txt(3).Text = ""
txt(4).Text = ""
txt(5).Text = ""
txt(6).Text = ""
cmdnew.Enabled = True
cmdsave.Enabled = True
Command1.Enabled = True
cmdedit.Enabled = False
End Sub

Private Sub cmdsave_Click()
Select Case cmdsave.Caption
Case "Ruaje"
Call artdb
With ar
criteria = "Select *From itemmaster Where upc='" & txt(0) & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount = 1 Then
MsgBox "Ky barkod ekziston. Provoni një barkod tjetër", vbOKOnly + vbInformation, "Barkodi ekziston"
txt(0).SetFocus
txt(0).Text = ""
txt(1).Text = ""

txt(3).Text = ""
txt(4).Text = ""
txt(5).Text = ""
txt(6).Text = ""
End If
End With

        For i = 0 To 2
            If txt(i) = "" Then
                MsgBox "Mbushni të gjitha fushat e tekstit", vbCritical, "Gabim!"
                txt(i).SetFocus
                Exit Sub
            End If
        Next
        If Val(txt(3)) = 0 Or Val(txt(4)) = 0 Then
            MsgBox "Ju lutem shkruani Çmimin.", vbCritical, "Gabim!"
            txt(3).SetFocus
            Exit Sub
        End If
If Val(txt(6)) = 0 Then
MsgBox "Ju lutem shkruani Sasinë.", vbCritical, "Gabim!"
txt(6).SetFocus
Exit Sub
        End If
        Call artdb
        With ar
            .Open "Select *From itemmaster", strConek, adOpenStatic, adLockOptimistic
                .AddNew
                    !upc = txt(0)
                    !longdesc = txt(1)
                    !supplierid = lblsup
                    !categoryid = lblcat
                    !unitcost = txt(3)
                    !unitprice = txt(4)
                    !stock = txt(6)
                    !tvsh = txt(5)
                .Update
            .Close
        End With
    Case "Fresko"

        For i = 0 To 2
            If txt(i) = "" Then
                MsgBox "Mbushni të gjitha fushat e tekstit.", vbCritical, "Gabim!"
                txt(i).SetFocus
                Exit Sub
            End If
        Next
        If Val(txt(3)) = 0 Or Val(txt(4)) = 0 Then
            MsgBox "Ju lutem shkruani Çmimin.", vbCritical, "Gabim!"
            txt(3).SetFocus
            Exit Sub
        End If
        Call artdb
        With ar
            .Open "Select *From itemmaster Where upc='" & txt(0) & "'", strConek, adOpenStatic, adLockOptimistic
                If .RecordCount = 0 Then
                    MsgBox "Barkodi nuk mund të ndërrohet. Ruajeni këtë artikull si të ri", vbCritical, "Gabim!"
                End If
                    !longdesc = txt(1)

                    !supplierid = lblsup
                    !categoryid = lblcat
                    !unitcost = txt(3)
                    !unitprice = txt(4)
                    !tvsh = txt(5)
                .Update
            .Close
MsgBox "Shënimi u ruajt me sukses", vbOKOnly + vbInformation, "Ruajtja!"
Unload Me
LoadForm frmMMSitem
        End With
End Select
End Sub

Private Sub Command1_Click()
Printer.PaintPicture BarCodeWiz1.Picture, 0, 0
Printer.EndDoc
End Sub

Private Sub Form_Load()
    Call dbconek
    With ar
        .Open "Select *From supplier", strConek, adOpenStatic, adLockOptimistic
            .MoveFirst
            Do While Not .EOF

                .MoveNext
            Loop
        .Close
    End With
    Call dbkat
    With ar
        .Open "Select *From category", strConek, adOpenStatic, adLockOptimistic
            .MoveFirst
            Do While Not .EOF
                
                .MoveNext
            Loop
        .Close
    End With
End Sub


Private Sub txt_GotFocus(Index As Integer)
SendKeys "{end}+{home}"
End Sub
Private Sub txt_unlock()
Dim i As Integer

    For i = 0 To 4
        txt(i).Locked = False
    Next
End Sub

Private Sub clear_txt()
Dim i As Integer

    For i = 0 To 4
        txt(i) = ""
    Next
End Sub

Private Sub txt_KeyPress(Index As Integer, KeyAscii As Integer)
On Error Resume Next
Select Case Index
Case 0
If KeyAscii = 13 Then
Call artdb
With ar
.Open "Select *From itemmaster Where upc='" & txt(0) & "'", strConek, adOpenStatic, adLockOptimistic
If .RecordCount >= 1 Then
txt(1) = !longdesc
txt(5) = !tvsh
txt(4) = Format(CCur(!unitprice), "###,##0.00")
Text1.Text = txt(4) / 100 * txt(5) + txt(4)
BarCodeWiz1.TopText = txt(1)
BarCodeWiz1.BottomText = "Çmimi: " & Text1
BarCodeWiz1.Barcode = txt(0)

Else
txt(0).SetFocus
Exit Sub
End If
.Close
End With
        End If
    Case 1
        KeyAscii = Asc(UCase(Chr(KeyAscii)))
    Case 2
        KeyAscii = Asc(UCase(Chr(KeyAscii)))
    Case 3
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
    Case 4
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
Case 5
If KeyAscii = 13 Then
cmdsave_Click
cmdnew_Click
End If
End Select
End Sub
