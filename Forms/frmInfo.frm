VERSION 5.00
Begin VB.Form frmInfo 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Info!"
   ClientHeight    =   4605
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4470
   Icon            =   "frmInfo.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4605
   ScaleWidth      =   4470
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin SmartMarket.ctrlLiner ctrlLiner3 
      Height          =   30
      Left            =   120
      TabIndex        =   12
      Top             =   3960
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   53
   End
   Begin VB.TextBox txttotal 
      BackColor       =   &H00404040&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   3240
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Close"
      Height          =   375
      Left            =   3000
      TabIndex        =   9
      Top             =   4080
      Width           =   1335
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   8
      Top             =   2640
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   1
      Top             =   960
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   53
   End
   Begin VB.Label Label5 
      Caption         =   "Total of Products:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   11
      Top             =   2760
      Width           =   3015
   End
   Begin VB.Label lblkat 
      Alignment       =   2  'Center
      BackColor       =   &H0000FF00&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3075
      TabIndex        =   7
      Top             =   2100
      Width           =   615
   End
   Begin VB.Label Label2 
      Caption         =   "Number of Categories:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
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
      TabIndex        =   6
      Top             =   2160
      Width           =   2295
   End
   Begin VB.Shape Shape4 
      BorderColor     =   &H00C0C0C0&
      Height          =   375
      Left            =   3000
      Top             =   2040
      Width           =   735
   End
   Begin VB.Label lblfur 
      Alignment       =   2  'Center
      BackColor       =   &H0000FF00&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3075
      TabIndex        =   5
      Top             =   1620
      Width           =   615
   End
   Begin VB.Label Label3 
      Caption         =   "Number of Suppliers:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
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
      TabIndex        =   4
      Top             =   1680
      Width           =   2295
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00C0C0C0&
      Height          =   375
      Left            =   3000
      Top             =   1560
      Width           =   735
   End
   Begin VB.Label lblart 
      Alignment       =   2  'Center
      BackColor       =   &H0000FF00&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3075
      TabIndex        =   3
      Top             =   1140
      Width           =   615
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00C0C0C0&
      Height          =   375
      Left            =   3000
      Top             =   1080
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Number of products:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
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
      TabIndex        =   2
      Top             =   1200
      Width           =   2295
   End
   Begin VB.Image Image4 
      Height          =   720
      Left            =   120
      Picture         =   "frmInfo.frx":06EA
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Stock informations"
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
      Left            =   1320
      TabIndex        =   0
      Top             =   360
      Width           =   3735
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   5775
   End
End
Attribute VB_Name = "frmInfo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
On Error Resume Next
Call dbconek
With ar
.Open "Select *From tblFurnizuesit", strConek, adOpenStatic, adLockOptimistic
If ar.RecordCount = 0 Then
Exit Sub
Else
.MoveFirst
End If
Do While Not .EOF
lblfur.Caption = ar.RecordCount
.MoveNext
Loop
.Close
End With
Call dbconek
With ar
.Open "Select *From tblkategoria", strConek, adOpenStatic, adLockOptimistic
.MoveFirst
Do While Not .EOF
lblkat.Caption = ar.RecordCount
.MoveNext
Loop
.Close
End With
'================
Call dbconek
With ar
.Open "Select *From tblArtikujt", strConek, adOpenStatic, adLockOptimistic
.MoveFirst
Do While Not .EOF
lblart.Caption = ar.RecordCount
.MoveNext
Loop
.Close
End With
'===========================
Call dbconek
ar.Open "Select *From q2", strConek, adOpenStatic, adLockOptimistic
ar.MoveFirst
Do While Not ar.EOF
txttotal.Text = ar!sumofexpr1
ar.MoveNext
Loop
ar.Close
End Sub
