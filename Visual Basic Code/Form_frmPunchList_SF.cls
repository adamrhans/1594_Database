VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_frmPunchList_SF"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Option Compare Database

Private Sub Approved_By_DblClick(Cancel As Integer)
Application.FollowHyperlink "mailto:" & [Approved_By] & "@cpchem.com"
End Sub

Private Sub btnPunchFilter_Click()
DoCmd.RunCommand acCmdFilterByForm
End Sub


Private Sub btnFilterReport_Click()
DoCmd.OpenReport "rptFilteredReporting", acPreview
If Me.FilterOn Then
  With Reports![rptFilteredReporting]
    .Filter = Me.Filter  'Use the filter from the calling form.
    .FilterOn = True
  End With
End If
End Sub

Private Sub cboStatus_AfterUpdate()
 If Me.Status = "Open" Then
    Me.Approved_By = Environ("UserName")
 End If
 If Me.Status = "Closed" Then
    Me.Closed_By = Environ("username")
    Me.Date_Closed = Date
 Else
    Me.Closed_By = ""
    Me.Date_Closed = ""
 End If
 If Me.Status = "Awaiting Approval" Then
    Me.Approved_By = ""
 End If
 If Me.Status = "Delete" Then
 Me.Approved_By = ""
 Me.Closed_By = ""
 Me.Date_Closed = ""
 End If
End Sub


Private Sub Closed_By_DblClick(Cancel As Integer)
Application.FollowHyperlink "mailto:" & [Closed_By] & "@cpchem.com"
End Sub


Private Sub Entered_By_DblClick(Cancel As Integer)
Application.FollowHyperlink "mailto:" & [Entered_By] & "@cpchem.com"
End Sub

Private Sub Form_Load()
Dim Security As Integer
Me.txtUser = Environ("USERNAME")
Security = DLookup("UserSecurity", "tblUser", "[UserLogin] ='" & Me.txtUser & "'")
    If Security = 1 Then
    Form_frmPunchList_SF.AllowDeletions = True
    Form_frmPunchList_SF.AllowEdits = True
    Me.btnDeleteRecord.Visible = True
    Me.btnDeleteQuery.Visible = True
    Me.btnNullDescription.Visible = True
       
    Else
    Form_frmPunchList_SF.AllowDeletions = False
    Me.btnDeleteRecord.Visible = False
    Me.btnDeleteQuery.Visible = False
    Me.btnNullDescription.Visible = False
    End If
    
    If Security = 2 Then
    Form_frmPunchList_SF.AllowEdits = True
    End If
    
    If Security = 3 Then
    Form_frmPunchList_SF.AllowEdits = False
    End If
    
    
End Sub





