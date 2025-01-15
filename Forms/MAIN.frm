VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.MDIForm frmMAIN 
   Appearance      =   0  'Flat
   BackColor       =   &H00ECF4F4&
   Caption         =   "SUPERMARKET"
   ClientHeight    =   10710
   ClientLeft      =   165
   ClientTop       =   825
   ClientWidth     =   15240
   Icon            =   "MAIN.frx":0000
   LinkTopic       =   "MDIForm1"
   Moveable        =   0   'False
   Picture         =   "MAIN.frx":06EA
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin ComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   840
      Left            =   0
      TabIndex        =   0
      Top             =   15
      Width           =   15240
      _ExtentX        =   26882
      _ExtentY        =   1482
      ButtonWidth     =   2011
      ButtonHeight    =   1376
      ImageList       =   "ImageList1"
      _Version        =   327682
      BeginProperty Buttons {0713E452-850A-101B-AFC0-4210102A8DA7} 
         NumButtons      =   10
         BeginProperty Button1 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Products"
            Object.ToolTipText     =   "Shenimet e Artikujve"
            Object.Tag             =   ""
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Category"
            Key             =   "Katgorizimi i artikujve"
            Object.ToolTipText     =   "Kategoritë e Artikujve"
            Object.Tag             =   ""
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Suppliers"
            Key             =   "Shenimet e furnizuesve"
            Object.ToolTipText     =   "Furnizuesit e Mallrave"
            Object.Tag             =   ""
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Delivery"
            Key             =   "Rikthimi i artikujve"
            Object.ToolTipText     =   "Hyrja e Mallit"
            Object.Tag             =   ""
            ImageIndex      =   17
         EndProperty
         BeginProperty Button5 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Delivery list"
            Key             =   "Porositja e mallrave"
            Object.ToolTipText     =   "Lista e Fakturave te pranuara"
            Object.Tag             =   ""
            ImageIndex      =   14
         EndProperty
         BeginProperty Button6 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Expenses"
            Object.ToolTipText     =   "Shpenzimet e bera"
            Object.Tag             =   ""
            ImageIndex      =   16
         EndProperty
         BeginProperty Button7 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Bank accounts"
            Key             =   "Shtypja e Raporteve"
            Object.ToolTipText     =   "Shenimet e Bankave"
            Object.Tag             =   ""
            ImageIndex      =   22
         EndProperty
         BeginProperty Button8 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Reports"
            Key             =   "Rreth programit"
            Object.ToolTipText     =   "Raportet e Shitblerjes"
            Object.Tag             =   ""
            ImageIndex      =   12
         EndProperty
         BeginProperty Button9 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "About"
            Key             =   "Mbyllja e programit"
            Object.ToolTipText     =   "Rreth programit"
            Object.Tag             =   ""
            ImageIndex      =   10
         EndProperty
         BeginProperty Button10 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Exit"
            Object.ToolTipText     =   "Mbyllja e Programit"
            Object.Tag             =   ""
            ImageIndex      =   11
         EndProperty
      EndProperty
   End
   Begin VB.PictureBox Picture2 
      Align           =   1  'Align Top
      BackColor       =   &H00808080&
      Height          =   320
      Left            =   0
      ScaleHeight     =   255
      ScaleWidth      =   15180
      TabIndex        =   3
      Top             =   855
      Width           =   15240
   End
   Begin VB.PictureBox Picture1 
      Align           =   1  'Align Top
      BackColor       =   &H00808080&
      Height          =   15
      Left            =   0
      ScaleHeight     =   15
      ScaleWidth      =   15240
      TabIndex        =   2
      Top             =   0
      Width           =   15240
   End
   Begin ComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   10335
      Width           =   15240
      _ExtentX        =   26882
      _ExtentY        =   661
      SimpleText      =   ""
      _Version        =   327682
      BeginProperty Panels {0713E89E-850A-101B-AFC0-4210102A8DA7} 
         NumPanels       =   8
         BeginProperty Panel1 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Bevel           =   0
            Object.Width           =   1764
            MinWidth        =   1764
            Text            =   "Username:"
            TextSave        =   "Username:"
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel2 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Object.Width           =   5292
            MinWidth        =   5292
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel3 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Object.Width           =   3528
            MinWidth        =   3528
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel4 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Bevel           =   0
            Object.Width           =   1058
            MinWidth        =   1058
            Text            =   "Date:"
            TextSave        =   "Date:"
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel5 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Style           =   6
            TextSave        =   "09/06/2009"
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel6 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Bevel           =   0
            Object.Width           =   882
            MinWidth        =   882
            Text            =   "Hour:"
            TextSave        =   "Hour:"
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel7 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Style           =   5
            TextSave        =   "2:34 AM"
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel8 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Object.Width           =   4410
            MinWidth        =   4410
            Text            =   "www.smart-it-solution.tk"
            TextSave        =   "www.smart-it-solution.tk"
            Object.Tag             =   ""
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   1320
      Top             =   1200
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin ComctlLib.ImageList ImageList1 
      Left            =   720
      Top             =   1200
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   16711935
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   22
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":15E17
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":16A69
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":176BB
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":1830D
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":18F5F
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":19BB1
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":1A803
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":1B455
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":1C0A7
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":1CCF9
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":1D94B
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":1E59D
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":1F1EF
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":1FE41
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":20A93
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":216E5
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":22337
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":22F89
            Key             =   ""
         EndProperty
         BeginProperty ListImage19 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":23BDB
            Key             =   ""
         EndProperty
         BeginProperty ListImage20 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":2482D
            Key             =   ""
         EndProperty
         BeginProperty ListImage21 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":2547F
            Key             =   ""
         EndProperty
         BeginProperty ListImage22 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "MAIN.frx":260D1
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Menu f 
      Caption         =   "File"
      Begin VB.Menu mnushitja 
         Caption         =   "SALES"
      End
      Begin VB.Menu sep234 
         Caption         =   "-"
      End
      Begin VB.Menu op 
         Caption         =   "Final Bilance"
      End
      Begin VB.Menu fdg 
         Caption         =   "Products"
         Begin VB.Menu new_add 
            Caption         =   "Product details"
         End
      End
      Begin VB.Menu sep34 
         Caption         =   "-"
      End
      Begin VB.Menu mnupastro 
         Caption         =   "Clear Records"
      End
      Begin VB.Menu mnukomp 
         Caption         =   "Company Setup"
      End
      Begin VB.Menu sep221 
         Caption         =   "-"
      End
      Begin VB.Menu mnuconfig 
         Caption         =   "Cashier Setup"
      End
      Begin VB.Menu mnuprin 
         Caption         =   "Select printer"
      End
      Begin VB.Menu sepoo6 
         Caption         =   "-"
      End
      Begin VB.Menu mnuLock 
         Caption         =   "Lock PC"
         Shortcut        =   ^X
      End
      Begin VB.Menu daljaaaa 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu trans 
      Caption         =   "Transactions"
      Begin VB.Menu PO 
         Caption         =   "Delivery"
         Shortcut        =   ^P
      End
      Begin VB.Menu RO 
         Caption         =   "Delivery list"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnushp 
         Caption         =   "Expense"
      End
      Begin VB.Menu mnudepozitimi 
         Caption         =   "Bank Deposit"
      End
      Begin VB.Menu mnuterheqje 
         Caption         =   "Bank withdrawal"
      End
   End
   Begin VB.Menu mnuShenimet 
      Caption         =   "Database"
      Begin VB.Menu mnk 
         Caption         =   "Clients"
         Begin VB.Menu mnuklientsh 
            Caption         =   "Clients details"
         End
         Begin VB.Menu mnuklientkart 
            Caption         =   "Clients account"
         End
      End
      Begin VB.Menu mnufur 
         Caption         =   "Suppliers"
         Begin VB.Menu NS 
            Caption         =   "Suppliers account"
         End
         Begin VB.Menu mnufurkart 
            Caption         =   "Supplier details"
         End
      End
      Begin VB.Menu NC 
         Caption         =   "Products category"
      End
      Begin VB.Menu mnukkk 
         Caption         =   "Expenses category"
      End
   End
   Begin VB.Menu r 
      Caption         =   "Reports"
      Begin VB.Menu ssssss 
         Caption         =   "Sales report"
         Begin VB.Menu dit 
            Caption         =   "Daily report"
         End
         Begin VB.Menu SIR 
            Caption         =   "Periodic report"
         End
         Begin VB.Menu para 
            Caption         =   "Sales report by Employee"
         End
         Begin VB.Menu rptditor2 
            Caption         =   "Daily report"
            Visible         =   0   'False
         End
         Begin VB.Menu rptgjeneral2 
            Caption         =   "Periodic report"
            Visible         =   0   'False
         End
         Begin VB.Menu rptpunetoret2 
            Caption         =   "Report by employee"
            Visible         =   0   'False
         End
      End
      Begin VB.Menu rptfur 
         Caption         =   "Delivery report"
         Begin VB.Menu rptditorfur 
            Caption         =   "Daily report"
         End
         Begin VB.Menu rptperidoik 
            Caption         =   "Periodic report"
         End
      End
      Begin VB.Menu shraport 
         Caption         =   "Expenses report"
         Begin VB.Menu mnushditore 
            Caption         =   "Daily report"
         End
         Begin VB.Menu mnushmujore 
            Caption         =   "Monthly report"
         End
      End
      Begin VB.Menu mnulista 
         Caption         =   "Products list"
      End
   End
   Begin VB.Menu His 
      Caption         =   "LOG"
      Begin VB.Menu sssst1 
         Caption         =   "Products out of stock"
      End
   End
   Begin VB.Menu U 
      Caption         =   "Users"
      Begin VB.Menu NU 
         Caption         =   "User accounts"
         Shortcut        =   ^{F4}
      End
      Begin VB.Menu sep456 
         Caption         =   "-"
      End
      Begin VB.Menu infolog 
         Caption         =   "LOG"
      End
   End
   Begin VB.Menu bck 
      Caption         =   "Backup"
      Begin VB.Menu setbck 
         Caption         =   "Backup"
      End
      Begin VB.Menu mnurestore 
         Caption         =   "Restore"
      End
   End
   Begin VB.Menu a 
      Caption         =   "Help"
      Begin VB.Menu mnundihmaaaa 
         Caption         =   "Index"
      End
      Begin VB.Menu aaa 
         Caption         =   "About..."
         Shortcut        =   {F1}
      End
   End
End
Attribute VB_Name = "frmMAIN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function InitCommonControls Lib "comctl32.dll" () As Long

Private Sub aaa_Click()
frmAbout.Show 1
End Sub

Private Sub aaaa1_Click()
report1.Show 1
End Sub

Private Sub aaaaaa2_Click()
report2.Show 1
End Sub

Private Sub ar1_Click()
frmShitja1.Show 1
End Sub

Private Sub ar2_Click()
frmShitja2.Show 1
End Sub

Private Sub aaaaaa_Click()
LoadForm ReportCase
End Sub

Private Sub art_edit_Click()
frmItem.Show 1
End Sub

Private Sub bar_Click()
Set db = New Connection
db.CursorLocation = adUseClient
db.Open "PROVIDER=MSDataShape;Data PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\dbase.db;" & ";Persist Security Info=False;Jet OLEDB:Database Password=cc03bn01"
Set adoAgentet = New Recordset
adoAgentet.Open "select * from tblArtikujt order by pershkrimi ASC;", db, adOpenStatic, adLockOptimistic
Set rptQmimorja.DataSource = adoAgentet
rptQmimorja.Show 1
End Sub

Private Sub bbbb1_Click()
        historyflag = 3
        Unload frmHistoryReports
        Load frmHistoryReports
        frmHistoryReports.Show
End Sub

Private Sub BUD_Click()
CommonDialog1.Filename = ""
CommonDialog1.Filter = "Skedarë Rezervë (*.bck) |*.bck|"
CommonDialog1.ShowSave
If CommonDialog1.Filename <> "" Then
If FileLen(App.Path & "\Data\dbase.db") > 1210000 And Mid(CommonDialog1.Filename, 1, 1) = "A" Then
MsgBox "Baza është më e madhe se Floppy Disku.", vbOKOnly + vbCritical
Else
FileCopy (App.Path & "\Data\dbase.db"), CommonDialog1.Filename
MsgBox "Rezervimi i Kompletuar", vbOKOnly + vbCritical
End If
End If
Exit Sub
End Sub



Private Sub cs1_Click()
LoadForm ReportSales
End Sub




Private Sub CN_Click()

End Sub



Private Sub CS_Click()

End Sub

Private Sub daljaaaa_Click()
Unload Me
End Sub

Private Sub fffff_Click()
frmFilter.Show 1
End Sub

Private Sub dit_Click()
RaportiDitor.Show 1
End Sub

Private Sub fil_Click()
frmFilteri.Show 1
End Sub

Private Sub infolog_Click()
frmLOG.Show 1
End Sub

Private Sub lllllll_Click()
frmLista.Show 1
End Sub

Private Sub MDIForm_Initialize()
InitCommonControls
End Sub

Private Sub MDIForm_Load()
Me.StatusBar1.Panels(2).Text = currentemmsuser
Me.StatusBar1.Panels(3).Text = CurrentPosition
End Sub

Private Sub MDIForm_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Dim repp As Integer
repp = MsgBox("Are you sure you want to exit?", vbExclamation + vbYesNo, "Smart POS")
If repp = vbNo Then
Cancel = 1
End If
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
End
End Sub

Private Sub mmmm_Click()
report1.Show 1
End Sub

Private Sub mnuconfig_Click()
frmKonfigurimi.Show 1
End Sub

Private Sub mnudepozitimi_Click()
frmDepozitimi.Show 1
End Sub

Private Sub mnufurkart_Click()
frmFurnitorKart.Show 1
End Sub

Private Sub mnukkk_Click()
frmKatShpenzimet.Show 1
End Sub

Private Sub mnuklientkart_Click()
frmKlientKart.Show 1
End Sub

Private Sub mnuklientsh_Click()
LoadForm frmKlientLista
End Sub

Private Sub mnukomp_Click()
frmKompania.Show 1
End Sub

Private Sub mnulista_Click()
frmLista.Show 1
End Sub

Private Sub mnulistfat_Click()
frmFatLista.Show 1
End Sub

Private Sub mnuLock_Click()
'Shell App.Path & "\pclock.exe", vbNormalFocus
frmLock.Show 1
End Sub

Private Sub mnundihmaaaa_Click()
Dim strHFile As String
strHFile = App.Path & "\ndihma.chm"
ShellExecute Me.hwnd, "open", strHFile, "", "", vbMaximizedFocus
End Sub

Private Sub mnupastro_Click()
frmPastrimi.Show 1
End Sub

Private Sub mnuprin_Click()
frmPrinteri.Show 1
End Sub

Private Sub mnurrr_Click()
frmRaportet.Show 1
End Sub

Private Sub mnurestore_Click()
frmRestore.Show 1
End Sub

Private Sub mnuripa_Click()
Shell App.Path & "\dbriparimi.exe", vbHide
End Sub

Private Sub mnushditore_Click()
frmShpenzimReport.Label3.Caption = "ditore"
frmShpenzimReport.txtmuaji.Visible = False
frmShpenzimReport.Label4.Visible = False
frmShpenzimReport.txtviti.Visible = False
frmShpenzimReport.txtdata.Visible = True
frmShpenzimReport.Label1.Caption = "Report for date:"
frmShpenzimReport.txtdata.Text = Format(Now, "mm/dd/yyyy")
frmShpenzimReport.Show 1
End Sub

Private Sub mnushitja_Click()
frmShitja.Show 1
End Sub

Private Sub mnushmujore_Click()
frmShpenzimReport.Label3.Caption = "mujore"
frmShpenzimReport.txtmuaji.Visible = True
frmShpenzimReport.txtviti.Visible = True
frmShpenzimReport.txtdata.Visible = False
frmShpenzimReport.Show 1
End Sub

Private Sub mnushp_Click()
LoadForm frmShpenzimet
End Sub

Private Sub mnuterheqje_Click()
frmTerheqja.Show 1
End Sub

Private Sub NC_Click()
LoadForm frmMMSCategory
End Sub


Private Sub new_add_Click()
frmArtLista.Show 1
End Sub

Private Sub NS_Click()
    LoadForm frmMMSSupplier
End Sub

Private Sub NU_Click()
LoadForm frmUser
End Sub


Private Sub op_Click()
frmBilanci.Show 1
End Sub

Private Sub pagggg_Click()
LoadForm frmFaturat
End Sub

Private Sub para_Click()
ReportCase.Show 1
End Sub

Private Sub Picture2_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button And vbRightButton _
Then PopupMenu manual
End Sub

Private Sub PO_Click()
LoadForm frmFurnizimi
End Sub

Private Sub pppp1_Click()
        historyflag = 2
        Unload frmHistoryReports
        Load frmHistoryReports
        frmHistoryReports.Show
End Sub

Private Sub PR_Click()
        historyflag = 2
        Unload frmHistoryReports
        Load frmHistoryReports
        frmHistoryReports.Show

End Sub


Private Sub RD_Click()
    On Error GoTo RestoreError
    Dim Ans
    CommonDialog1.Filter = "Backup file (*.bck) |*.bck|"
    CommonDialog1.ShowOpen
    If CommonDialog1.Filename <> "" Then
        Ans = MsgBox("Are you sure you want to restore database", vbExclamation + vbYesNo, " Warning:End-User")
        If Ans = vbYes Then
            FileCopy CommonDialog1.Filename, App.Path + "\Data\dbase.db"
            MsgBox "Restore completed.", vbOKOnly + vbCritical, " Warning:End-User"
        End If
    End If
    Exit Sub
RestoreError:
  MsgBox err.Description, vbOKOnly + vbCritical, " Warning:End-User"
End Sub


Private Sub rrrr1_Click()
        historyflag = 4
        Unload frmHistoryReports
        Load frmHistoryReports
        frmHistoryReports.Show

End Sub




Private Sub tbMenu_ButtonClick(ByVal Button As MSComctlLib.Button)
'On Error Resume Next
Select Case Button.Index
    Case 1
        historyflag = 4
        Unload frmHistoryReports
        Load frmHistoryReports
        frmHistoryReports.Show
    Case 2
        historyflag = 3
        Unload frmHistoryReports
        Load frmHistoryReports
        frmHistoryReports.Show
    Case 3
        historyflag = 2
        Unload frmHistoryReports
        Load frmHistoryReports
        frmHistoryReports.Show
    Case 4: frmos.Show
    Case 5
        historyflag = 1
        Unload frmHistoryReports
        Load frmHistoryReports
        frmHistoryReports.Show
    Case 6
        Open App.Path & "\Loan.txt" For Output As #1
                        Print #1, ""
                    Close #1
                    
        historyflag = 5
                    
                
        
        Call dbconek
        With ar
            .Open "Select *From loantable", strConek, adOpenStatic, adLockOptimistic
                .MoveFirst
                Open App.Path & "\Loan.txt" For Append As #1
                    Print #1, "Loan ID" & Space(15 - Len("Loan ID")) & "Emp ID" & Space(15 - Len("Emp ID")) & "Employee Name" & Space(40 - Len("Employee Name")) & "Loan Amount" & Space(15 - Len("Loan Amount")) & "Term" & Space(15 - Len("Term")) & "Deduction" & Space(15 - Len("Deduction")) & "Paid"
                    Print #1, ""
                    Print #1, "-----------------------------------------------------------------------------------------------------------------------------"
                Close #1
                Do While Not .EOF
                    Open App.Path & "\Loan.txt" For Append As #1
                    Print #1, !loannumber & Space(15 - Len(!loannumber)) & !employeeid & Space(15 - Len(!employeeid)) & !employeename & Space(40 - Len(!employeename)) & Format(CCur(!loanamount), "###,###,##0.00") & Space(15 - Len(Format(CCur(!loanamount), "###,###,##0.00"))) & !loanterm & Space(15 - Len(!loanterm)) & Format(CCur(!deductionpermonth), "###,###,##0.00") & Space(15 - Len(Format(CCur(!deductionpermonth), "###,###,##0.00"))) & !paid
                    Close #1
                    .MoveNext
                Loop
                
            .Close
        End With
        
        Unload frmHistoryReports
        Load frmHistoryReports
        frmHistoryReports.Show
    Case 7: frmAbout.Show 1
    Case 8: Unload Me
        
End Select
End Sub




Private Sub RO_Click()
LoadForm frmFaturat
End Sub

Private Sub rptditor2_Click()
RaportiDitor2.Show 1
End Sub

Private Sub rptditorfur_Click()
Form1.Caption = "Delivery report"
Form1.Show
End Sub

Private Sub rptgjeneral2_Click()
ReportSales2.Show 1
End Sub

Private Sub rptperidoik_Click()
frmFur_Per.Show 1
End Sub

Private Sub rptpunetoret2_Click()
ReportCase2.Show 1
End Sub

Private Sub setbck_Click()
frmBackupOptions.Show 1
End Sub

Private Sub SIR_Click()
LoadForm ReportSales
End Sub

Private Sub ssss_Click()
frmInfo.Show 1
End Sub

Private Sub sssst1_Click()
frmos.Show
End Sub



Private Sub Toolbar1_ButtonClick(ByVal Button As ComctlLib.Button)
Select Case Button.Index
Case 1: frmArtLista.Show 1
Case 2: LoadForm frmMMSCategory
Case 3: PopupMenu mnufur, , Button.Left, (Button.Top + Button.height)
Case 4: LoadForm frmFurnizimi
Case 5: LoadForm frmFaturat
Case 6: LoadForm frmShpenzimet
Case 7: frmBankLista.Show 1
Case 8: PopupMenu r, , Button.Left, (Button.Top + Button.height)
Case 9: frmAbout.Show 1
Case 10: Unload Me
End Select
End Sub

Private Sub vatv_Click()
frmVat.Show 1
End Sub
