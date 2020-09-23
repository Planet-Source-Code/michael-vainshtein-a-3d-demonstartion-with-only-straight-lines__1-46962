VERSION 5.00
Begin VB.Form frmRemote 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Remote"
   ClientHeight    =   6090
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2370
   Icon            =   "frmRemote.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   6090
   ScaleWidth      =   2370
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame fraChoose 
      Caption         =   "Choose:"
      Height          =   5790
      Left            =   120
      TabIndex        =   0
      Top             =   150
      Width           =   2085
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 13"
         Height          =   270
         Index           =   13
         Left            =   195
         TabIndex        =   14
         Top             =   5535
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 12"
         Height          =   270
         Index           =   12
         Left            =   195
         TabIndex        =   13
         Top             =   5190
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 11"
         Height          =   270
         Index           =   11
         Left            =   195
         TabIndex        =   12
         Top             =   4785
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 10"
         Height          =   270
         Index           =   10
         Left            =   195
         TabIndex        =   11
         Top             =   4455
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 8"
         Height          =   270
         Index           =   8
         Left            =   195
         TabIndex        =   10
         Top             =   3900
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 9"
         Height          =   270
         Index           =   9
         Left            =   195
         TabIndex        =   9
         Top             =   4170
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 7"
         Height          =   270
         Index           =   7
         Left            =   195
         TabIndex        =   8
         Top             =   3555
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 6"
         Height          =   270
         Index           =   6
         Left            =   195
         TabIndex        =   7
         Top             =   3120
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 5"
         Height          =   270
         Index           =   5
         Left            =   195
         TabIndex        =   6
         Top             =   2715
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 4"
         Height          =   270
         Index           =   4
         Left            =   195
         TabIndex        =   5
         Top             =   2300
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 3"
         Height          =   270
         Index           =   3
         Left            =   195
         TabIndex        =   4
         Top             =   1875
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 2"
         Height          =   270
         Index           =   2
         Left            =   195
         TabIndex        =   3
         Top             =   1365
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "Demonstration 1"
         Height          =   270
         Index           =   1
         Left            =   195
         TabIndex        =   2
         Top             =   840
         Width           =   1695
      End
      Begin VB.CommandButton cmdDemo 
         Caption         =   "No demonstration"
         Height          =   270
         Index           =   0
         Left            =   195
         TabIndex        =   1
         Top             =   390
         Width           =   1695
      End
   End
End
Attribute VB_Name = "frmRemote"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim A

Private Sub Command2_Click()

End Sub

Private Sub Form_Load()
    cmdDemo_Click (0)
    For A = 1 To cmdDemo.UBound
        cmdDemo(A).Top = cmdDemo(A - 1).Top + cmdDemo(A - 1).Height + 100
    Next
End Sub

Private Sub cmdDemo_Click(Index As Integer)
    frmLines.Cls
    frmLines.Tag = Index
    frmLines.LBL.Caption = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub
