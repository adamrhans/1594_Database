VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_frmEquipment"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Form_Load()
Me.cboEquipmentSearch.SetFocus
Me.cboEquipmentSearch.Requery
Me.cboEquipmentSearch = Null

End Sub

Private Sub P__ID_Number_DblClick(Cancel As Integer)
Dim File As String
File = "http://cpamced-web1.am.cpchem.net/cadviewer/webpage/SHOWDOC.ASP?" & [P&&ID Number]
Application.FollowHyperlink File
End Sub
