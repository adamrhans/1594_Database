VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_frmNavigation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Option Compare Database

Private Sub btnNavExit_Click()
DoCmd.Save
Access.Application.Quit
End Sub


Private Sub Form_Load()
Dim Security As Integer

Me.txtUser = Environ("USERNAME")
If IsNull(DLookup("UserSecurity", "tblUser", "[UserLogin] = '" & Me.txtUser & "'")) Then
    DoCmd.Close acForm, "frmNavigation"
    DoCmd.OpenForm "frmWarning"
        
Else
    Security = DLookup("UserSecurity", "tblUser", "[UserLogin] ='" & Me.txtUser & "'")
    If Security = 1 Then
        Me.btnNavAdmin.Enabled = True
        Me.btnNavApproval.Enabled = True
        Form_frmPunchList_DS.AllowDeletions = True
        Dim statusCount As Integer
            statusCount = DCount("[Punch Number]", "tblPunchList", "[Status] = 'Delete'")
            If statusCount > 0 Then
            MsgBox "There are " & statusCount & " punches needing to be deleted", vbOKOnly
            End If
       
    Else
        Me.btnNavAdmin.Enabled = False
        Me.btnNavApproval.Enabled = False
        Form_frmPunchList_DS.AllowDeletions = False
    
    End If
    End If
    

    If Security = 2 Then
    Me.btnNavApproval.Enabled = True
    
    statusCount = DCount("[Punch Number]", "tblPunchList", "[Status] = 'Awaiting Approval'")
    If statusCount > 0 Then
    MsgBox "There are " & statusCount & " punches awaiting approval", vbOKOnly
    End If
    End If




End Sub
