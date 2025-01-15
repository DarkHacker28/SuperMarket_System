VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmPayroll 
   BackColor       =   &H00ECF4F4&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Pagesa"
   ClientHeight    =   7740
   ClientLeft      =   45
   ClientTop       =   2145
   ClientWidth     =   10455
   Icon            =   "frmPayroll.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7740
   ScaleMode       =   0  'User
   ScaleWidth      =   10450.33
   StartUpPosition =   2  'CenterScreen
   Begin EMMS.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   53
      Top             =   7080
      Width           =   10215
      _ExtentX        =   18018
      _ExtentY        =   53
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00ECF4F4&
      Caption         =   "Mos prano detyrimet"
      Height          =   375
      Left            =   5400
      TabIndex        =   51
      TabStop         =   0   'False
      Top             =   3840
      Width           =   2775
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   11
      Left            =   3600
      TabIndex        =   1
      Top             =   1320
      Width           =   1335
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   10
      Left            =   1680
      TabIndex        =   0
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton cmdadd 
      Caption         =   "Pagesë e re"
      Height          =   420
      Left            =   120
      TabIndex        =   37
      Top             =   7200
      Width           =   1335
   End
   Begin VB.OptionButton opt 
      BackColor       =   &H00ECF4F4&
      Caption         =   "Prano Detyrimet përveq Huasë"
      Height          =   375
      Left            =   5400
      TabIndex        =   36
      TabStop         =   0   'False
      Top             =   3480
      Width           =   2775
   End
   Begin VB.OptionButton optall 
      BackColor       =   &H00ECF4F4&
      Caption         =   "Prano të gjitha detyrimet"
      Height          =   375
      Left            =   8280
      TabIndex        =   35
      TabStop         =   0   'False
      Top             =   3480
      Width           =   2055
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   9
      Left            =   6960
      TabIndex        =   6
      Text            =   "0.00"
      Top             =   2760
      Width           =   1575
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   8
      Left            =   6960
      TabIndex        =   5
      Text            =   "0.00"
      Top             =   2400
      Width           =   1575
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   7
      Left            =   6960
      TabIndex        =   4
      Text            =   "0.00"
      Top             =   1680
      Width           =   1575
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   6
      Left            =   6960
      TabIndex        =   3
      Text            =   "0.00"
      Top             =   1320
      Width           =   1575
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   285
      Index           =   5
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   28
      TabStop         =   0   'False
      Text            =   "0.00"
      Top             =   3840
      Width           =   1575
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   285
      Index           =   4
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   26
      TabStop         =   0   'False
      Text            =   "0.00"
      Top             =   3480
      Width           =   1575
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   285
      Index           =   3
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   24
      TabStop         =   0   'False
      Text            =   "0.00"
      Top             =   3120
      Width           =   1575
   End
   Begin MSComctlLib.ProgressBar pbar 
      Height          =   255
      Left            =   120
      TabIndex        =   22
      Top             =   9600
      Width           =   10215
      _ExtentX        =   18018
      _ExtentY        =   450
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
   End
   Begin VB.CommandButton cmdremove 
      Caption         =   "Largoje"
      Enabled         =   0   'False
      Height          =   420
      Left            =   3120
      TabIndex        =   21
      Top             =   7200
      Width           =   1455
   End
   Begin VB.CommandButton cmdsave 
      Caption         =   "Ruaje"
      Enabled         =   0   'False
      Height          =   420
      Left            =   7560
      TabIndex        =   10
      Top             =   7200
      Width           =   1335
   End
   Begin VB.CommandButton cmdexit 
      Caption         =   "Dalja"
      Height          =   420
      Left            =   9000
      TabIndex        =   11
      Top             =   7200
      Width           =   1335
   End
   Begin VB.CommandButton cmdnew 
      Caption         =   "Shto"
      Height          =   420
      Left            =   6120
      TabIndex        =   9
      Top             =   7200
      Width           =   1335
   End
   Begin VB.CommandButton cmdlookup 
      Caption         =   "Kerko"
      Enabled         =   0   'False
      Height          =   420
      Left            =   4680
      TabIndex        =   8
      Top             =   7200
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Anuloje"
      Enabled         =   0   'False
      Height          =   420
      Left            =   1560
      TabIndex        =   7
      Top             =   7200
      Width           =   1455
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   285
      Index           =   2
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   19
      TabStop         =   0   'False
      Text            =   "0.00"
      Top             =   2760
      Width           =   1575
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   285
      Index           =   1
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   16
      TabStop         =   0   'False
      Top             =   2040
      Width           =   3375
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   1680
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   1680
      Width           =   1335
   End
   Begin MSComctlLib.ListView lst 
      Height          =   2175
      Left            =   120
      TabIndex        =   12
      Top             =   4680
      Width           =   10215
      _ExtentX        =   18018
      _ExtentY        =   3836
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   17
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Emp ID"
         Object.Width           =   1765
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Name"
         Object.Width           =   5294
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Rate/Hour RD"
         Object.Width           =   2118
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "Total Time RD"
         Object.Width           =   2541
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "Rate/Hour SH"
         Object.Width           =   2118
      EndProperty
      BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   5
         Text            =   "Total Time SH"
         Object.Width           =   2541
      EndProperty
      BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   6
         Text            =   "OT Rate RD"
         Object.Width           =   2118
      EndProperty
      BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   7
         Text            =   "Total OT RD"
         Object.Width           =   2541
      EndProperty
      BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   8
         Text            =   "OT Rate SH"
         Object.Width           =   2118
      EndProperty
      BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   9
         Text            =   "Total OT SH"
         Object.Width           =   2541
      EndProperty
      BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   10
         Text            =   "Gross Pay"
         Object.Width           =   2118
      EndProperty
      BeginProperty ColumnHeader(12) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   11
         Text            =   "SSS"
         Object.Width           =   2118
      EndProperty
      BeginProperty ColumnHeader(13) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   12
         Text            =   "WHT"
         Object.Width           =   2118
      EndProperty
      BeginProperty ColumnHeader(14) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   13
         Text            =   "Phil Health"
         Object.Width           =   2118
      EndProperty
      BeginProperty ColumnHeader(15) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   14
         Text            =   "Comp. Loans"
         Object.Width           =   2118
      EndProperty
      BeginProperty ColumnHeader(16) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   15
         Text            =   "Net Pay"
         Object.Width           =   2541
      EndProperty
      BeginProperty ColumnHeader(17) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   16
         Text            =   "L.N. to be Paid"
         Object.Width           =   1765
      EndProperty
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Moduli i pagesës"
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
      Index           =   8
      Left            =   840
      TabIndex        =   52
      Top             =   240
      Width           =   2535
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   120
      Picture         =   "frmPayroll.frx":08CA
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Deri:"
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
      Index           =   12
      Left            =   3120
      TabIndex        =   50
      Top             =   1320
      Width           =   495
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Prej datës:"
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
      Index           =   11
      Left            =   120
      TabIndex        =   49
      Top             =   1320
      Width           =   2055
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Numër:"
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
      Index           =   10
      Left            =   8520
      TabIndex        =   48
      Top             =   3960
      Width           =   855
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Opcionet e Detyrimit"
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
      Left            =   5400
      TabIndex        =   47
      Top             =   3120
      Width           =   4935
   End
   Begin VB.Label lblid 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   9360
      TabIndex        =   46
      Top             =   3960
      Width           =   975
   End
   Begin VB.Label lblotspecial 
      Caption         =   "Label5"
      Height          =   255
      Left            =   8640
      TabIndex        =   45
      Top             =   2760
      Width           =   1695
   End
   Begin VB.Label lblotregdays 
      Caption         =   "Label5"
      Height          =   255
      Left            =   8640
      TabIndex        =   44
      Top             =   2400
      Width           =   1695
   End
   Begin VB.Label lblspecialrate 
      Caption         =   "Label5"
      Height          =   255
      Left            =   8640
      TabIndex        =   43
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Label lblrateperhour 
      Caption         =   "Label5"
      Height          =   255
      Left            =   8640
      TabIndex        =   42
      Top             =   1320
      Width           =   1695
   End
   Begin VB.Label lblloan 
      Caption         =   "lbloan"
      Height          =   255
      Index           =   0
      Left            =   3360
      TabIndex        =   41
      Top             =   3840
      Width           =   975
   End
   Begin VB.Label lblph 
      Caption         =   "lblph"
      Height          =   255
      Index           =   0
      Left            =   3360
      TabIndex        =   40
      Top             =   3480
      Width           =   975
   End
   Begin VB.Label lbltax 
      Caption         =   "lbltax"
      Height          =   255
      Index           =   0
      Left            =   3360
      TabIndex        =   39
      Top             =   3120
      Width           =   975
   End
   Begin VB.Label lblsss 
      Caption         =   "Label3"
      Height          =   255
      Index           =   0
      Left            =   3360
      TabIndex        =   38
      Top             =   2760
      Width           =   975
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "DItët e rregullta:"
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
      Left            =   5400
      TabIndex        =   34
      Top             =   2400
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Pushimi:"
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
      Left            =   5400
      TabIndex        =   33
      Top             =   2760
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Orët totale jashtë orarit"
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
      Index           =   4
      Left            =   5400
      TabIndex        =   32
      Top             =   2040
      Width           =   4935
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Ditët e rregullta:"
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
      Index           =   9
      Left            =   5400
      TabIndex        =   31
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Pushimi:"
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
      Left            =   5400
      TabIndex        =   30
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Huaja:"
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
      Left            =   120
      TabIndex        =   29
      Top             =   3840
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Tatimi i Sig.Sh."
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
      Left            =   120
      TabIndex        =   27
      Top             =   3480
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Tatimi i Mbajtjes:"
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
      Left            =   120
      TabIndex        =   25
      Top             =   3120
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Huatë dhe Detyrimet:"
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
      Index           =   1
      Left            =   120
      TabIndex        =   23
      Top             =   2400
      Width           =   4935
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Orët totale të raportuara"
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
      Index           =   3
      Left            =   5400
      TabIndex        =   20
      Top             =   960
      Width           =   4935
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Tatimi i Sig Soc."
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
      Left            =   120
      TabIndex        =   18
      Top             =   2760
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Emri i Punëtorit:"
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
      Left            =   120
      TabIndex        =   17
      Top             =   2040
      Width           =   2055
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Punëtori ID:"
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
      Left            =   120
      TabIndex        =   15
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Informacionet e Pagesës"
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
      Index           =   0
      Left            =   120
      TabIndex        =   14
      Top             =   960
      Width           =   4935
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Informacionet e tufës paguese"
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
      Index           =   2
      Left            =   120
      TabIndex        =   13
      Top             =   4320
      Width           =   10215
   End
   Begin VB.Image Image3 
      Height          =   885
      Left            =   0
      Picture         =   "frmPayroll.frx":1194
      Stretch         =   -1  'True
      Top             =   0
      Width           =   14655
   End
End
Attribute VB_Name = "frmPayroll"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim slnum, sid, sname, sraterd, stotalrd, sratesh, stotalsh, sotrd, stotalotrd, sotsh, stotalotsh, sgross, ssss, swht, sph, sloans, snet As String
Dim intloanpay, intloan As Double
Private Sub cmdadd_Click()
    intgross = 0
    indeduction = 0
    If txt(0) = "" Or txt(1) = "" Then
        MsgBox "No Item toadd", vbCritical, "Error"
        txt(0).SetFocus
        Exit Sub
    End If
    If txt(6) = "0.00" Then
        MsgBox "No time recorded forthisemployee", vbCritical, "Error"
        txt(6).SetFocus
        Exit Sub
    End If
    For i = 1 To lst.ListItems.Count
        If txt(0) = lst.ListItems(i).Text Then
            MsgBox "Employee Already on the List", vbCritical, "Error"
            txt(0).SetFocus
            Exit Sub
        End If
    Next
    intgross = Format(CCur((lblperhour * txt(6)) + (lblspecialrate * txt(7)) + (lblotregdays * txt(8)) + (lblotspecial * txt(9))), "###,###,##0.00")
    intdeduction = Val(txt(2)) + Val(txt(3)) + Val(txt(4)) + Val(txt(5))
    lst.ListItems.Add , , txt(0).Text
    lst.ListItems(lst.ListItems.Count).SubItems(1) = txt(1)
    lst.ListItems(lst.ListItems.Count).SubItems(2) = lblrateperhour
    lst.ListItems(lst.ListItems.Count).SubItems(3) = Format(CCur(txt(6)), "###,##0.00")
    lst.ListItems(lst.ListItems.Count).SubItems(4) = lblspecialrate
    lst.ListItems(lst.ListItems.Count).SubItems(5) = Format(CCur(txt(7)), "###,##0.00")
    lst.ListItems(lst.ListItems.Count).SubItems(6) = lblotregdays
    lst.ListItems(lst.ListItems.Count).SubItems(7) = Format(CCur(txt(8)), "###,##0.00")
    lst.ListItems(lst.ListItems.Count).SubItems(8) = lblotspecial
    lst.ListItems(lst.ListItems.Count).SubItems(9) = Format(CCur(txt(9)), "###,##0.00")
    lst.ListItems(lst.ListItems.Count).SubItems(10) = Format(CCur(intgross), "###,##0.00")
    lst.ListItems(lst.ListItems.Count).SubItems(11) = Format(txt(2), "###,##0.00")
    lst.ListItems(lst.ListItems.Count).SubItems(12) = Format(txt(3), "###,##0.00")
    lst.ListItems(lst.ListItems.Count).SubItems(13) = Format(txt(4), "###,##0.00")
    lst.ListItems(lst.ListItems.Count).SubItems(14) = Format(txt(5), "###,##0.00")
    lst.ListItems(lst.ListItems.Count).SubItems(15) = Format(CCur(intgross - intdeduction), "###,###,##0.00")
    lst.ListItems(lst.ListItems.Count).SubItems(16) = lblloan(0)
    
    
End Sub

Private Sub cmdexit_Click()
    Unload Me
End Sub

Private Sub cmdlookup_Click()
    intemployeesearch = 2
    txt(0).SetFocus
    LoadForm EmployeeSearch
End Sub

Private Sub cmdnew_Click()
On Error Resume Next
    Call dbconek
    
    ar.Open "Select *From payroll", strConek, adOpenStatic, adLockOptimistic
        ar.MoveLast
        
        lblid = ar!payslipid + 1
    ar.Close
    
    txt(0).Locked = False
    cmdlookup.Enabled = True
    cmdsave.Enabled = True
    Command1.Enabled = True
    cmdadd.Enabled = True
    cmdremove.Enabled = True
    txt(10).SetFocus
    cmdnew.Enabled = False
End Sub

Private Sub cmdremove_Click()
    lst.ListItems.Remove (lst.SelectedItem.Index)
End Sub

Private Sub cmdsave_Click()
On Error Resume Next
Dim ii As Integer
Dim a As Integer
    If lst.ListItems.Count = 0 Then
        MsgBox "There areno items to save...", vbInformation, "Error"
        Exit Sub
    End If
    Call dbconek
    ar.Open "Select *From payroll", strConek, adOpenStatic, adLockOptimistic
        ar.AddNew
            ar!payslipid = lblid
            ar!fromdate = txt(10)
            ar!todate = txt(11)
        ar.Update
    ar.Close
    
    pbar.Max = 100
    pbar.Min = 0
    pbar.Value = 0
    For ii = 1 To lst.ListItems.Count
        'get the values
        sid = lst.ListItems(ii).Text
        sname = lst.ListItems(ii).SubItems(1)
        sraterd = lst.ListItems(ii).SubItems(2)
        stotalrd = lst.ListItems(ii).SubItems(3)
        sratesh = lst.ListItems(ii).SubItems(4)
        stotalsh = lst.ListItems(ii).SubItems(5)
        sotrd = lst.ListItems(ii).SubItems(6)
        stotalotrd = lst.ListItems(ii).SubItems(7)
        sotsh = lst.ListItems(ii).SubItems(8)
        stotalotsh = lst.ListItems(ii).SubItems(9)
        sgross = lst.ListItems(ii).SubItems(10)
        ssss = lst.ListItems(ii).SubItems(11)
        swht = lst.ListItems(ii).SubItems(12)
        sph = lst.ListItems(ii).SubItems(13)
        sloans = lst.ListItems(ii).SubItems(14)
        snet = lst.ListItems(ii).SubItems(15)
        slnum = lst.ListItems(ii).SubItems(16)
        Call dbconek
        
        With ar
            .Open "Select *From payrolldetails", strConek, adOpenStatic, adLockOptimistic
                .AddNew
                !payslipid = lblid
                !employeeid = sid
                !Name = sname
                !rateperhour = sraterd
                !totalrd = stotalrd
                !ratespecial = sratesh
                !totalsh = stotalsh
                !otregdays = sotrd
                !totalotregdays = stotalotrd
                !otspecial = sotsh
                !totalotspecial = stotalotsh
                !grosspay = sgross
                !sssdeduction = ssss
                !taxdeduction = swht
                !phdeduction = sph
                !loandeduction = sloans
                !netpay = snet
                .Update
            .Close
        End With
        
        Call getpay
        Call getloan
        
        If intloan = intloanpay Then
            Call dbconek
            ar.Open "Select *From loantable Where loannumber='" & slnum & "'", strConek, adOpenStatic, adLockOptimistic
                ar!paid = "YES"
                ar.Update
            ar.Close
        Else
            Call dbconek
            ar.Open "Select *From loanpayment", strConek, adOpenStatic, adLockOptimistic
                ar.AddNew
                    ar!loannumber = slnum
                    ar!payment = sloans
                    ar!employeeid = sid
                    ar!Date = Format(Date, "mm/dd/yyyy")
                ar.Update
            ar.Close
        End If
        
        If pbar.Value + (100 / lst.ListItems.Count) >= 100 Then
            pbar.Value = 100
        Else
            pbar.Value = pbar.Value + (100 / lst.ListItems.Count)
        End If
    Next
    ans = MsgBox("Payroll Successfully Saved Do you want to print it?" & vbCrLf & "If you choose NO it will be save to a file then could be print later", vbYesNo + vbQuestion, "Payroll Saved")
    If ans = vbYes Then
        Printer.Print "PAY SLIP NUMBER: " & lblid
        Printer.Print "DATE RANGE: " & txt(10) & "-" & txt(11)
        Printer.Print ""
        Printer.Print "Emp ID" & Space(8 - Len("Emp ID")) & "Employee Name" & Space(30 - Len("Employee Name")) & "RD Rate" & Space(8 - Len("RD Rate")) & "RD Hour" & Space(8 - Len("RD Hour")) & "SH Rate" & Space(8 - Len("SH Rate")) & "SH Hour" & Space(8 - Len("SH Hour")) & "OTR RD" & Space(8 - Len("OTR RD")) & "OTRD Hr." & Space(8 - Len("OTRD Hr.")) & "OTR SH" & Space(8 - Len("OTR SH")) & "OTSH Hr." & Space(8 - Len("OTSH Hr.")) & "Gross Pay" & Space(12 - Len("Gross Pay")) & "SSS" & Space(8 - Len("SSS")) & "WHT" & Space(8 - Len("WHT")) & "PHealth" & Space(8 - Len("PHealth")) & "CO. Loan" & Space(10 - Len("CO. Loan")) & "Net Pay"
        Printer.Print "------------------------------------------------------------------------------------------------------------------------------------------------------------"
        For a = 1 To lst.ListItems.Count
            sid = lst.ListItems(a).Text
            sname = lst.ListItems(a).SubItems(1)
            sraterd = lst.ListItems(a).SubItems(2)
            stotalrd = lst.ListItems(a).SubItems(3)
            sratesh = lst.ListItems(a).SubItems(4)
            stotalsh = lst.ListItems(a).SubItems(5)
            sotrd = lst.ListItems(a).SubItems(6)
            stotalotrd = lst.ListItems(a).SubItems(7)
            sotsh = lst.ListItems(a).SubItems(8)
            stotalotsh = lst.ListItems(a).SubItems(9)
            sgross = lst.ListItems(a).SubItems(10)
            ssss = lst.ListItems(a).SubItems(11)
            swht = lst.ListItems(a).SubItems(12)
            sph = lst.ListItems(a).SubItems(13)
            sloans = lst.ListItems(a).SubItems(14)
            snet = lst.ListItems(a).SubItems(15)
            
            
            Printer.Print sid & Space(8 - Len(sid)) & sname & Space(30 - Len(sname)) & sraterd & Space(8 - Len(sraterd)) & stotalrd & Space(8 - Len(stotalrd)) & sratesh & Space(8 - Len(sratesh)) & stotalsh & Space(8 - Len(stotalsh)) & sotrd & Space(8 - Len(sotrd)) & stotalotrd & Space(8 - Len(stotalrd)) & sotsh & Space(8 - Len(sotsh)) & stotalotsh & Space(8 - Len(stotalsh)) & sgross & Space(12 - Len(sgross)) & ssss & Space(8 - Len(ssss)) & swht & Space(8 - Len(swht)) & sph & Space(8 - Len(sph)) & sloans & Space(10 - Len(sloans)) & snet
                            
        Next
        Printer.Print "------------------------------------------------------------------------------------------------------------------------------------------------------------"
        Printer.Print "PREPARED BY: " & currentemmsuser
    Else
        Open App.Path & "\Payroll.txt" For Append As #1
        Print #1, "PAY SLIP NUMBER: " & lblid
        Print #1, "DATE RANGE: " & txt(10) & "-" & txt(11)
        Print #1, ""
        Print #1, "Emp ID" & Space(8 - Len("Emp ID")) & "Employee Name" & Space(30 - Len("Employee Name")) & "RD Rate" & Space(8 - Len("RD Rate")) & "RD Hour" & Space(8 - Len("RD Hour")) & "SH Rate" & Space(8 - Len("SH Rate")) & "SH Hour" & Space(8 - Len("SH Hour")) & "OTR RD" & Space(8 - Len("OTR RD")) & "OTRD Hr." & Space(8 - Len("OTRD Hr.")) & "OTR SH" & Space(8 - Len("OTR SH")) & "OTSH Hr." & Space(8 - Len("OTSH Hr.")) & "Gross Pay" & Space(12 - Len("Gross Pay")) & "SSS" & Space(8 - Len("SSS")) & "WHT" & Space(8 - Len("WHT")) & "PHealth" & Space(8 - Len("PHealth")) & "CO. Loan" & Space(10 - Len("CO. Loan")) & "Net Pay"
        Print #1, "------------------------------------------------------------------------------------------------------------------------------------------------------------"
        For a = 1 To lst.ListItems.Count
            sid = lst.ListItems(a).Text
            sname = lst.ListItems(a).SubItems(1)
            sraterd = lst.ListItems(a).SubItems(2)
            stotalrd = lst.ListItems(a).SubItems(3)
            sratesh = lst.ListItems(a).SubItems(4)
            stotalsh = lst.ListItems(a).SubItems(5)
            sotrd = lst.ListItems(a).SubItems(6)
            stotalotrd = lst.ListItems(a).SubItems(7)
            sotsh = lst.ListItems(a).SubItems(8)
            stotalotsh = lst.ListItems(a).SubItems(9)
            sgross = lst.ListItems(a).SubItems(10)
            ssss = lst.ListItems(a).SubItems(11)
            swht = lst.ListItems(a).SubItems(12)
            sph = lst.ListItems(a).SubItems(13)
            sloans = lst.ListItems(a).SubItems(14)
            snet = lst.ListItems(a).SubItems(15)
            
            
            Print #1, sid & Space(8 - Len(sid)) & sname & Space(30 - Len(sname)) & sraterd & Space(8 - Len(sraterd)) & stotalrd & Space(8 - Len(stotalrd)) & sratesh & Space(8 - Len(sratesh)) & stotalsh & Space(8 - Len(stotalsh)) & sotrd & Space(8 - Len(sotrd)) & stotalotrd & Space(8 - Len(stotalrd)) & sotsh & Space(8 - Len(sotsh)) & stotalotsh & Space(8 - Len(stotalsh)) & sgross & Space(12 - Len(sgross)) & ssss & Space(8 - Len(ssss)) & swht & Space(8 - Len(swht)) & sph & Space(8 - Len(sph)) & sloans & Space(10 - Len(sloans)) & snet
                            
        Next
        Print #1, "------------------------------------------------------------------------------------------------------------------------------------------------------------"
        Print #1, "PREPARED BY: " & currentemmsuser
        Close #1
    End If
End Sub

Private Sub Command1_Click()
    Unload Me
    LoadForm frmPayroll
End Sub

Private Sub Form_Load()
    txt(10) = Format(Date, "mm/dd/yyyy")
    txt(11) = Format(Date, "mm/dd/yyyy")
    Option1.Value = True
End Sub



Private Sub opt_Click()
On Error Resume Next
        If opt.Value = True Then
            Call dbconek
            
            ar.Open "Select *From ssstable Where salarybracket='" & lblsss(0) & "'", strConek, adOpenStatic, adLockOptimistic
                txt(2) = Format(CCur(ar!deduction), "###,##0.00")
            ar.Close
            
            ar.Open "Select *From taxtable Where salarybracket='" & lbltax(0) & "'", strConek, adOpenStatic, adLockOptimistic
                txt(3) = Format(CCur(ar!deduction), "###,##0.00")
            ar.Close
            
            ar.Open "Select *From phtable Where salarybracket='" & lblph(0) & "'", strConek, adOpenStatic, adLockOptimistic
                txt(4) = Format(CCur(ar!deduction), "###,##0.00")
            ar.Close
            
            txt(5) = "0.00"
        End If
End Sub

Private Sub optall_Click()
On Error Resume Next
        If optall.Value = True Then
            Call dbconek
            
            ar.Open "Select *From ssstable Where salarybracket='" & lblsss(0) & "'", strConek, adOpenStatic, adLockOptimistic
                txt(2) = Format(CCur(ar!deduction), "###,##0.00")
            ar.Close
            
            ar.Open "Select *From taxtable Where salarybracket='" & lbltax(0) & "'", strConek, adOpenStatic, adLockOptimistic
                txt(3) = Format(CCur(ar!deduction), "###,##0.00")
            ar.Close
            
            ar.Open "Select *From phtable Where salarybracket='" & lblph(0) & "'", strConek, adOpenStatic, adLockOptimistic
                txt(4) = Format(CCur(ar!deduction), "###,##0.00")
            ar.Close
            
            ar.Open "Select *From loantable Where loannumber='" & lblloan(0) & "'", strConek, adOpenStatic, adLockOptimistic
                txt(5) = Format(CCur(ar!deductionpermonth), "###,##0.00")
            ar.Close
        End If
        
End Sub

Private Sub Option1_Click()
    txt(2) = "0.00"
    txt(3) = "0.00"
    txt(4) = "0.00"
    txt(5) = "0.00"
End Sub

Private Sub txt_Click(Index As Integer)
    SendKeys "{end}+{home}"
End Sub

Private Sub txt_GotFocus(Index As Integer)
    SendKeys "{end}+{home}"
End Sub

Private Sub txt_KeyPress(Index As Integer, KeyAscii As Integer)
On Error Resume Next
Select Case Index
    Case 0
        If KeyAscii = 13 Then
            Call dbconek
            
            With ar
                .Open "Select *From employeemaster Where employeeid='" & txt(0) & "'", strConek, adOpenStatic, adLockOptimistic
                    txt(1) = !firstname & " " & !middlename & " " & !lastname
                    lbltax(0) = !taxbracket
                    lblsss(0) = !sssbracket
                    lblph(0) = !phbracket
                    lblrateperhour = Format(CCur(!rateperhour), "###,##0.00")
                    lblspecialrate = Format(CCur(!specialrate), "###,##0.00")
                    lblotregdays = Format(CCur(!otregdays), "###,##0.00")
                    lblotspecial = Format(CCur(!otspecial), "###,##0.00")
                    
                    txt(6).SetFocus
                .Close
            End With
        
            Call dbconek
            
            ar.Open "Select *From loantable Where employeeid='" & txt(0) & "' And paid='" & "NO" & "'", strConek, adOpenStatic, adLockOptimistic
                
                If ar.RecordCount > 1 Then
                    ar.MoveFirst
                    lblloan(0) = ar!loannumber
                ElseIf ar.RecordCount = 1 Then
                    lblloan(0) = ar!loannumber
                End If
            ar.Close
        End If
        
        KeyAscii = Asc(UCase(Chr(KeyAscii)))
    
    Case 6
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
    Case 7
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
    Case 8
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
    Case 9
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
    Case 10
        Dim sS1 As String
            If Len(txt(10)) < 2 Then
                sS1 = "0123456789" & Chr(vbKeySpace) & Chr(vbKeyBack)

                Call offDefine(KeyAscii, txt(10), sS1)
            ElseIf Len(txt(10)) = 2 Then
                sS1 = "/" & Chr(vbKeySpace) & Chr(vbKeyBack)

                Call offDefine(KeyAscii, txt(10), sS1)
            ElseIf Len(txt(10)) = 3 Then
                sS1 = "0123456789" & Chr(vbKeySpace) & Chr(vbKeyBack)

                Call offDefine(KeyAscii, txt(10), sS1)
            ElseIf Len(txt(10)) = 5 Then
                sS1 = "/" & Chr(vbKeySpace) & Chr(vbKeyBack)

                Call offDefine(KeyAscii, txt(10), sS1)
            ElseIf Len(txt(10)) = 6 Then
                sS1 = "0123456789" & Chr(vbKeySpace) & Chr(vbKeyBack)

                Call offDefine(KeyAscii, txt(10), sS1)
            End If
    Case 11
        Dim sS2 As String
            If Len(txt(11)) < 2 Then
                sS2 = "0123456789" & Chr(vbKeySpace) & Chr(vbKeyBack)

                Call offDefine(KeyAscii, txt(11), sS2)
            ElseIf Len(txt(11)) = 2 Then
                sS2 = "/" & Chr(vbKeySpace) & Chr(vbKeyBack)

                Call offDefine(KeyAscii, txt(11), sS2)
            ElseIf Len(txt(11)) = 3 Then
                sS2 = "0123456789" & Chr(vbKeySpace) & Chr(vbKeyBack)

                Call offDefine(KeyAscii, txt(11), sS2)
            ElseIf Len(txt(11)) = 5 Then
                sS2 = "/" & Chr(vbKeySpace) & Chr(vbKeyBack)

                Call offDefine(KeyAscii, txt(11), sS2)
            ElseIf Len(txt(11)) = 6 Then
                sS2 = "0123456789" & Chr(vbKeySpace) & Chr(vbKeyBack)

                Call offDefine(KeyAscii, txt(11), sS2)
            End If
End Select
End Sub

Private Sub getloan()
On Error Resume Next
    Call dbconek
            ar.Open "Select *From loantable Where employeeid='" & sid & "' And paid='" & "NO" & "'", strConek, adOpenStatic, adLockOptimistic
                
                If ar.RecordCount > 1 Then
                    ar.MoveFirst
                    intloan = ar!loanamount
                ElseIf ar.RecordCount = 1 Then
                    intloan = ar!loanamount
                End If
            ar.Close
End Sub
Private Sub getpay()
    Call dbconek
            ar.Open "Select *From loanpayment Where loannumber='" & slnum & "'", strConek, adOpenStatic, adLockOptimistic
                    
                
                    ar.MoveFirst
                    Do While Not ar.EOF
                        intloanpay = intloanpay + ar!payment
                    ar.MoveNext
                    Loop
            ar.Close
End Sub
