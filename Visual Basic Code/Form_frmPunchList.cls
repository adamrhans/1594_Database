VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_frmPunchList"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Option Compare Database

Private Sub Approved_By_DblClick(Cancel As Integer)
Application.FollowHyperlink "mailto:" & [Approved_By] & "@cpchem.com"
End Sub

Private Sub btnClearForm_Click()
Me.cboSystem = Null
Me.cboEquipment = Null
Me.cboArea = Null
Me.Discipline = Null
Me.Priority = Null
Me.Description = Null
Me.Status = Null
Me.Date_Opened = Null
Me.Entered_By = Null


End Sub

Private Sub cboSystem_AfterUpdate()
Me.Status = "Awaiting Approval"
Me.Date_Opened = Date
Me.Entered_By = Environ("username")
Me.cboP_ID.Requery
End Sub

Private Sub Closed_By_DblClick(Cancel As Integer)
Application.FollowHyperlink "mailto:" & [Closed_By] & "@cpchem.com"
End Sub

Private Sub Entered_By_DblClick(Cancel As Integer)
Application.FollowHyperlink "mailto:" & [Entered_By] & "@cpchem.com"
End Sub

Private Sub btnNavNewPunch_Click()
DoCmd.GoToRecord , , acNewRec
End Sub

