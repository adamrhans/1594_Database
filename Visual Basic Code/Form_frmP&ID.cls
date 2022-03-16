VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_frmP&ID"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Option Compare Database

Private Sub Form_Load()
Me.cboP_ID.SetFocus
Me.cboP_ID.Requery
Me.cboP_ID = Null
End Sub

Private Sub P__ID_Number_Click()
Dim File As String
File = "http://cpamced-web1.am.cpchem.net/cadviewer/webpage/SHOWDOC.ASP?" & [P&&ID Number]
Application.FollowHyperlink File
End Sub
