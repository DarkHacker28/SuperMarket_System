VERSION 5.00
Begin VB.Form frmMAIN 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   11520
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   15360
   LinkTopic       =   "Form2"
   Picture         =   "frmMAIN2.frx":0000
   ScaleHeight     =   11520
   ScaleWidth      =   15360
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "ARTIKUJT"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3240
      TabIndex        =   18
      Top             =   2400
      Width           =   1215
   End
   Begin SmartCASH.LinkLabel LinkLabel12 
      Height          =   255
      Left            =   120
      TabIndex        =   17
      Top             =   8640
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "DALJA"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin SmartCASH.LinkLabel LinkLabel11 
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   8280
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Përdoruesit"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin SmartCASH.LinkLabel LinkLabel10 
      Height          =   255
      Left            =   120
      TabIndex        =   15
      Top             =   7920
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Informacionet e Kompanisë"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin SmartCASH.LinkLabel LinkLabel9 
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   6720
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Paragonat e Shitjes"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin VB.Label Label6 
      BackColor       =   &H00008000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C58550&
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   7200
      Width           =   2775
   End
   Begin SmartCASH.LinkLabel LinkLabel8 
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   7560
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Moduli i Raporteve"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin SmartCASH.LinkLabel LinkLabel7 
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   6360
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Listat e Furnizimit"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin VB.Label Label5 
      BackColor       =   &H00008000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C58550&
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   5640
      Width           =   2775
   End
   Begin SmartCASH.LinkLabel LinkLabel6 
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   6000
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Furnizimi"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin SmartCASH.LinkLabel LinkLabel5 
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   5160
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Furnizuesit"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin VB.Label Label4 
      BackColor       =   &H00008000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C58550&
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   4440
      Width           =   2775
   End
   Begin SmartCASH.LinkLabel LinkLabel4 
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   4800
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Kategoritë"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin SmartCASH.LinkLabel LinkLabel3 
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   3960
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Filtrimi i Shenimeve"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin SmartCASH.LinkLabel LinkLabel2 
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   3600
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Lista e Artikujve"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin SmartCASH.LinkLabel LinkLabel1 
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   3240
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   450
      BackStyle       =   0
      Caption         =   "Regjistrimi i Artikujve"
      OverUnderline   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FontBold        =   -1  'True
      FontName        =   "Tahoma"
      FontSize        =   8.25
      OverBold        =   -1  'True
      OverColor       =   12944720
   End
   Begin VB.Label Label3 
      BackColor       =   &H00008000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C58550&
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   2880
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   $"frmMAIN2.frx":240044
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C58550&
      Height          =   975
      Left            =   2280
      TabIndex        =   1
      Top             =   1080
      Width           =   3735
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00D2BDA6&
      BorderWidth     =   2
      X1              =   2280
      X2              =   8160
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Visual Soft Development"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00004000&
      Height          =   735
      Left            =   2280
      TabIndex        =   0
      Top             =   240
      Width           =   6495
   End
End
Attribute VB_Name = "frmMAIN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
