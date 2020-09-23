VERSION 5.00
Begin VB.Form frmLines 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   Caption         =   "Lines"
   ClientHeight    =   5430
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5595
   LinkTopic       =   "Form1"
   ScaleHeight     =   6500
   ScaleMode       =   0  'User
   ScaleWidth      =   6500
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   1530
      Top             =   3810
   End
   Begin VB.Label LBL 
      Caption         =   "0"
      Height          =   270
      Left            =   435
      TabIndex        =   0
      Top             =   1410
      Visible         =   0   'False
      Width           =   390
   End
End
Attribute VB_Name = "frmLines"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim A

Private Sub Form_Load()
    frmRemote.Show
    frmRemote.Move 12000 - frmRemote.Width, 0
End Sub

Private Sub Timer1_Timer()
    'On Error GoTo Zoroer
    LBL = LBL + 1
    A = Int(LBL)
    
    Select Case Me.Tag
        Case "1"
            Me.Line (0, A * 100)-(A * 100, 6500), vbBlue
            Me.Line (6500, A * 100)-(A * 100, 0), vbBlue
            Me.Line (6500, A * 100)-(6500 - A * 100, 6500), vbBlue
            Me.Line (6500 - A * 100, 0)-(0, A * 100), vbBlue
        Case "2"
            Me.Line (6500, A * 100)-(0, 6500 - A * 100), vbBlue
            Me.Line (A * 100, 6500)-(6500 - A * 100, 0), vbBlue
        Case "3"
            Me.Line (6500, Tan(A * 100))-(0, 6500 - A * 100), vbBlue
            Me.Line (Tan(A * 100), 6500)-(6500 - A * 100, 0), vbBlue
            Me.Line (0, Tan(A * 100))-(6500, Tan(A * 100)), vbBlue
            Me.Line (Tan(A * 100), 0)-(Tan(A * 100), 6500), vbBlue
        Case "4"
            Me.Line (A * 100, 0)-(6500 - A * 100, 6500 - A * 100), vbBlue
            Me.Line (0, A * 100)-(6500 - A * 100, 6500 - A * 100), vbBlue
        Case "5"
            Me.Line (6500 - A * 100, 0)-(6500 - A * 100, 6500 - A * 100), vbBlue
            Me.Line (0, 6500 - A * 100)-(6500 - A * 100, 6500 - A * 100), vbBlue
        Case "6"
            Me.Line (6500 - A * 100, 6500 - A * 100)-(A * 100, 6500 - A * 100), vbBlue
            Me.Line (6500 - A * 100, A * 100)-(6500 - A * 100, 6500 - A * 100), vbBlue
        Case "7"
            Me.Line (A * 100, A * 100)-(0 - A * 100, 6500 - A * 100), vbBlue
        Case "8"
            Me.Line (Tan(A) * 100, A * 100)-(0, A * 100), vbBlue
        Case "9"
            Me.Line (6500 / 2, A * 100)-(A * 100, A * 100), vbBlue
        Case "10"
            Me.Line (6500 / 2, 0)-(Tan(A) * 100, 6500), vbBlue
        Case "11"
            Me.Line (A * 100, 0)-(A * 100, 6500), vbBlue
            Me.Line (0, A * 100)-(6500, A * 100), vbBlue
        Case "12"
            Me.Line (A * 100, 0)-(0, A * 100), vbBlue
            Me.Line (6500 - A * 100, 0)-(A * 100, 6500), vbBlue
        Case "13"
            Me.Line (A * 100, 0)-(0, A * 100), vbBlue
            Me.Line (6500 - A * 100, 0)-(6500, A * 100), vbBlue
            Me.Line (A * 100, 0)-(A * 100, 6500), vbBlue
            Me.Line (0, A * 100)-(6500, A * 100), vbBlue
    End Select
End Sub
