VERSION 5.00
Object = "{F4375239-2DAA-489A-9DCE-662FC9185BD6}#1.99#0"; "BarcodeWiz.dll"
Begin VB.Form frmBar 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Barkodet"
   ClientHeight    =   5295
   ClientLeft      =   45
   ClientTop       =   2145
   ClientWidth     =   5505
   Icon            =   "frmItem.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5295
   ScaleMode       =   0  'User
   ScaleWidth      =   5502.544
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command1 
      Caption         =   "Printo barkod tiketen"
      Height          =   495
      Left            =   3000
      TabIndex        =   24
      Top             =   4680
      Width           =   2415
   End
   Begin SmartCASH.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   23
      Top             =   720
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   53
   End
   Begin SmartCASH.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   240
      TabIndex        =   18
      Top             =   4560
      Width           =   5175
      _ExtentX        =   9128
      _ExtentY        =   53
   End
   Begin VB.Frame Frame2 
      Caption         =   "Gjetja e Artikullit sipas barkodit"
      Height          =   1335
      Left            =   120
      TabIndex        =   10
      Top             =   960
      Width           =   5295
      Begin VB.TextBox Text1 
         Height          =   495
         Left            =   3720
         TabIndex        =   25
         Text            =   "Text1"
         Top             =   3360
         Width           =   1815
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
         Index           =   6
         Left            =   2040
         MaxLength       =   25
         TabIndex        =   5
         Text            =   "0"
         Top             =   2280
         Width           =   1575
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
         Index           =   4
         Left            =   2040
         Locked          =   -1  'True
         MaxLength       =   25
         TabIndex        =   7
         Text            =   "0.00"
         Top             =   3240
         Width           =   1575
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
         Left            =   2040
         Locked          =   -1  'True
         MaxLength       =   25
         TabIndex        =   6
         Text            =   "0.00"
         Top             =   2760
         Width           =   1575
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
         ForeColor       =   &H00404040&
         Height          =   405
         Index           =   5
         Left            =   2040
         MaxLength       =   25
         TabIndex        =   8
         Top             =   3720
         Width           =   1575
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
         ForeColor       =   &H00404040&
         Height          =   405
         Index           =   0
         Left            =   240
         MaxLength       =   25
         TabIndex        =   0
         Top             =   600
         Width           =   4935
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
         ForeColor       =   &H00404040&
         Height          =   375
         Index           =   1
         Left            =   2040
         Locked          =   -1  'True
         MaxLength       =   25
         TabIndex        =   1
         Top             =   2040
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
      Begin VB.ComboBox cbox 
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
         ForeColor       =   &H00404040&
         Height          =   405
         Index           =   0
         Left            =   2040
         TabIndex        =   3
         Top             =   1440
         Width           =   5535
      End
      Begin VB.ComboBox cbox 
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
         ForeColor       =   &H00404040&
         Height          =   405
         Index           =   1
         Left            =   2040
         TabIndex        =   4
         Top             =   1800
         Width           =   5535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Sasia aktuale:"
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
         Index           =   8
         Left            =   240
         TabIndex        =   22
         Top             =   2280
         Width           =   1455
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
         TabIndex        =   21
         Top             =   3240
         Width           =   1455
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Çmimi i blerjes:"
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
         Index           =   5
         Left            =   240
         TabIndex        =   20
         Top             =   2760
         Width           =   1455
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
         TabIndex        =   19
         Top             =   3720
         Width           =   1335
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Shkruani Barkodin:"
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
         Index           =   0
         Left            =   240
         TabIndex        =   17
         Top             =   360
         Width           =   1815
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
         TabIndex        =   16
         Top             =   2040
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
         TabIndex        =   15
         Top             =   5760
         Width           =   2175
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Furnizuesi:"
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
         Index           =   3
         Left            =   240
         TabIndex        =   14
         Top             =   2400
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Kategoria:"
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
         Index           =   4
         Left            =   240
         TabIndex        =   13
         Top             =   1800
         Width           =   2175
      End
      Begin VB.Label lblsup 
         Caption         =   "Label3"
         Height          =   255
         Left            =   4680
         TabIndex        =   12
         Top             =   1920
         Visible         =   0   'False
         Width           =   3015
      End
      Begin VB.Label lblcat 
         Caption         =   "lblcat"
         Height          =   255
         Left            =   4680
         TabIndex        =   11
         Top             =   2280
         Visible         =   0   'False
         Width           =   3015
      End
   End
   Begin BARCODEWIZLibCtl.BarCodeWiz bc1 
      Height          =   1890
      Left            =   120
      TabIndex        =   26
      Top             =   2400
      Width           =   2595
      m_scaleNumerator=   1
      m_scaleDenominator=   1
      _cx             =   4585
      _cy             =   3322
      AutoSize        =   -1  'True
      BackColor       =   16777215
      BackStyle       =   1
      Barcode         =   "354734373673"
      BarcodeHeight   =   1500
      BeginProperty BarcodeTextFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BarcodeTextPosition=   6
      BearerBars      =   0   'False
      Border          =   0
      BottomText      =   "Qmimi"
      BeginProperty BottomTextFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BottomTextAlignment=   1
      Enabled         =   -1  'True
      ForeColor       =   0
      NarrowBarWidth  =   35
      OptionalCheckChar=   0
      Orientation     =   0
      QuietZone       =   3
      ScaleMode       =   0
      StretchBarcodeText=   0   'False
      Symbology       =   5
      TopText         =   "Artikulli"
      TopTextAlignment=   2
      BeginProperty TopTextFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      WideToNarrowRatio=   0
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   120
      Picture         =   "frmItem.frx":08CA
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Shtypja e tiketave te barkodeve"
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
      Left            =   840
      TabIndex        =   9
      Top             =   240
      Width           =   3495
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
Attribute VB_Name = "frmBar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Target As Object
Dim LastSave As String 'To Store last Saved Directory
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Sub Command1_Click()
Printer.PaintPicture bc1.Picture, 0, 0
Printer.EndDoc
End Sub
Private Sub Command2_Click()
Clipboard.Clear
Clipboard.SetData bc1.Picture
End Sub

Private Sub Form_Load()
Call dbconek
With ar
.Open "Select *From supplier", strConek, adOpenStatic, adLockOptimistic
.MoveFirst
Do While Not .EOF
cbox(0).AddItem !supplierdesc
.MoveNext
Loop
.Close
End With
Call dbkat
With ar
.Open "Select *From category", strConek, adOpenStatic, adLockOptimistic
.MoveFirst
Do While Not .EOF
cbox(1).AddItem !categorydesc
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
                    lblsup.Caption = !supplierid
                    lblcat.Caption = !categoryid
                    txt(3) = Format(CCur(!unitcost), "###,##0.00")
                    txt(4) = Format(CCur(!unitprice), "###,##0.00")
                    txt(6) = Format(CCur(!stock), "###000")
                    'Text1.Text = txt(4) / 100 * txt(5) + 1
                    Text1 = Format(CCur(!unitprice / 100 * !tvsh + !unitprice), "###,###,##0.00")
                    '======================
bc1.TopText = txt(1)
bc1.Barcode = txt(0)
bc1.BottomText = "Çmimi:  " & Text1.Text & " €"
'==============
                    Else
                    txt(0).SetFocus
                    Exit Sub
                    End If
                .Close
            End With
            
            Call dbconek
            ar.Open "Select *From supplier Where supplierid='" & lblsup & "'", strConek, adOpenStatic, adLockOptimistic
                cbox(0) = ar!supplierdesc
            ar.Close
            
            Call dbconek
            ar.Open "Select *From category Where categoryid='" & lblcat & "'", strConek, adOpenStatic, adLockOptimistic
cbox(1) = ar!categorydesc
            ar.Close
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

End If
End Select
End Sub
