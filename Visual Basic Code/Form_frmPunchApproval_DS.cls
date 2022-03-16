VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_frmPunchApproval_DS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Option Compare Database

Private Sub Entered_By_DblClick(Cancel As Integer)
Application.FollowHyperlink "mailto:" & [Entered_By] & "@cpchem.com"
End Sub

Private Sub Approved_By_DblClick(Cancel As Integer)
Application.FollowHyperlink "mailto:" & [Approved_By] & "@cpchem.com"
End Sub
Private Sub Status_AfterUpdate()
   If Me.Status = "Open" Then
   Me.Approved_By = Environ("UserName")
   Else
   Me.Approved_By = ""
   End If
End Sub


