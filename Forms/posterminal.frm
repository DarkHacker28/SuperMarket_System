VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form posterminal 
   BackColor       =   &H80000013&
   BorderStyle     =   0  'None
   Caption         =   "EMMS"
   ClientHeight    =   11520
   ClientLeft      =   -345
   ClientTop       =   0
   ClientWidth     =   15360
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "posterminal.frx":0000
   ScaleHeight     =   11520
   ScaleWidth      =   15360
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.PictureBox picmsg 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   120
      Picture         =   "posterminal.frx":240044
      ScaleHeight     =   705
      ScaleWidth      =   15105
      TabIndex        =   29
      TabStop         =   0   'False
      Top             =   6840
      Visible         =   0   'False
      Width           =   15135
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   120
         Top             =   240
      End
      Begin VB.Label lblmsg 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Klikoni ENTER për transaksion te ri"
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   30
         Top             =   120
         Width           =   14895
      End
   End
   Begin VB.PictureBox picv 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      ForeColor       =   &H80000008&
      Height          =   1335
      Left            =   5880
      Picture         =   "posterminal.frx":263020
      ScaleHeight     =   1305
      ScaleWidth      =   2985
      TabIndex        =   17
      Top             =   3600
      Visible         =   0   'False
      Width           =   3015
      Begin VB.TextBox txt 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Wingdings"
            Size            =   12
            Charset         =   2
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         IMEMode         =   3  'DISABLE
         Index           =   2
         Left            =   240
         PasswordChar    =   "l"
         TabIndex        =   18
         TabStop         =   0   'False
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ESC ta anuloni"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   6
         Left            =   240
         TabIndex        =   20
         Top             =   960
         Width           =   2535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Fjalëkalimi Administrativ:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   5
         Left            =   240
         TabIndex        =   19
         Top             =   120
         Width           =   2535
      End
   End
   Begin VB.PictureBox picq 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      ForeColor       =   &H80000008&
      Height          =   1335
      Left            =   5880
      Picture         =   "posterminal.frx":270260
      ScaleHeight     =   1305
      ScaleWidth      =   2985
      TabIndex        =   8
      Top             =   3600
      Visible         =   0   'False
      Width           =   3015
      Begin VB.TextBox txt 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
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
         TabStop         =   0   'False
         Text            =   "1"
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Shkruani Sasinë"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   2
         Left            =   240
         TabIndex        =   11
         Top             =   120
         Width           =   2535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ESC ta anuloni"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   3
         Left            =   240
         TabIndex        =   10
         Top             =   960
         Width           =   2535
      End
   End
   Begin VB.TextBox txt 
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   1560
      TabIndex        =   0
      Top             =   600
      Width           =   3615
   End
   Begin MSComctlLib.ImageList itb32x32 
      Left            =   960
      Top             =   4440
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
            Picture         =   "posterminal.frx":27D4A0
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":27EE32
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":2807C4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":282156
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":283AE8
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":28547A
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":286E0C
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":28879E
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":28A130
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":28BAC4
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":28C7A0
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":28D080
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":28DD5C
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":28EA38
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":28F714
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":2903F0
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "posterminal.frx":2910CC
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.PictureBox piqs 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      ForeColor       =   &H80000008&
      Height          =   1335
      Left            =   5880
      Picture         =   "posterminal.frx":2919A8
      ScaleHeight     =   1305
      ScaleWidth      =   2985
      TabIndex        =   13
      Top             =   3600
      Visible         =   0   'False
      Width           =   3015
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   16
         TabStop         =   0   'False
         Text            =   "SHITJE E RREGULLT"
         Top             =   480
         Width           =   2775
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ESC ta anuloni"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   4
         Left            =   120
         TabIndex        =   15
         Top             =   960
         Width           =   2535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Lloji i Shitjes:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   1
         Left            =   120
         TabIndex        =   14
         Top             =   120
         Width           =   2895
      End
   End
   Begin VB.PictureBox piccash 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      ForeColor       =   &H80000008&
      Height          =   1335
      Left            =   5880
      Picture         =   "posterminal.frx":29EBE8
      ScaleHeight     =   1305
      ScaleWidth      =   2985
      TabIndex        =   25
      Top             =   3600
      Visible         =   0   'False
      Width           =   3015
      Begin VB.TextBox txt 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   3
         Left            =   240
         TabIndex        =   26
         TabStop         =   0   'False
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ESC ta anuloni"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Index           =   10
         Left            =   240
         TabIndex        =   28
         Top             =   960
         Width           =   2535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Shkruani shumën:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   9
         Left            =   120
         TabIndex        =   27
         Top             =   120
         Width           =   2535
      End
   End
   Begin VB.PictureBox pic 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      ForeColor       =   &H80000008&
      Height          =   1335
      Left            =   5880
      Picture         =   "posterminal.frx":2ABE28
      ScaleHeight     =   1305
      ScaleWidth      =   2985
      TabIndex        =   21
      Top             =   3600
      Visible         =   0   'False
      Width           =   3015
      Begin VB.ComboBox Combo2 
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
         Left            =   120
         TabIndex        =   22
         TabStop         =   0   'False
         Text            =   "TË GJITHA"
         Top             =   480
         Width           =   2775
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Zgjidheni Opcionin:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   8
         Left            =   120
         TabIndex        =   24
         Top             =   120
         Width           =   2895
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ESC ta anuloni"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   7
         Left            =   120
         TabIndex        =   23
         Top             =   960
         Width           =   2535
      End
   End
   Begin VB.PictureBox piclookup 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      ForeColor       =   &H80000008&
      Height          =   3975
      Left            =   3480
      Picture         =   "posterminal.frx":2B9068
      ScaleHeight     =   3945
      ScaleWidth      =   7905
      TabIndex        =   32
      Top             =   2160
      Visible         =   0   'False
      Width           =   7935
      Begin MSComctlLib.ListView lvsearch 
         Height          =   2775
         Left            =   240
         TabIndex        =   35
         TabStop         =   0   'False
         Top             =   720
         Width           =   7335
         _ExtentX        =   12938
         _ExtentY        =   4895
         View            =   3
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         HotTracking     =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Description"
            Object.Width           =   10231
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "UPC"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.TextBox txtsearch 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   33
         TabStop         =   0   'False
         Top             =   240
         Width           =   5775
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Shkruani Përshkrimin e artikullit dhe klikoni ENTER. Klikoni ESC per ta anuluar."
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   12
         Left            =   240
         TabIndex        =   36
         Top             =   3600
         Width           =   7335
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Përshkrimi:"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   495
         Index           =   11
         Left            =   240
         TabIndex        =   34
         Top             =   240
         Width           =   3255
      End
   End
   Begin MSComctlLib.ListView lstsale 
      Height          =   6855
      Left            =   120
      TabIndex        =   37
      Top             =   1680
      Width           =   15135
      _ExtentX        =   26696
      _ExtentY        =   12091
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      HideColumnHeaders=   -1  'True
      FlatScrollBar   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   16384
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   5
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "BARKODI"
         Object.Width           =   5292
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "PERSHKRIMI"
         Object.Width           =   9701
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "ÇMIMI"
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "SASIA"
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "TOTAL"
         Object.Width           =   3528
      EndProperty
   End
   Begin VB.Label lblsaleid 
      BackStyle       =   0  'Transparent
      Caption         =   "SHITJE E RREGULLT"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   495
      Left            =   11280
      TabIndex        =   31
      Top             =   600
      Width           =   3975
   End
   Begin VB.Label lblsaletype 
      BackStyle       =   0  'Transparent
      Caption         =   "SHITJE E RREGULLT"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   495
      Left            =   11280
      TabIndex        =   12
      Top             =   120
      Width           =   3255
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Barkodi:"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   120
      TabIndex        =   7
      Top             =   600
      Width           =   1455
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "KUSURI:"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   9840
      TabIndex        =   6
      Top             =   9960
      Width           =   2895
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "PAGUAR:"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   9840
      TabIndex        =   5
      Top             =   9360
      Width           =   2895
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "TOTAL:"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   0
      Left            =   9840
      TabIndex        =   4
      Top             =   8760
      Width           =   2895
   End
   Begin VB.Label LBLCHANGE 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Digital Readout Thick Upright"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   12840
      TabIndex        =   3
      Top             =   9960
      Width           =   2175
   End
   Begin VB.Label LBLCASHTEND 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Digital Readout Thick Upright"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   12840
      TabIndex        =   2
      Top             =   9360
      Width           =   2175
   End
   Begin VB.Label LBLTOTAL 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Digital Readout Thick Upright"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   12840
      TabIndex        =   1
      Top             =   8760
      Width           =   2175
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Barkodi:"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   495
      Left            =   130
      TabIndex        =   38
      Top             =   610
      Width           =   1455
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "KUSURI:"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   495
      Left            =   9850
      TabIndex        =   39
      Top             =   9970
      Width           =   2895
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "PAGUAR:"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   495
      Left            =   9850
      TabIndex        =   40
      Top             =   9370
      Width           =   2895
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "TOTAL:"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   495
      Index           =   13
      Left            =   9850
      TabIndex        =   41
      Top             =   8780
      Width           =   2895
   End
End
Attribute VB_Name = "posterminal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim intquantity As Long
Dim inttotal As Currency
Dim intcash As Currency
Dim intchange As Currency
Dim iloop As Byte
Dim s As String
Dim ints As Integer
Dim ilst As Integer
Dim lstid, lstupc, lstlong, lstshort, lstunitprice, lstquantity, lsttotal, lstsup, lstcat As String
Dim sdesc, supc As String

Private Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
    Case vbKeyEscape
        txt(0).Enabled = True
        Toolbar1.Enabled = True
        lstsale.Enabled = True
        txt(0).SetFocus
        piqs.Visible = False
End Select
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        lblsaletype.Caption = Combo1.Text
        txt(0).Enabled = True

        lstsale.Enabled = True
        piqs.Visible = False
        txt(0).SetFocus
    End If
End Sub

Private Sub Combo2_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
        Case vbKeyEscape
                'txt(1) = "1"
                pic.Visible = False
                txt(0).Enabled = True
                Toolbar1.Enabled = True
                lstsale.Enabled = True
                txt(0).SetFocus
        End Select
End Sub

Private Sub Combo2_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        picv.Visible = True
        txt(2).SetFocus
        pic.Visible = False
    End If
End Sub

Private Sub Form_Load()
On Error Resume Next
    Combo1.AddItem "SHITJE E RREGULLT"
    Combo1.AddItem "SHITJE ME SHUMICË"
    Combo1.AddItem "SHITJE ME KREDI"
    Combo2.AddItem "TË GJITHA"
    Combo2.AddItem "ARTIKULLIN E ZGJEDHUR"
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    Call dbconek
    ac.Open strConek
    With ar
        criteria = "Select *From sale"
        .Open criteria, strConek, adOpenStatic, adLockOptimistic
            .MoveLast
                lblsaleid.Caption = !saleid + 1
        .Close
    End With
    
    StatusBar2.Panels(3) = currentemmsuser
    
End Sub

Private Sub Image6_Click()
Load frmMMSPurchase
frmMMSPurchase.Show vbModal
End Sub
Private Sub Image8_Click()
    Unload Me
End Sub

Private Sub lstsale_KeyPress(KeyAscii As Integer)
Dim retim As Integer
    If KeyAscii = 13 Then
            pic.Visible = True
            Combo2.SetFocus
            lstsale.Enabled = False
                txt(0).Enabled = False

            
    End If
End Sub





Private Sub lvsearch_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
        piclookup.Visible = False
        txt(0).Enabled = True
        txt(0).SetFocus
        lstsale.Enabled = True
        Toolbar1.Enabled = True
    End If
End Sub

Private Sub lvsearch_KeyPress(KeyAscii As Integer)
    txt(0) = lvsearch.ListItems(lvsearch.SelectedItem.Index).SubItems(1)
    txtsearch = ""
    lvsearch.ListItems.Clear
    piclookup.Visible = False
    txt(0).Enabled = True
    lstsale.Enabled = True

    Call txt_KeyPress(0, 13)
    txt(0).SetFocus
End Sub

Private Sub picmsg_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        picmsg.Visible = False
        Timer1.Enabled = False
        txt(0).Enabled = True

        lstsale.Enabled = True
        lstsale.ListItems.Clear
        
        'set the values to 0
        inttotal = 0
        intcash = 0
        intchange = 0
        intquantity = 0
        
        'LBLTOTAL.Caption = "0.00"
        'LBLCASHTEND.Caption = "0.00"
        'LBLCHANGE.Caption = "0.00"
        'end
        'txt(0).SetFocus
        Me.Refresh
        
        Unload Me
        Load posterminal
        posterminal.Show
        
    End If
End Sub

Private Sub Timer1_Timer()
iloop = iloop + 1
If iloop = 1 Then lblmsg.ForeColor = vbWhite
If iloop = 2 Then lblmsg.ForeColor = vbBlack
If iloop = 2 Then iloop = 0
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    txt(0).SetFocus
    SendKeys "{home}+{end}"
End Sub

Private Sub txt_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error Resume Next
Select Case Index
    Case 0
        Select Case KeyCode
            Case vbKeyF2
                If lstsale.ListItems.Count > 0 Then
                    lstsale.SetFocus
                    LBLTIP.Caption = "Use arrow key to select item to void. Press ENTER key to Void All"
                Else
                    MsgBox "There are no items to void", vbCritical, "Cashier Error"
                    txt(0).SetFocus
                    Exit Sub
                End If
            Case vbKeyF3
                Dim intitem As ListItem
                txt(0).Enabled = False
                piclookup.Visible = True
                txtsearch.SetFocus
                SendKeys "{HOME}+{END}"
            Case vbKeyF4
                If lstsale.ListItems.Count = 0 Then
                    piqs.Visible = True
                    txt(0).Enabled = False
                    Toolbar1.Enabled = False
                    lstsale.Enabled = False
                    Combo1.SetFocus
                Else
                    MsgBox "You have already enter an item for this type of sale. Void the transaction if necessary.", vbCritical, "Cashier Error"
                    txt(0).SetFocus
                    Exit Sub
                End If
            Case vbKeyF6
                If lstsale.ListItems.Count = 0 Then
                    MsgBox "There are no item(s) bought", vbCritical, "Cashier Error"
                    txt(0).SetFocus
                    Exit Sub
                Else
                    piccash.Visible = True
                    txt(3).SetFocus
                    txt(0).Enabled = False
                    Toolbar1.Enabled = False
                    lstsale.Enabled = False
                End If
            Case vbKeyF10
                Load frmxLogIn
                frmxLogIn.Show vbModal
            Case vbKeyF11
                Unload Me
            Case vbKeyF12
                    picq.Visible = True
                    txt(1).SetFocus
                    SendKeys "{home}+{end}"
                    txt(0).Enabled = False
                    Toolbar1.Enabled = False
                    lstsale.Enabled = False
        End Select
    Case 1
        Select Case KeyCode
            Case vbKeyEscape
                txt(1) = "1"
                picq.Visible = False
                txt(0).Enabled = True
                Toolbar1.Enabled = True
                lstsale.Enabled = True
                txt(0).SetFocus
        End Select
    Case 2
        Select Case KeyCode
            Case vbKeyEscape
                'txt(1) = "1"
                picv.Visible = False
                txt(0).Enabled = True
                Toolbar1.Enabled = True
                lstsale.Enabled = True
                txt(0).SetFocus
        End Select
    Case 3
        Select Case KeyCode
            Case vbKeyEscape
                'txt(1) = "1"
                piccash.Visible = False
                txt(0).Enabled = True
                Toolbar1.Enabled = True
                lstsale.Enabled = True
                txt(0).SetFocus
        End Select
End Select
End Sub
Private Sub txt_KeyPress(Index As Integer, KeyAscii As Integer)
On Error Resume Next
Select Case Index
    Case 0
        '*****************************************************
        'For different sales type
        If KeyAscii = 13 Then
            'inttotal = 0
            
            Set ac = New ADODB.Connection
            Set ar = New ADODB.Recordset
        
            Call dbconek
            ac.Open strConek
            
            'Getting the discount, credit and regular amount from the database
            With ar
                criteria = "Select *From itemmaster Where upc='" & txt(0) & "'"
                .Open criteria, strConek, adOpenStatic, adLockOptimistic
                    If .RecordCount >= 1 Then
                        Select Case lblsaletype.Caption
                            Case "SHITJE E RREGULLT"
                                
                                lstsale.ListItems.Add , , txt(0)
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(1) = !longdesc
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(2) = Format(CCur(!unitprice), "###,###,##0.00")
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(3) = txt(1)
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(4) = Format(CCur(!unitprice * txt(1)), "###,###,##0.00")
                
                                inttotal = Val(txt(1)) * !unitprice
                                txt(1) = "1"
                                txt(0) = ""
                                LBLTOTAL.Caption = Format(CCur(LBLTOTAL.Caption) + CCur(inttotal), "###,###,##0.00")
                            Case "SHITJE ME SHUMICË"
                                lstsale.ListItems.Add , , txt(0)
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(1) = !longdesc

                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(2) = Format(CCur(!unitprice), "###,###,##0.00")
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(3) = txt(1)
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(2) = Format(CCur((!unitprice * txt(1)) / (1 + !discount)), "###,###,##0.00")
                                
                                'lstsale.AddItem addspace(txt(0), 15) & addspace(!longdesc, 50) & addspace(!shortdesc, 25) & addspace(Format(CCur(!unitprice), "###,###,##0.00"), 10) & addspace("@", 3) & addspace(txt(1), 10) & addspace(Format(CCur((!unitprice * txt(1)) / (1 + !discount)), "###,###,##0.00"), 15) & addspace(!supplierid, 10) & addspace(!categoryid, 10)
                                inttotal = CCur(txt(1)) * CCur(!unitprice) / (1 + !discount)
                                txt(1) = "1"
                                txt(0) = ""
                                LBLTOTAL.Caption = Format(CCur(LBLTOTAL.Caption) + CCur(inttotal), "###,###,##0.00")
                            Case "SHITJE ME KREDI"
                                lstsale.ListItems.Add , , txt(0)
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(1) = !longdesc
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(2) = Format(CCur(!unitprice), "###,###,##0.00")
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(3) = txt(1)
                                lstsale.ListItems(lstsale.ListItems.Count).SubItems(2) = Format(CCur((!unitprice * txt(1)) * (1 + !interestincredit)), "###,###,##0.00")
                                
                                'lstsale.AddItem addspace(txt(0), 15) & addspace(!longdesc, 50) & addspace(!shortdesc, 25) & addspace(Format(CCur(!unitprice), "###,###,##0.00"), 10) & addspace("@", 3) & addspace(txt(1), 10) & addspace(Format(CCur((!unitprice * txt(1)) * (1 + !interestincredit)), "###,###,##0.00"), 15) & addspace(!supplierid, 10) & addspace(!categoryid, 10)
                                inttotal = CCur(txt(1)) * CCur(!unitprice) * (1 + !interestincredit)
                                txt(1) = "1"
                                txt(0) = ""
                                LBLTOTAL.Caption = Format(CCur(LBLTOTAL.Caption) + CCur(inttotal), "###,###,##0.00")
                        End Select
                    Else
                        txt(0).SetFocus
                        SendKeys "{home}+{end}"
                        Exit Sub
                    End If
                .Close
            End With
            'snd
        End If
        'end
    Case 1 'For quantity
        If KeyAscii = 13 Then
            'intquantity = txt(1)
            txt(0).Enabled = True
            Toolbar1.Enabled = True
            lstsale.Enabled = True
            txt(0).SetFocus
            picq.Visible = False
        End If
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
    Case 2 'For Password check
        If KeyAscii = 13 Then
            Select Case Combo2.Text
                Case "TË GJITHA"
                    Set ac = New ADODB.Connection
                    Set ar = New ADODB.Recordset
        
                    Call dbconek
                    ac.Open strConek
        
                    With ar
                        criteria = "Select *From employeemaster Where password='" & txt(2) & "'"
                        .Open criteria, strConek, adOpenStatic, adLockOptimistic
                            If .RecordCount >= 1 Then
                                If !Position = "MENAXHER" Or !Position = "MBIKQYRES" Then
                                    lstsale.ListItems.Clear
                                    txt(0).Enabled = True
                                    txt(0).SetFocus
                                    lstsale.Enabled = True
                                    Toolbar1.Enabled = True
                                    picv.Visible = False
                                    inttotal = 0
                                    LBLTOTAL.Caption = "0.00"
                                Else
                                    MsgBox "The password you entered is not allowed to void an item", vbCritical, "Void Error"
                                    txt(2).SetFocus
                                    SendKeys "{home}+{end}"
                                End If
                            Else
                                MsgBox "Invalid supervisor/manager password", vbCritical, "Void Error"
                                txt(2).SetFocus
                                SendKeys "{home}+{end}"
                            End If
                        .Close
                    End With
                Case "ARTIKULLIN E ZGJEDHUR"
                    Dim i As Integer
                    Dim minusamount As String
                    
                    Set ac = New ADODB.Connection
                    Set ar = New ADODB.Recordset
        
                    Call dbconek
                    ac.Open strConek
                    
                    
                    
                    With ar
                        criteria = "Select *From employeemaster Where password='" & txt(2) & "'"
                        .Open criteria, strConek, adOpenStatic, adLockOptimistic
                            If .RecordCount >= 1 Then
                                
                                If !joblevel = "1" Or !joblevel = 2 Then
                                
                                    minusamount = lstsale.ListItems(lstsale.SelectedItem.Index).SubItems(5)
                                    LBLTOTAL.Caption = Format(CCur(LBLTOTAL.Caption) - minusamount, "###,###,##0.00")
                                                                        
                                    lstsale.ListItems.Remove (lstsale.SelectedItem.Index)
                                    txt(0).Enabled = True
                                    txt(0).SetFocus
                                    lstsale.Enabled = True
                                    Toolbar1.Enabled = True
                                    picv.Visible = False
                                Else
                                    MsgBox "The password you entered is not allowed to void an item", vbCritical, "Void Error"
                                    txt(2).SetFocus
                                    SendKeys "{home}+{end}"
                                End If
                            Else
                                MsgBox "Invalid supervisor/manager password", vbCritical, "Void Error"
                                txt(2).SetFocus
                                SendKeys "{home}+{end}"
                            End If
                        .Close
                    End With
            End Select
        End If
    Case 3 'cash
        If KeyAscii = 13 Then
            If txt(3) <= LBLTOTAL - 1 Then
                txt(3).SetFocus
                SendKeys "{home}+{end}"
                Exit Sub
            Else
                'Calculate
                '************************************************************'
                intcash = txt(3).Text
                intchange = CCur(intcash) - LBLTOTAL.Caption
                LBLCASHTEND.Caption = Format(CCur(intcash), "###,###,##0.00")
                LBLCHANGE.Caption = Format(CCur(intchange), "###,###,##0.00")
            
                piccash.Visible = False
                picmsg.Visible = True
                
                
                
                'Save to parent table "sale"
                '***********************************************************'
                
                Set ac = New ADODB.Connection
                Set ar = New ADODB.Recordset
                
                Call dbconek
                ac.Open strConek
                                
                With ar
                    criteria = "Select *From sale"
                    .Open criteria, strConek, adOpenStatic, adLockOptimistic
                        .AddNew
                            !saleid = lblsaleid
                            !Date = Format(Date, "mm/dd/yyyy")
                            !employee = currentemmsuser
                            !salestotal = LBLTOTAL
                        .Update
                    .Close
                End With
                '**********************************************************
                                
                For ilst = 1 To lstsale.ListItems.Count
                    lstupc = lstsale.ListItems(ilst).Text
                    lstlong = lstsale.ListItems(ilst).SubItems(1)
                    lstunitprice = lstsale.ListItems(ilst).SubItems(2)
                    lstquantity = lstsale.ListItems(ilst).SubItems(3)
                    lsttotal = lstsale.ListItems(ilst).SubItems(4)

                    
                    Set ac = New ADODB.Connection
                    Set ar = New ADODB.Recordset
                    
                    Call dbconek
                    ac.Open strConek
                    
                    With ar
                        criteria = "Select *From saledetails"
                        .Open criteria, strConek, adOpenStatic, adLockOptimistic
                            .AddNew
                                !saleid = lblsaleid.Caption
                                !upc = lstupc
                                !longdesc = lstlong
                                !unitprice = lstunitprice
                                !quantity = lstquantity
                                !total = lsttotal
                                !Date = Format(Date, "mm/dd/yyyy")
                            .Update
                        .Close
                    End With
                    '***********************************************************
                    
                    'Deduct to inventory
                    '***********************************************************
                    Set ac = New ADODB.Connection
                    Set ar = New ADODB.Recordset
                    
                    Call dbconek
                    ac.Open strConek
                    
                    With ar
                        criteria = "Select *From itemmaster Where upc='" & lstupc & "'"
                        .Open criteria, strConek, adOpenStatic, adLockOptimistic
                            !stock = !stock - lstquantity
                            .Update
                        .Close
                    End With
                    '***********************************************************
                Next
                
                Dim longname, lname As Long
                                
                Dim ii As Integer
                Printer.Print ""
                Printer.Print ""
                Printer.Print "Emri i Shitores"
                Printer.Print "Adresa e shitores"
                Printer.Print Date
                Printer.Print Space(longname - Len("NIB: 465-888-0987")) & "NIB: 465-888-0987"
                Printer.Print " "
                Printer.Print " "
                Printer.Print "---------------------------------------------------"
                For ii = 1 To lstsale.ListItems.Count
                Printer.Print lstsale.ListItems(ii).SubItems(1)
                Printer.Print "          " & lstsale.ListItems(ii).SubItems(2) & "  x  " & lstsale.ListItems(ii).SubItems(3) & "  =  "; lstsale.ListItems(ii).SubItems(4)
                Next
                Printer.Print "---------------------------------------------------"
                Printer.Print "GJITHSEJ:   =  " & LBLTOTAL.Caption
                Printer.Print "---------------------------------------------------"
                Printer.Print "PAGUAR  :   =  " & LBLCASHTEND.Caption
                Printer.Print "KUSURI    :   =  " & LBLCHANGE.Caption
                Printer.Print ""
                Printer.Print Space(50 - Len("This is your oficial receipt")) & "This is your oficial receipt"
                'Dim longname As Long
                longname = Len(lstsale.ListItems(1).SubItems(2) & Space(30 - Len(lstsale.ListItems(1).SubItems(2))) & lstsale.ListItems(1).SubItems(4) & Space(15 - Len(lstsale.ListItems(1).SubItems(4))) & lstsale.ListItems(1).SubItems(5))
                
                Open App.Path & "\Reports\Purchase.txt" For Append As #1
                    Print #1, "Store Name: Planet Sports"
                    Print #1, "Branch Name: LCC Branch"
                    Print #1, "Adresa: Felix Plazo Naga City"
                    Print #1, "NIB: TNW-001-0987-67"
                    Print #1, "Transaksioni numër: " & lblsaleid
                    Print #1,
                    Print #1, "Përshkrimi" & Space(30 - Len("Përshkrimi")) & "Sasia" & Space(15 - Len("Sasia")) & "TOTAL"
                    Print #1,
                    For ii = 1 To lstsale.ListItems.Count
                        Print #1, lstsale.ListItems(ii).SubItems(2) & Space(30 - Len(lstsale.ListItems(ii).SubItems(2))) & lstsale.ListItems(ii).SubItems(4) & Space(15 - Len(lstsale.ListItems(ii).SubItems(4))) & lstsale.ListItems(ii).SubItems(5)
                    Next
                    Print #1,
                    Print #1,
                    Print #1, Space(longname - Len("TOTAL   : " & LBLTOTAL.Caption)) & "TOTAL   : " & LBLTOTAL.Caption
                    Print #1, Space(longname - Len("E PAGUAR: " & LBLCASHTEND.Caption)) & "E OFRUAR: " & LBLCASHTEND.Caption
                    Print #1, Space(longname - Len("KUSURI  : " & LBLCHANGE.Caption)) & "KUSURI  : " & LBLCHANGE.Caption
                Close #1
            Shell App.Path & "\Reports\PrintSale.Bat", vbHide
        
            Open App.Path & "\Reports\Report.txt" For Output As #1
                Print #1, " "
            Close #1
                
                picmsg.SetFocus
                Timer1.Enabled = True
                txt(3) = ""
            End If
        End If
        
End Select
End Sub

Private Sub txtsearch_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyEscape Then
        piclookup.Visible = False
        txt(0).Enabled = True
        txt(0).SetFocus
        lstsale.Enabled = True

    End If
End Sub

Private Sub txtsearch_KeyPress(KeyAscii As Integer)
On Error Resume Next
'Procedur to search strings
'***********************************************************************
Dim inti As ListItem
If KeyAscii = 13 Then
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    
    Call dbconek
    ac.Open strConek
    
    lvsearch.ListItems.Clear
    With ar
        criteria = "Select *From itemmaster"
        .Open criteria, strConek, adOpenStatic, adLockOptimistic
            .MoveFirst
            Do While Not .EOF
                If Mid(!longdesc, 1, Len(txtsearch)) = txtsearch Then
                    Set intitem = lvsearch.ListItems.Add(, , !longdesc)
                    intitem.SubItems(1) = !upc
                End If
                .MoveNext
                lvsearch.SetFocus
                
            Loop
        .Close
    End With
End If
    KeyAscii = Asc(UCase(Chr(KeyAscii)))
End Sub
