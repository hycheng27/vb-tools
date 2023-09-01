Imports System.Data
Imports ETS.CodeUtils
Imports NsInterfaces

Namespace NsEtsTenderTableModel
    Public Class EtsTenderTableModel
        Public Const tableName As String = "ets_tender_table"
        Public ProjectId As Integer?
        Public ProcurerId As Integer
        Public ModuleName As String = Nothing
        Public DeptName As String = Nothing
        Public VersionId As String
        Public VersionNo As Integer
        Public TenderType As Integer?
        Public Restricted As Boolean?
        Public Status As Integer
        Public Ref As String
        Public SubjEng As String
        Public SubjChi As String
        Public IssueDate As Date?
        Public ClosingDate As Date?
        Public EvaluationCriteriaId As String = Nothing
        Public EvaluationCriteriaName As String = Nothing
        Public TwoStageAssessment As Boolean?
        Public EvaluationCriteriaStage1PassingScore As String = Nothing
        Public EvaluationCriteriaStage1TargetCompletionDate As Date?
        Public EvaluationCriteriaStage2PassingScore As String = Nothing
        Public EvaluationCriteriaStage2TargetCompletionDate As Date?
        Public EvaluationCriteriaTechnicalWeighted As String = Nothing
        Public EvaluationCriteriaPriceWeighted As String = Nothing
        Public ContactPersonName As String
        Public ContactPersonPosition As String
        Public ContactPersonTelNumber As String = Nothing
        Public ContactPersonFaxNumber As String = Nothing
        Public ContactPersonEmailAddress As String
        Public DateCreated As Date
        Public CreatedByUserId As Integer
        Public CreatedBy As String
        Public DateModified As Date?
        Public ModifiedByUserId As Integer?
        Public ModifiedBy As String = Nothing
        Public DateReviewed As Date?
        Public ReviewedByUserId As Integer?
        Public ReviewedBy As String = Nothing
        Public DateApproved As Date?
        Public ApprovedByUserId As Integer?
        Public ApprovedBy As String = Nothing
        Public DateIssued As Date?
        Public IssuedByUserId As Integer?
        Public IssuedBy As String = Nothing
        Public DateClosed As Date?
        Public ClosedByUserId As Integer?
        Public ClosedBy As String = Nothing
        Public DateAborted As Date?
        Public AbortedByUserId As Integer?
        Public AbortedBy As String = Nothing
        Public DateArchived As Date?
        Public DateDearchived As Date?
        Public DearchivedByUserId As Integer?
        Public DearchivedBy As String = Nothing
        Public DateAwarded As Date?
        Public AwardedByUserId As Integer?
        Public AwardedBy As String = Nothing
        Public Sub New(
          procurerId As Integer,
          versionId As String,
          versionNo As Integer,
          status As Integer,
          ref As String,
          subjEng As String,
          subjChi As String,
          contactPersonName As String,
          contactPersonPosition As String,
          contactPersonEmailAddress As String,
          dateCreated As Date,
          createdByUserId As Integer,
          createdBy As String,
          Optional projectId As Integer? = Nothing,
          Optional moduleName As String = Nothing,
          Optional deptName As String = Nothing,
          Optional tenderType As Integer? = Nothing,
          Optional restricted As Boolean? = Nothing,
          Optional issueDate As Date? = Nothing,
          Optional closingDate As Date? = Nothing,
          Optional evaluationCriteriaId As String = Nothing,
          Optional evaluationCriteriaName As String = Nothing,
          Optional twoStageAssessment As Boolean? = Nothing,
          Optional evaluationCriteriaStage1PassingScore As String = Nothing,
          Optional evaluationCriteriaStage1TargetCompletionDate As Date? = Nothing,
          Optional evaluationCriteriaStage2PassingScore As String = Nothing,
          Optional evaluationCriteriaStage2TargetCompletionDate As Date? = Nothing,
          Optional evaluationCriteriaTechnicalWeighted As String = Nothing,
          Optional evaluationCriteriaPriceWeighted As String = Nothing,
          Optional contactPersonTelNumber As String = Nothing,
          Optional contactPersonFaxNumber As String = Nothing,
          Optional dateModified As Date? = Nothing,
          Optional modifiedByUserId As Integer? = Nothing,
          Optional modifiedBy As String = Nothing,
          Optional dateReviewed As Date? = Nothing,
          Optional reviewedByUserId As Integer? = Nothing,
          Optional reviewedBy As String = Nothing,
          Optional dateApproved As Date? = Nothing,
          Optional approvedByUserId As Integer? = Nothing,
          Optional approvedBy As String = Nothing,
          Optional dateIssued As Date? = Nothing,
          Optional issuedByUserId As Integer? = Nothing,
          Optional issuedBy As String = Nothing,
          Optional dateClosed As Date? = Nothing,
          Optional closedByUserId As Integer? = Nothing,
          Optional closedBy As String = Nothing,
          Optional dateAborted As Date? = Nothing,
          Optional abortedByUserId As Integer? = Nothing,
          Optional abortedBy As String = Nothing,
          Optional dateArchived As Date? = Nothing,
          Optional dateDearchived As Date? = Nothing,
          Optional dearchivedByUserId As Integer? = Nothing,
          Optional dearchivedBy As String = Nothing,
          Optional dateAwarded As Date? = Nothing,
          Optional awardedByUserId As Integer? = Nothing,
          Optional awardedBy As String = Nothing
        )
            Me.ProcurerId = procurerId
            Me.VersionId = versionId
            Me.VersionNo = versionNo
            Me.Status = status
            Me.Ref = ref
            Me.SubjEng = subjEng
            Me.SubjChi = subjChi
            Me.ContactPersonName = contactPersonName
            Me.ContactPersonPosition = contactPersonPosition
            Me.ContactPersonEmailAddress = contactPersonEmailAddress
            Me.DateCreated = dateCreated
            Me.CreatedByUserId = createdByUserId
            Me.CreatedBy = createdBy
            Me.ProjectId = projectId
            Me.ModuleName = moduleName
            Me.DeptName = deptName
            Me.TenderType = tenderType
            Me.Restricted = restricted
            Me.IssueDate = issueDate
            Me.ClosingDate = closingDate
            Me.EvaluationCriteriaId = evaluationCriteriaId
            Me.EvaluationCriteriaName = evaluationCriteriaName
            Me.TwoStageAssessment = twoStageAssessment
            Me.EvaluationCriteriaStage1PassingScore = evaluationCriteriaStage1PassingScore
            Me.EvaluationCriteriaStage1TargetCompletionDate = evaluationCriteriaStage1TargetCompletionDate
            Me.EvaluationCriteriaStage2PassingScore = evaluationCriteriaStage2PassingScore
            Me.EvaluationCriteriaStage2TargetCompletionDate = evaluationCriteriaStage2TargetCompletionDate
            Me.EvaluationCriteriaTechnicalWeighted = evaluationCriteriaTechnicalWeighted
            Me.EvaluationCriteriaPriceWeighted = evaluationCriteriaPriceWeighted
            Me.ContactPersonTelNumber = contactPersonTelNumber
            Me.ContactPersonFaxNumber = contactPersonFaxNumber
            Me.DateModified = dateModified
            Me.ModifiedByUserId = modifiedByUserId
            Me.ModifiedBy = modifiedBy
            Me.DateReviewed = dateReviewed
            Me.ReviewedByUserId = reviewedByUserId
            Me.ReviewedBy = reviewedBy
            Me.DateApproved = dateApproved
            Me.ApprovedByUserId = approvedByUserId
            Me.ApprovedBy = approvedBy
            Me.DateIssued = dateIssued
            Me.IssuedByUserId = issuedByUserId
            Me.IssuedBy = issuedBy
            Me.DateClosed = dateClosed
            Me.ClosedByUserId = closedByUserId
            Me.ClosedBy = closedBy
            Me.DateAborted = dateAborted
            Me.AbortedByUserId = abortedByUserId
            Me.AbortedBy = abortedBy
            Me.DateArchived = dateArchived
            Me.DateDearchived = dateDearchived
            Me.DearchivedByUserId = dearchivedByUserId
            Me.DearchivedBy = dearchivedBy
            Me.DateAwarded = dateAwarded
            Me.AwardedByUserId = awardedByUserId
            Me.AwardedBy = awardedBy
        End Sub
        Public Shared ReadOnly GetName As New Dictionary(Of EnumEtsTenderTableColumns, String) From {
          {EnumEtsTenderTableColumns.Id, "id"},
          {EnumEtsTenderTableColumns.ProjectId, "project_id"},
          {EnumEtsTenderTableColumns.ProcurerId, "procurer_id"},
          {EnumEtsTenderTableColumns.ModuleName, "module_name"},
          {EnumEtsTenderTableColumns.DeptName, "dept_name"},
          {EnumEtsTenderTableColumns.VersionId, "version_id"},
          {EnumEtsTenderTableColumns.VersionNo, "version_no"},
          {EnumEtsTenderTableColumns.TenderType, "tender_type"},
          {EnumEtsTenderTableColumns.Restricted, "restricted"},
          {EnumEtsTenderTableColumns.Status, "status"},
          {EnumEtsTenderTableColumns.Ref, "ref"},
          {EnumEtsTenderTableColumns.SubjEng, "subj_eng"},
          {EnumEtsTenderTableColumns.SubjChi, "subj_chi"},
          {EnumEtsTenderTableColumns.IssueDate, "issue_date"},
          {EnumEtsTenderTableColumns.ClosingDate, "closing_date"},
          {EnumEtsTenderTableColumns.EvaluationCriteriaId, "evaluation_criteria_id"},
          {EnumEtsTenderTableColumns.EvaluationCriteriaName, "evaluation_criteria_name"},
          {EnumEtsTenderTableColumns.TwoStageAssessment, "2stage_assessment"},
          {EnumEtsTenderTableColumns.EvaluationCriteriaStage1PassingScore, "evaluation_criteria_stage_1_passing_score"},
          {EnumEtsTenderTableColumns.EvaluationCriteriaStage1TargetCompletionDate, "evaluation_criteria_stage_1_target_completion_date"},
          {EnumEtsTenderTableColumns.EvaluationCriteriaStage2PassingScore, "evaluation_criteria_stage_2_passing_score"},
          {EnumEtsTenderTableColumns.EvaluationCriteriaStage2TargetCompletionDate, "evaluation_criteria_stage_2_target_completion_date"},
          {EnumEtsTenderTableColumns.EvaluationCriteriaTechnicalWeighted, "evaluation_criteria_technical_weighted"},
          {EnumEtsTenderTableColumns.EvaluationCriteriaPriceWeighted, "evaluation_criteria_price_weighted"},
          {EnumEtsTenderTableColumns.ContactPersonName, "contact_person_name"},
          {EnumEtsTenderTableColumns.ContactPersonPosition, "contact_person_position"},
          {EnumEtsTenderTableColumns.ContactPersonTelNumber, "contact_person_tel_number"},
          {EnumEtsTenderTableColumns.ContactPersonFaxNumber, "contact_person_fax_number"},
          {EnumEtsTenderTableColumns.ContactPersonEmailAddress, "contact_person_email_address"},
          {EnumEtsTenderTableColumns.DateCreated, "date_created"},
          {EnumEtsTenderTableColumns.CreatedByUserId, "created_by_user_id"},
          {EnumEtsTenderTableColumns.CreatedBy, "created_by"},
          {EnumEtsTenderTableColumns.DateModified, "date_modified"},
          {EnumEtsTenderTableColumns.ModifiedByUserId, "modified_by_user_id"},
          {EnumEtsTenderTableColumns.ModifiedBy, "modified_by"},
          {EnumEtsTenderTableColumns.DateReviewed, "date_reviewed"},
          {EnumEtsTenderTableColumns.ReviewedByUserId, "reviewed_by_user_id"},
          {EnumEtsTenderTableColumns.ReviewedBy, "reviewed_by"},
          {EnumEtsTenderTableColumns.DateApproved, "date_approved"},
          {EnumEtsTenderTableColumns.ApprovedByUserId, "approved_by_user_id"},
          {EnumEtsTenderTableColumns.ApprovedBy, "approved_by"},
          {EnumEtsTenderTableColumns.DateIssued, "date_issued"},
          {EnumEtsTenderTableColumns.IssuedByUserId, "issued_by_user_id"},
          {EnumEtsTenderTableColumns.IssuedBy, "issued_by"},
          {EnumEtsTenderTableColumns.DateClosed, "date_closed"},
          {EnumEtsTenderTableColumns.ClosedByUserId, "closed_by_user_id"},
          {EnumEtsTenderTableColumns.ClosedBy, "closed_by"},
          {EnumEtsTenderTableColumns.DateAborted, "date_aborted"},
          {EnumEtsTenderTableColumns.AbortedByUserId, "aborted_by_user_id"},
          {EnumEtsTenderTableColumns.AbortedBy, "aborted_by"},
          {EnumEtsTenderTableColumns.DateArchived, "date_archived"},
          {EnumEtsTenderTableColumns.DateDearchived, "date_dearchived"},
          {EnumEtsTenderTableColumns.DearchivedByUserId, "dearchived_by_user_id"},
          {EnumEtsTenderTableColumns.DearchivedBy, "dearchived_by"},
          {EnumEtsTenderTableColumns.DateAwarded, "date_awarded"},
          {EnumEtsTenderTableColumns.AwardedByUserId, "awarded_by_user_id"},
          {EnumEtsTenderTableColumns.AwardedBy, "awarded_by"}
        }
        ''' <summary>
        ''' Receives an array of <see cref="EnumEtsTenderTableColumns"/> and returns a comma separated string for SQL query columns selection.
        ''' </summary>
        ''' <param name="cols"></param>
        ''' <returns>a comma separated string, e.g. "id, tender_id, created_by"</returns>
        Public Shared Function GetCommaSeparatedColNames(cols As EnumEtsTenderTableColumns()) As String
            Dim _list = New List(Of String)
            For Each col In cols
                _list.Add(GetName(col))
            Next
            Dim colNames = String.Join(", ", _list.ToArray())
            Return colNames
        End Function
    End Class

    ''' <summary>
    ''' Every field from <see cref="EtsTenderTableModel"/> except all of them are optional.<br/>
    ''' Useful for receiving data from DB when not all fields are selected.
    ''' </summary>
    Public Class ResEtsTenderTableModel
        Implements IDataRowFillable

        Public Id As Integer?
        Public ProjectId As Integer?
        Public ProcurerId As Integer?
        Public ModuleName As String = Nothing
        Public DeptName As String = Nothing
        Public VersionId As String = Nothing
        Public VersionNo As Integer?
        Public TenderType As Integer?
        Public Restricted As Boolean?
        Public Status As Integer?
        Public Ref As String = Nothing
        Public SubjEng As String = Nothing
        Public SubjChi As String = Nothing
        Public IssueDate As Date?
        Public ClosingDate As Date?
        Public EvaluationCriteriaId As String = Nothing
        Public EvaluationCriteriaName As String = Nothing
        Public TwoStageAssessment As Boolean?
        Public EvaluationCriteriaStage1PassingScore As String = Nothing
        Public EvaluationCriteriaStage1TargetCompletionDate As Date?
        Public EvaluationCriteriaStage2PassingScore As String = Nothing
        Public EvaluationCriteriaStage2TargetCompletionDate As Date?
        Public EvaluationCriteriaTechnicalWeighted As String = Nothing
        Public EvaluationCriteriaPriceWeighted As String = Nothing
        Public ContactPersonName As String = Nothing
        Public ContactPersonPosition As String = Nothing
        Public ContactPersonTelNumber As String = Nothing
        Public ContactPersonFaxNumber As String = Nothing
        Public ContactPersonEmailAddress As String = Nothing
        Public DateCreated As Date?
        Public CreatedByUserId As Integer?
        Public CreatedBy As String = Nothing
        Public DateModified As Date?
        Public ModifiedByUserId As Integer?
        Public ModifiedBy As String = Nothing
        Public DateReviewed As Date?
        Public ReviewedByUserId As Integer?
        Public ReviewedBy As String = Nothing
        Public DateApproved As Date?
        Public ApprovedByUserId As Integer?
        Public ApprovedBy As String = Nothing
        Public DateIssued As Date?
        Public IssuedByUserId As Integer?
        Public IssuedBy As String = Nothing
        Public DateClosed As Date?
        Public ClosedByUserId As Integer?
        Public ClosedBy As String = Nothing
        Public DateAborted As Date?
        Public AbortedByUserId As Integer?
        Public AbortedBy As String = Nothing
        Public DateArchived As Date?
        Public DateDearchived As Date?
        Public DearchivedByUserId As Integer?
        Public DearchivedBy As String = Nothing
        Public DateAwarded As Date?
        Public AwardedByUserId As Integer?
        Public AwardedBy As String = Nothing

        Public Sub FillModel(dataRow As DataRow) Implements IDataRowFillable.FillModel
            Me.Id = dataRow.Field(Of Integer)("id")
            Me.ProjectId = dataRow.Field(Of Integer?)("project_id")
            Me.ProcurerId = dataRow.Field(Of Integer)("procurer_id")
            Me.ModuleName = dataRow.Field(Of String)("module_name")
            Me.DeptName = dataRow.Field(Of String)("dept_name")
            Me.VersionId = dataRow.Field(Of String)("version_id")
            Me.VersionNo = dataRow.Field(Of Integer)("version_no")
            Me.TenderType = dataRow.Field(Of Integer?)("tender_type")
            Me.Restricted = dataRow.Field(Of Boolean?)("restricted")
            Me.Status = dataRow.Field(Of Integer)("status")
            Me.Ref = dataRow.Field(Of String)("ref")
            Me.SubjEng = dataRow.Field(Of String)("subj_eng")
            Me.SubjChi = dataRow.Field(Of String)("subj_chi")
            Me.IssueDate = dataRow.Field(Of Date?)("issue_date")
            Me.ClosingDate = dataRow.Field(Of Date?)("closing_date")
            Me.EvaluationCriteriaId = dataRow.Field(Of String)("evaluation_criteria_id")
            Me.EvaluationCriteriaName = dataRow.Field(Of String)("evaluation_criteria_name")
            Me.TwoStageAssessment = dataRow.Field(Of Boolean?)("2stage_assessment")
            Me.EvaluationCriteriaStage1PassingScore = dataRow.Field(Of String)("evaluation_criteria_stage_1_passing_score")
            Me.EvaluationCriteriaStage1TargetCompletionDate = dataRow.Field(Of Date?)("evaluation_criteria_stage_1_target_completion_date")
            Me.EvaluationCriteriaStage2PassingScore = dataRow.Field(Of String)("evaluation_criteria_stage_2_passing_score")
            Me.EvaluationCriteriaStage2TargetCompletionDate = dataRow.Field(Of Date?)("evaluation_criteria_stage_2_target_completion_date")
            Me.EvaluationCriteriaTechnicalWeighted = dataRow.Field(Of String)("evaluation_criteria_technical_weighted")
            Me.EvaluationCriteriaPriceWeighted = dataRow.Field(Of String)("evaluation_criteria_price_weighted")
            Me.ContactPersonName = dataRow.Field(Of String)("contact_person_name")
            Me.ContactPersonPosition = dataRow.Field(Of String)("contact_person_position")
            Me.ContactPersonTelNumber = dataRow.Field(Of String)("contact_person_tel_number")
            Me.ContactPersonFaxNumber = dataRow.Field(Of String)("contact_person_fax_number")
            Me.ContactPersonEmailAddress = dataRow.Field(Of String)("contact_person_email_address")
            Me.DateCreated = dataRow.Field(Of Date)("date_created")
            Me.CreatedByUserId = dataRow.Field(Of Integer)("created_by_user_id")
            Me.CreatedBy = dataRow.Field(Of String)("created_by")
            Me.DateModified = dataRow.Field(Of Date?)("date_modified")
            Me.ModifiedByUserId = dataRow.Field(Of Integer?)("modified_by_user_id")
            Me.ModifiedBy = dataRow.Field(Of String)("modified_by")
            Me.DateReviewed = dataRow.Field(Of Date?)("date_reviewed")
            Me.ReviewedByUserId = dataRow.Field(Of Integer?)("reviewed_by_user_id")
            Me.ReviewedBy = dataRow.Field(Of String)("reviewed_by")
            Me.DateApproved = dataRow.Field(Of Date?)("date_approved")
            Me.ApprovedByUserId = dataRow.Field(Of Integer?)("approved_by_user_id")
            Me.ApprovedBy = dataRow.Field(Of String)("approved_by")
            Me.DateIssued = dataRow.Field(Of Date?)("date_issued")
            Me.IssuedByUserId = dataRow.Field(Of Integer?)("issued_by_user_id")
            Me.IssuedBy = dataRow.Field(Of String)("issued_by")
            Me.DateClosed = dataRow.Field(Of Date?)("date_closed")
            Me.ClosedByUserId = dataRow.Field(Of Integer?)("closed_by_user_id")
            Me.ClosedBy = dataRow.Field(Of String)("closed_by")
            Me.DateAborted = dataRow.Field(Of Date?)("date_aborted")
            Me.AbortedByUserId = dataRow.Field(Of Integer?)("aborted_by_user_id")
            Me.AbortedBy = dataRow.Field(Of String)("aborted_by")
            Me.DateArchived = dataRow.Field(Of Date?)("date_archived")
            Me.DateDearchived = dataRow.Field(Of Date?)("date_dearchived")
            Me.DearchivedByUserId = dataRow.Field(Of Integer?)("dearchived_by_user_id")
            Me.DearchivedBy = dataRow.Field(Of String)("dearchived_by")
            Me.DateAwarded = dataRow.Field(Of Date?)("date_awarded")
            Me.AwardedByUserId = dataRow.Field(Of Integer?)("awarded_by_user_id")
            Me.AwardedBy = dataRow.Field(Of String)("awarded_by")
        End Sub
    End Class

    ''' <summary>
    ''' Abstracted column names with enums. The indexes are not important.
    ''' </summary>
    Public Enum EnumEtsTenderTableColumns
        Id
        ProjectId
        ProcurerId
        ModuleName
        DeptName
        VersionId
        VersionNo
        TenderType
        Restricted
        Status
        Ref
        SubjEng
        SubjChi
        IssueDate
        ClosingDate
        EvaluationCriteriaId
        EvaluationCriteriaName
        TwoStageAssessment
        EvaluationCriteriaStage1PassingScore
        EvaluationCriteriaStage1TargetCompletionDate
        EvaluationCriteriaStage2PassingScore
        EvaluationCriteriaStage2TargetCompletionDate
        EvaluationCriteriaTechnicalWeighted
        EvaluationCriteriaPriceWeighted
        ContactPersonName
        ContactPersonPosition
        ContactPersonTelNumber
        ContactPersonFaxNumber
        ContactPersonEmailAddress
        DateCreated
        CreatedByUserId
        CreatedBy
        DateModified
        ModifiedByUserId
        ModifiedBy
        DateReviewed
        ReviewedByUserId
        ReviewedBy
        DateApproved
        ApprovedByUserId
        ApprovedBy
        DateIssued
        IssuedByUserId
        IssuedBy
        DateClosed
        ClosedByUserId
        ClosedBy
        DateAborted
        AbortedByUserId
        AbortedBy
        DateArchived
        DateDearchived
        DearchivedByUserId
        DearchivedBy
        DateAwarded
        AwardedByUserId
        AwardedBy
    End Enum

    ''' <summary>
    ''' Refers to the tender model column "tender_type"
    ''' </summary>
    Public Enum TenderType
        Open_1 = 1
        Open_2 = 2
        Restricted = 3
        Limited = 4
        Selective = 5
    End Enum
End Namespace