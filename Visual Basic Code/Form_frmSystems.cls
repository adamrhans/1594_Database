VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_frmSystems"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Option Compare Database

Private Sub Form_Load()
Me.cboSystemSelect = Null
Me.cboSystemSelect.Requery
Me.cboSystemSelect.SetFocus


End Sub

Private Sub System_Area_DblClick(Cancel As Integer)
Dim Cold As String
Dim Hot As String
Dim Utilities As String
Cold = "\\CPAMUSGC-FS02\Data\USGC\Operations\Cracker\Pictures-OFFICIAL RECORD\Cold\"
Hot = "\\CPAMUSGC-FS02\Data\USGC\Operations\Cracker\Pictures-OFFICIAL RECORD\Hot\"
Utilities = "\\CPAMUSGC-FS02\Data\USGC\Operations\Cracker\Pictures-OFFICIAL RECORD\Utilities\"

If Me.System_Area = "Cold Side" Then
Application.FollowHyperlink Cold
End If
If Me.System_Area = "Hot Side" Then
Application.FollowHyperlink Hot
End If
If Me.System_Area = "Utilities" Then
Application.FollowHyperlink Utilities
End If
End Sub
