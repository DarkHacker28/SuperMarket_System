Attribute VB_Name = "LCD_Module"
Option Explicit

Public Const CUSTOM0 = 0
Public Const CUSTOM1 = 1
Public Const CUSTOM2 = 2
Public Const CUSTOM3 = 3
Public Const CUSTOM4 = 4
Public Const CUSTOM5 = 5
Public Const CUSTOM6 = 6
Public Const CUSTOM7 = 7

Public Const LCD_HOME = 11
Public Const LCD_CLR = 12
Public Const NEXT_LINE = 13
Public Const BACKSPACE = 14
Public Const CUR_LEFT = 15
Public Const CUR_RIGHT = 16
Public Const U_CUR = 17
Public Const B_CUR = 18
Public Const HIDE_CUR = 19
Public Const BACKLIGHT_ON = 20
Public Const BACKLIGHT_OFF = 21
Public Const INIT_HGRAPH = 22
Public Const INIT_VGRAPH = 23
Public Const INIT_CUSTOM = 24
Public Const INIT_LARGE_FONT = 25

Public Const READ_INPUT = 26
Public Const READ_PORT1 = 27
Public Const READ_PORT2 = 28
Public Const READ_PORT3 = 29
Public Const READ_PORT4 = 30


Public txbuff As String
Public Sub LCD_Command(Command As Integer)

Select Case Command
    Case 11
        txbuff = Chr$(11)       'Send Cursor Home
    Case 12
        txbuff = Chr$(13)       'Clear LCD and Send Cursor Home
    Case 13
        txbuff = Chr$(12)       'Move Cursor to the Next Line
    Case 14
        txbuff = Chr$(8)        'Backspace
    Case 15
        txbuff = Chr$(14)       'Cursor Left
    Case 16
        txbuff = Chr$(15)       'Cursor Right
    Case 17
        txbuff = Chr$(254) & Chr$(1)       'Show Underlined Cursor
    Case 18
        txbuff = Chr$(254) & Chr$(2)       'Show Blinking Cursor
    Case 19
        txbuff = Chr$(254) & Chr$(3)       'Hide Cursor
    Case 20
        txbuff = Chr$(254) & Chr$(6)       'Turn On LCD Backlight
    Case 21
        txbuff = Chr$(254) & Chr$(7)       'Turn Off LCD Backlight
    Case 22
        txbuff = Chr$(254) & Chr$(4)       'Initialize Horizontal Graph
    Case 23
        txbuff = Chr$(254) & Chr$(5)       'Initialize Vertical Graph
    Case 24
        txbuff = Chr$(254) & Chr$(8)       'Initialize Custom Characters
    Case 25
        txbuff = Chr$(254) & Chr$(9)       'Initialize Large Numeric Fonts
    Case Else
        
    End Select
        
End Sub

Public Sub Set_Backlight_Level(B As Byte)

    txbuff = Chr$(254) & Chr$(40) & Chr(B)
    
End Sub

Public Sub Set_Backlight_AutoOff(I As Byte)

    txbuff = Chr$(254) & Chr$(41) & Chr(I)
    
End Sub

Public Sub Set_Cursor_Position(row As Byte, column As Byte)

    txbuff = Chr$(254) & Chr$(50) & Chr(row) & Chr(column)
    
End Sub

Public Sub Show_Saved_Screen(Page As Byte)

    txbuff = Chr$(254) & Chr$(42) & Chr(Page)
    
End Sub

Public Sub Left_Graph(Length As Byte)

    txbuff = Chr$(254) & Chr$(43) & Chr(Length)

End Sub

Public Sub Right_Graph(Length As Byte)

    txbuff = Chr$(254) & Chr$(44) & Chr(Length)

End Sub

Public Sub Vertical_Graph(column As Byte, height As Byte)

    txbuff = Chr$(254) & Chr$(43) & Chr(column) & Chr(height)

End Sub
Public Sub Clear_Row(row As Byte)

    txbuff = Chr$(254) & Chr$(45) & Chr(row)

End Sub
Public Sub Clear_Column(column As Byte)

    txbuff = Chr$(254) & Chr$(46) & Chr(column)

End Sub
Public Sub Set_Outputs(Out As Byte)

    txbuff = Chr$(254) & Chr$(47) & Chr(Out)

End Sub
Public Sub Send_Large_Font(digit As String)

     
    If Len(digit) = 1 Then
        txbuff = Chr$(254) & Chr$(52) & "3" & digit
    End If
    
    If Len(digit) = 2 Then
        txbuff = Chr$(254) & Chr$(52) & "3" & Right(digit, 1) & Chr$(254) & Chr$(52) & "2" & Left(digit, 1)
    End If
    
    If Len(digit) = 3 Then
        txbuff = Chr$(254) & Chr$(52) & "1" & Left(digit, 1) & Chr$(254) & Chr$(52) & "3" & Right(digit, 1) & Chr$(254) & Chr$(52) & "2" & Mid(digit, 2, 1)
    End If
    
    If Len(digit) = 4 Then
        txbuff = Chr$(254) & Chr$(52) & "3" & Right(digit, 1) & Chr$(254) & Chr$(52) & "0" & Left(digit, 1) & Chr$(254) & Chr$(52) & "1" & Mid(digit, 2, 1) & Chr$(254) & Chr$(52) & "2" & Mid(digit, 3, 1)
    End If
    
End Sub

Public Sub Read_Port(port As Integer)

    Select Case port
        Case 26
        txbuff = Chr$(254) & Chr$(10)
        Case 27
        txbuff = Chr$(254) & Chr$(11)
        Case 28
        txbuff = Chr$(254) & Chr$(12)
        Case 29
        txbuff = Chr$(254) & Chr$(13)
    End Select
        

End Sub




