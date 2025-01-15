VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Begin VB.Form frmRaportet 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Gjenerimi i Raporteve"
   ClientHeight    =   5310
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   7440
   Icon            =   "frmRaportet.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5310
   ScaleWidth      =   7440
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame fFurnizimi 
      Caption         =   "Raportet e Furnizimit"
      Height          =   2655
      Left            =   120
      TabIndex        =   18
      Top             =   1680
      Visible         =   0   'False
      Width           =   7215
      Begin VB.PictureBox Picture2 
         BorderStyle     =   0  'None
         Height          =   2055
         Left            =   120
         ScaleHeight     =   2055
         ScaleWidth      =   6975
         TabIndex        =   19
         Top             =   240
         Width           =   6975
         Begin VB.OptionButton Option6 
            Caption         =   "Raporti Ditor"
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
            Left            =   120
            TabIndex        =   21
            Top             =   120
            Value           =   -1  'True
            Width           =   2055
         End
         Begin VB.OptionButton Option5 
            Caption         =   "Raporti Periodik"
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
            Left            =   120
            TabIndex        =   20
            Top             =   1200
            Width           =   2055
         End
         Begin MSMask.MaskEdBox txtfurditor 
            Height          =   375
            Left            =   1560
            TabIndex        =   22
            Top             =   480
            Width           =   1935
            _ExtentX        =   3413
            _ExtentY        =   661
            _Version        =   393216
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
         Begin MSMask.MaskEdBox txtfurprej 
            Height          =   375
            Left            =   1560
            TabIndex        =   23
            Top             =   1560
            Width           =   1935
            _ExtentX        =   3413
            _ExtentY        =   661
            _Version        =   393216
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
         Begin MSMask.MaskEdBox txtfurderi 
            Height          =   375
            Left            =   4920
            TabIndex        =   24
            Top             =   1560
            Width           =   1935
            _ExtentX        =   3413
            _ExtentY        =   661
            _Version        =   393216
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
         Begin VB.Label Label7 
            Caption         =   "Raporti për datën:"
            Height          =   255
            Left            =   120
            TabIndex        =   27
            Top             =   550
            Width           =   1335
         End
         Begin VB.Label Label6 
            Caption         =   "Raporti prej datës:"
            Height          =   255
            Left            =   120
            TabIndex        =   26
            Top             =   1635
            Width           =   1335
         End
         Begin VB.Label Label5 
            Caption         =   "Deri me datën:"
            Height          =   255
            Left            =   3720
            TabIndex        =   25
            Top             =   1635
            Width           =   1095
         End
      End
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Printo"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5520
      TabIndex        =   17
      Top             =   4680
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Shiko rezultatet në formë liste"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   16
      Top             =   4680
      Width           =   3135
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   15
      Top             =   4560
      Width           =   7215
      _ExtentX        =   12726
      _ExtentY        =   53
   End
   Begin VB.Frame fShitja 
      Caption         =   "Raportet e Shitjes"
      Height          =   2655
      Left            =   120
      TabIndex        =   5
      Top             =   1680
      Width           =   7215
      Begin VB.PictureBox Picture1 
         BorderStyle     =   0  'None
         Height          =   2055
         Left            =   120
         ScaleHeight     =   2055
         ScaleWidth      =   6975
         TabIndex        =   6
         Top             =   240
         Width           =   6975
         Begin VB.OptionButton Option4 
            Caption         =   "Raporti Periodik"
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
            Left            =   120
            TabIndex        =   10
            Top             =   1200
            Width           =   2055
         End
         Begin VB.OptionButton Option3 
            Caption         =   "Raporti Ditor"
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
            Left            =   120
            TabIndex        =   7
            Top             =   120
            Value           =   -1  'True
            Width           =   2055
         End
         Begin MSMask.MaskEdBox txtditor 
            Height          =   375
            Left            =   1560
            TabIndex        =   8
            Top             =   480
            Width           =   1935
            _ExtentX        =   3413
            _ExtentY        =   661
            _Version        =   393216
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
         Begin MSMask.MaskEdBox txtprej 
            Height          =   375
            Left            =   1560
            TabIndex        =   11
            Top             =   1560
            Width           =   1935
            _ExtentX        =   3413
            _ExtentY        =   661
            _Version        =   393216
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
         Begin MSMask.MaskEdBox txtderi 
            Height          =   375
            Left            =   4920
            TabIndex        =   13
            Top             =   1560
            Width           =   1935
            _ExtentX        =   3413
            _ExtentY        =   661
            _Version        =   393216
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
         Begin VB.Label Label4 
            Caption         =   "Deri me datën:"
            Height          =   255
            Left            =   3720
            TabIndex        =   14
            Top             =   1635
            Width           =   1095
         End
         Begin VB.Label Label3 
            Caption         =   "Raporti prej datës:"
            Height          =   255
            Left            =   120
            TabIndex        =   12
            Top             =   1635
            Width           =   1335
         End
         Begin VB.Label Label2 
            Caption         =   "Raporti për datën:"
            Height          =   255
            Left            =   120
            TabIndex        =   9
            Top             =   550
            Width           =   1335
         End
      End
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Raportet e Furnizimit"
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
      Left            =   3480
      TabIndex        =   4
      Top             =   1200
      Width           =   2175
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Raportet e Shitjes"
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
      Left            =   600
      TabIndex        =   3
      Top             =   1200
      Value           =   -1  'True
      Width           =   2055
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   0
      Top             =   960
      Width           =   8055
      _ExtentX        =   14208
      _ExtentY        =   53
   End
   Begin VB.Image Image3 
      Height          =   360
      Left            =   3000
      Picture         =   "frmRaportet.frx":058A
      Top             =   1120
      Width           =   360
   End
   Begin VB.Image Image2 
      Height          =   360
      Left            =   120
      Picture         =   "frmRaportet.frx":0C74
      Top             =   1120
      Width           =   360
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Zgjidhni opcionet e meposhtme per te pare raportet"
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
      TabIndex        =   2
      Top             =   600
      Width           =   4935
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Raportet Financiare"
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
      TabIndex        =   1
      Top             =   240
      Width           =   3375
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "frmRaportet.frx":135E
      Top             =   120
      Width           =   720
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
Attribute VB_Name = "frmRaportet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
txtfurditor.Text = Format(Now, "dd/mm/yyyy")
txtprej.Text = Format(Now, "dd/mm/yyyy")
txtderi.Text = Format(Now, "dd/mm/yyyy")
txtditor.Text = Format(Now, "dd/mm/yyyy")
txtfurprej.Text = Format(Now, "dd/mm/yyyy")
txtfurderi.Text = Format(Now, "dd/mm/yyyy")
End Sub

Private Sub Option1_Click()
fShitja.Visible = True
fFurnizimi.Visible = False
End Sub

Private Sub Option2_Click()
fShitja.Visible = False
fFurnizimi.Visible = True
End Sub
