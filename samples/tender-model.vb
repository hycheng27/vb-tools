Imports System.Data
Imports ETS.CodeUtils

Namespace NSTenderModel

    Public Class TenderModel
        Public Const tableName As String = "ets_tender_table"

        Public procurerId As Integer
        Public versionId As String
        Public versionNo As Integer
        Public status As Integer
        Public ref As String
        Public subjEng As String
        Public subjChi As String
        Public contactPersonName As String
        Public contactPersonPosition As String
        Public contactPersonEmailAddress As String
        Public dateCreated As Date
        Public createdByUserId As Integer
        Public createdBy As String

        Public projectId As Integer?
        Public tenderType As Integer?
        Public restricted As Boolean?
        Public issueDate As Date?
        Public closingDate As Date?
        Public twoStageAssessment As Boolean?
        Public evaluationCriteriaStage1TargetCompletionDate As Date?
        Public evaluationCriteriaStage2TargetCompletionDate As Date?
        Public dateModified As Date?
        Public modifiedByUserId As Integer?
        Public dateReviewed As Date?
        Public reviewedByUserId As Integer?
        Public dateApproved As Date?
        Public approvedByUserId As Integer?
        Public dateIssued As Date?
        Public issuedByUserId As Integer?
        Public dateClosed As Date?
        Public closedByUserId As Integer?
        Public dateAborted As Date?
        Public abortedByUserId As Integer?
        Public dateArchived As Date?
        Public dateDearchived As Date?
        Public dearchivedByUserId As Integer?
        Public dateAwarded As Date?
        Public awardedByUserId As Integer?

        Public moduleName As String = Nothing
        Public deptName As String = Nothing
        Public evaluationCriteriaId As String = Nothing
        Public evaluationCriteriaName As String = Nothing
        Public evaluationCriteriaStage1PassingScore As String = Nothing
        Public evaluationCriteriaStage2PassingScore As String = Nothing
        Public evaluationCriteriaTechnicalWeighted As String = Nothing
        Public evaluationCriteriaPriceWeighted As String = Nothing
        Public contactPersonTelNumber As String = Nothing
        Public contactPersonFaxNumber As String = Nothing
        Public modifiedBy As String = Nothing
        Public reviewedBy As String = Nothing
        Public approvedBy As String = Nothing
        Public issuedBy As String = Nothing
        Public closedBy As String = Nothing
        Public abortedBy As String = Nothing
        Public dearchivedBy As String = Nothing
        Public awardedBy As String = Nothing

        Public Sub New(procurerId As Integer, versionId As String, versionNo As Integer, status As Integer, ref As String, subjEng As String, subjChi As String, contactPersonName As String, contactPersonPosition As String, contactPersonEmailAddress As String, dateCreated As Date, createdByUserId As Integer, createdBy As String, Optional projectId As Integer? = Nothing, Optional tenderType As Integer? = Nothing, Optional restricted As Boolean? = Nothing, Optional issueDate As Date? = Nothing, Optional closingDate As Date? = Nothing, Optional twoStageAssessment As Boolean = Nothing, Optional evaluationCriteriaStage1TargetCompletionDate As Date? = Nothing, Optional evaluationCriteriaStage2TargetCompletionDate As Date? = Nothing, Optional dateModified As Date? = Nothing, Optional modifiedByUserId As Integer? = Nothing, Optional dateReviewed As Date? = Nothing, Optional reviewedByUserId As Integer? = Nothing, Optional dateApproved As Date? = Nothing, Optional approvedByUserId As Integer? = Nothing, Optional dateIssued As Date? = Nothing, Optional issuedByUserId As Integer? = Nothing, Optional dateClosed As Date? = Nothing, Optional closedByUserId As Integer? = Nothing, Optional dateAborted As Date? = Nothing, Optional abortedByUserId As Integer? = Nothing, Optional dateArchived As Date? = Nothing, Optional dateDearchived As Date? = Nothing, Optional dearchivedByUserId As Integer? = Nothing, Optional dateAwarded As Date? = Nothing, Optional awardedByUserId As Integer? = Nothing, Optional moduleName As String = Nothing, Optional deptName As String = Nothing, Optional evaluationCriteriaId As String = Nothing, Optional evaluationCriteriaName As String = Nothing, Optional evaluationCriteriaStage1PassingScore As String = Nothing, Optional evaluationCriteriaStage2PassingScore As String = Nothing, Optional evaluationCriteriaTechnicalWeighted As String = Nothing, Optional evaluationCriteriaPriceWeighted As String = Nothing, Optional contactPersonTelNumber As String = Nothing, Optional contactPersonFaxNumber As String = Nothing, Optional modifiedBy As String = Nothing, Optional reviewedBy As String = Nothing, Optional approvedBy As String = Nothing, Optional issuedBy As String = Nothing, Optional closedBy As String = Nothing, Optional abortedBy As String = Nothing, Optional dearchivedBy As String = Nothing, Optional awardedBy As String = Nothing)
            Me.procurerId = procurerId
            Me.versionId = versionId
            Me.versionNo = versionNo
            Me.status = status
            Me.ref = ref
            Me.subjEng = subjEng
            Me.subjChi = subjChi
            Me.contactPersonName = contactPersonName
            Me.contactPersonPosition = contactPersonPosition
            Me.contactPersonEmailAddress = contactPersonEmailAddress
            Me.dateCreated = dateCreated
            Me.createdByUserId = createdByUserId
            Me.createdBy = createdBy

            Me.projectId = projectId
            Me.tenderType = tenderType
            Me.restricted = restricted
            Me.issueDate = issueDate
            Me.closingDate = closingDate
            Me.twoStageAssessment = twoStageAssessment
            Me.evaluationCriteriaStage1TargetCompletionDate = evaluationCriteriaStage1TargetCompletionDate
            Me.evaluationCriteriaStage2TargetCompletionDate = evaluationCriteriaStage2TargetCompletionDate
            Me.dateModified = dateModified
            Me.modifiedByUserId = modifiedByUserId
            Me.dateReviewed = dateReviewed
            Me.reviewedByUserId = reviewedByUserId
            Me.dateApproved = dateApproved
            Me.approvedByUserId = approvedByUserId
            Me.dateIssued = dateIssued
            Me.issuedByUserId = issuedByUserId
            Me.dateClosed = dateClosed
            Me.closedByUserId = closedByUserId
            Me.dateAborted = dateAborted
            Me.abortedByUserId = abortedByUserId
            Me.dateArchived = dateArchived
            Me.dateDearchived = dateDearchived
            Me.dearchivedByUserId = dearchivedByUserId
            Me.dateAwarded = dateAwarded
            Me.awardedByUserId = awardedByUserId

            Me.moduleName = moduleName
            Me.deptName = deptName
            Me.evaluationCriteriaId = evaluationCriteriaId
            Me.evaluationCriteriaName = evaluationCriteriaName
            Me.evaluationCriteriaStage1PassingScore = evaluationCriteriaStage1PassingScore
            Me.evaluationCriteriaStage2PassingScore = evaluationCriteriaStage2PassingScore
            Me.evaluationCriteriaTechnicalWeighted = evaluationCriteriaTechnicalWeighted
            Me.evaluationCriteriaPriceWeighted = evaluationCriteriaPriceWeighted
            Me.contactPersonTelNumber = contactPersonTelNumber
            Me.contactPersonFaxNumber = contactPersonFaxNumber
            Me.modifiedBy = modifiedBy
            Me.reviewedBy = reviewedBy
            Me.approvedBy = approvedBy
            Me.issuedBy = issuedBy
            Me.closedBy = closedBy
            Me.abortedBy = abortedBy
            Me.dearchivedBy = dearchivedBy
            Me.awardedBy = awardedBy
        End Sub


    End Class

    ''' <summary>
    ''' Every field from <see cref="TenderModel"/> except all of them are optional.<br/>
    ''' Useful for receiving data from DB when not all fields are selected.
    ''' </summary>
    Public Class ResTenderModel
        Public id As Integer?

        Public procurerId As Integer?
        Public versionId As String = Nothing
        Public versionNo As Integer?
        Public status As Integer?
        Public ref As String = Nothing
        Public subjEng As String = Nothing
        Public subjChi As String = Nothing
        Public contactPersonName As String = Nothing
        Public contactPersonPosition As String = Nothing
        Public contactPersonEmailAddress As String = Nothing
        Public dateCreated As Date?
        Public createdByUserId As Integer?
        Public createdBy As String = Nothing

        Public projectId As Integer?
        Public tenderType As Integer?
        Public restricted As Boolean?
        Public issueDate As Date?
        Public closingDate As Date?
        Public twoStageAssessment As Boolean?
        Public evaluationCriteriaStage1TargetCompletionDate As Date?
        Public evaluationCriteriaStage2TargetCompletionDate As Date?
        Public dateModified As Date?
        Public modifiedByUserId As Integer?
        Public dateReviewed As Date?
        Public reviewedByUserId As Integer?
        Public dateApproved As Date?
        Public approvedByUserId As Integer?
        Public dateIssued As Date?
        Public issuedByUserId As Integer?
        Public dateClosed As Date?
        Public closedByUserId As Integer?
        Public dateAborted As Date?
        Public abortedByUserId As Integer?
        Public dateArchived As Date?
        Public dateDearchived As Date?
        Public dearchivedByUserId As Integer?
        Public dateAwarded As Date?
        Public awardedByUserId As Integer?

        Public moduleName As String = Nothing
        Public deptName As String = Nothing
        Public evaluationCriteriaId As String = Nothing
        Public evaluationCriteriaName As String = Nothing
        Public evaluationCriteriaStage1PassingScore As String = Nothing
        Public evaluationCriteriaStage2PassingScore As String = Nothing
        Public evaluationCriteriaTechnicalWeighted As String = Nothing
        Public evaluationCriteriaPriceWeighted As String = Nothing
        Public contactPersonTelNumber As String = Nothing
        Public contactPersonFaxNumber As String = Nothing
        Public modifiedBy As String = Nothing
        Public reviewedBy As String = Nothing
        Public approvedBy As String = Nothing
        Public issuedBy As String = Nothing
        Public closedBy As String = Nothing
        Public abortedBy As String = Nothing
        Public dearchivedBy As String = Nothing
        Public awardedBy As String = Nothing

        ''' <summary>
        ''' Init the model with a <see cref="DataRow"/>
        ''' </summary>
        ''' <param name="row"></param>
        Public Sub New(row As DataRow)
            Dim cols = row.Table.Columns

            If cols.Contains("id") Then
                id = IsNull(row("id"), Nothing)
            End If

            If cols.Contains("procurer_id") Then
                procurerId = IsNull(row("procurer_id"), Nothing)
            End If
            If cols.Contains("version_id") Then
                versionId = IsNull(row("version_id"), Nothing)
            End If
            If cols.Contains("version_no") Then
                versionNo = IsNull(row("version_no"), Nothing)
            End If
            If cols.Contains("status") Then
                status = IsNull(row("status"), Nothing)
            End If
            If cols.Contains("ref") Then
                ref = IsNull(row("ref"), Nothing)
            End If
            If cols.Contains("subj_eng") Then
                subjEng = IsNull(row("subj_eng"), Nothing)
            End If
            If cols.Contains("subj_chi") Then
                subjChi = IsNull(row("subj_chi"), Nothing)
            End If
            If cols.Contains("contact_person_name") Then
                contactPersonName = IsNull(row("contact_person_name"), Nothing)
            End If
            If cols.Contains("contact_person_position") Then
                contactPersonPosition = IsNull(row("contact_person_position"), Nothing)
            End If
            If cols.Contains("contact_person_email_address") Then
                contactPersonEmailAddress = IsNull(row("contact_person_email_address"), Nothing)
            End If
            If cols.Contains("date_created") Then
                dateCreated = IsNull(row("date_created"), Nothing)
            End If
            If cols.Contains("created_by_user_id") Then
                createdByUserId = IsNull(row("created_by_user_id"), Nothing)
            End If
            If cols.Contains("created_by") Then
                createdBy = IsNull(row("created_by"), Nothing)
            End If

            If cols.Contains("project_id") Then
                projectId = IsNull(row("project_id"), Nothing)
            End If
            If cols.Contains("tender_type") Then
                tenderType = IsNull(row("tender_type"), Nothing)
            End If
            If cols.Contains("restricted") Then
                restricted = IsNull(row("restricted"), Nothing)
            End If
            If cols.Contains("issue_date") Then
                issueDate = IsNull(row("issue_date"), Nothing)
            End If
            If cols.Contains("closing_date") Then
                closingDate = IsNull(row("closing_date"), Nothing)
            End If
            If cols.Contains("two_stage_assessment") Then
                twoStageAssessment = IsNull(row("two_stage_assessment"), Nothing)
            End If
            If cols.Contains("evaluation_criteria_stage_1_target_completion_date") Then
                evaluationCriteriaStage1TargetCompletionDate = IsNull(row("evaluation_criteria_stage_1_target_completion_date"), Nothing)
            End If
            If cols.Contains("evaluation_criteria_stage_2_target_completion_date") Then
                evaluationCriteriaStage2TargetCompletionDate = IsNull(row("evaluation_criteria_stage_2_target_completion_date"), Nothing)
            End If
            If cols.Contains("date_modified") Then
                dateModified = IsNull(row("date_modified"), Nothing)
            End If
            If cols.Contains("modified_by_user_id") Then
                modifiedByUserId = IsNull(row("modified_by_user_id"), Nothing)
            End If
            If cols.Contains("date_reviewed") Then
                dateReviewed = IsNull(row("date_reviewed"), Nothing)
            End If
            If cols.Contains("reviewed_by_user_id") Then
                reviewedByUserId = IsNull(row("reviewed_by_user_id"), Nothing)
            End If
            If cols.Contains("date_approved") Then
                dateApproved = IsNull(row("date_approved"), Nothing)
            End If
            If cols.Contains("approved_by_user_id") Then
                approvedByUserId = IsNull(row("approved_by_user_id"), Nothing)
            End If
            If cols.Contains("date_issued") Then
                dateIssued = IsNull(row("date_issued"), Nothing)
            End If
            If cols.Contains("issued_by_user_id") Then
                issuedByUserId = IsNull(row("issued_by_user_id"), Nothing)
            End If
            If cols.Contains("date_closed") Then
                dateClosed = IsNull(row("date_closed"), Nothing)
            End If
            If cols.Contains("closed_by_user_id") Then
                closedByUserId = IsNull(row("closed_by_user_id"), Nothing)
            End If
            If cols.Contains("date_aborted") Then
                dateAborted = IsNull(row("date_aborted"), Nothing)
            End If
            If cols.Contains("aborted_by_user_id") Then
                abortedByUserId = IsNull(row("aborted_by_user_id"), Nothing)
            End If
            If cols.Contains("date_archived") Then
                dateArchived = IsNull(row("date_archived"), Nothing)
            End If
            If cols.Contains("date_dearchived") Then
                dateDearchived = IsNull(row("date_dearchived"), Nothing)
            End If
            If cols.Contains("dearchived_by_user_id") Then
                dearchivedByUserId = IsNull(row("dearchived_by_user_id"), Nothing)
            End If
            If cols.Contains("date_awarded") Then
                dateAwarded = IsNull(row("date_awarded"), Nothing)
            End If
            If cols.Contains("awarded_by_user_id") Then
                awardedByUserId = IsNull(row("awarded_by_user_id"), Nothing)
            End If

            If cols.Contains("module_name") Then
                moduleName = IsNull(row("module_name"), Nothing)
            End If
            If cols.Contains("dept_name") Then
                deptName = IsNull(row("dept_name"), Nothing)
            End If
            If cols.Contains("evaluation_criteria_id") Then
                evaluationCriteriaId = IsNull(row("evaluation_criteria_id"), Nothing)
            End If
            If cols.Contains("evaluation_criteria_name") Then
                evaluationCriteriaName = IsNull(row("evaluation_criteria_name"), Nothing)
            End If
            If cols.Contains("evaluation_criteria_stage_1_passing_score") Then
                evaluationCriteriaStage1PassingScore = IsNull(row("evaluation_criteria_stage_1_passing_score"), Nothing)
            End If
            If cols.Contains("evaluation_criteria_stage_2_passing_score") Then
                evaluationCriteriaStage2PassingScore = IsNull(row("evaluation_criteria_stage_2_passing_score"), Nothing)
            End If
            If cols.Contains("evaluation_criteria_technical_weighted") Then
                evaluationCriteriaTechnicalWeighted = IsNull(row("evaluation_criteria_technical_weighted"), Nothing)
            End If
            If cols.Contains("evaluation_criteria_price_weighted") Then
                evaluationCriteriaPriceWeighted = IsNull(row("evaluation_criteria_price_weighted"), Nothing)
            End If
            If cols.Contains("contact_person_tel_number") Then
                contactPersonTelNumber = IsNull(row("contact_person_tel_number"), Nothing)
            End If
            If cols.Contains("contact_person_fax_number") Then
                contactPersonFaxNumber = IsNull(row("contact_person_fax_number"), Nothing)
            End If
            If cols.Contains("modified_by") Then
                modifiedBy = IsNull(row("modified_by"), Nothing)
            End If
            If cols.Contains("reviewed_by") Then
                reviewedBy = IsNull(row("reviewed_by"), Nothing)
            End If
            If cols.Contains("approved_by") Then
                approvedBy = IsNull(row("approved_by"), Nothing)
            End If
            If cols.Contains("issued_by") Then
                issuedBy = IsNull(row("issued_by"), Nothing)
            End If
            If cols.Contains("closed_by") Then
                closedBy = IsNull(row("closed_by"), Nothing)
            End If
            If cols.Contains("aborted_by") Then
                abortedBy = IsNull(row("aborted_by"), Nothing)
            End If
            If cols.Contains("dearchived_by") Then
                dearchivedBy = IsNull(row("dearchived_by"), Nothing)
            End If
            If cols.Contains("awarded_by") Then
                awardedBy = IsNull(row("awarded_by"), Nothing)
            End If

        End Sub
    End Class

    ''' <summary>
    ''' Abstracted column names with enums. The indexes are not important.
    ''' </summary>
    Public Enum EnumTenderColumns
        id
        procurerId
        versionId
        versionNo
        status
        ref
        subjEng
        subjChi
        contactPersonName
        contactPersonPosition
        contactPersonEmailAddress
        dateCreated
        createdByUserId
        createdBy
        projectId
        tenderType
        restricted
        issueDate
        closingDate
        twoStageAssessment
        evaluationCriteriaStage1TargetCompletionDate
        evaluationCriteriaStage2TargetCompletionDate
        dateModified
        modifiedByUserId
        dateReviewed
        reviewedByUserId
        dateApproved
        approvedByUserId
        dateIssued
        issuedByUserId
        dateClosed
        closedByUserId
        dateAborted
        abortedByUserId
        dateArchived
        dateDearchived
        dearchivedByUserId
        dateAwarded
        awardedByUserId
        moduleName
        deptName
        evaluationCriteriaId
        evaluationCriteriaName
        evaluationCriteriaStage1PassingScore
        evaluationCriteriaStage2PassingScore
        evaluationCriteriaTechnicalWeighted
        evaluationCriteriaPriceWeighted
        contactPersonTelNumber
        contactPersonFaxNumber
        modifiedBy
        reviewedBy
        approvedBy
        issuedBy
        closedBy
        abortedBy
        dearchivedBy
        awardedBy
    End Enum

    ''' <summary>
    ''' A Helper class for getting string column names for <see cref="TenderModel"/>. Use <see cref="TenderModelColumn.GetName"/>.
    ''' </summary>
    Public Class TenderModelColumn
        ''' <summary>
        ''' Receives a <see cref="EnumTenderColumns"/> and return the corresponding string name.<br/>
        ''' e.g. <c>EnumTenderColumns.procurerId</c> will return <c>"procurer_id"</c>
        ''' </summary>
        Public Shared ReadOnly GetName As New Dictionary(Of EnumTenderColumns, String) From {
            {EnumTenderColumns.id, "id"} _
            , {EnumTenderColumns.procurerId, "procurer_id"} _
            , {EnumTenderColumns.versionId, "version_id"} _
            , {EnumTenderColumns.versionNo, "version_no"} _
            , {EnumTenderColumns.status, "status"} _
            , {EnumTenderColumns.ref, "ref"} _
            , {EnumTenderColumns.subjEng, "subj_eng"} _
            , {EnumTenderColumns.subjChi, "subj_chi"} _
            , {EnumTenderColumns.contactPersonName, "contact_person_name"} _
            , {EnumTenderColumns.contactPersonPosition, "contact_person_position"} _
            , {EnumTenderColumns.contactPersonEmailAddress, "contact_person_email_address"} _
            , {EnumTenderColumns.dateCreated, "date_created"} _
            , {EnumTenderColumns.createdByUserId, "created_by_user_id"} _
            , {EnumTenderColumns.createdBy, "created_by"} _
            , {EnumTenderColumns.projectId, "project_id"} _
            , {EnumTenderColumns.tenderType, "tender_type"} _
            , {EnumTenderColumns.restricted, "restricted"} _
            , {EnumTenderColumns.issueDate, "issue_date"} _
            , {EnumTenderColumns.closingDate, "closing_date"} _
            , {EnumTenderColumns.twoStageAssessment, "2stage_assessment"} _
            , {EnumTenderColumns.evaluationCriteriaStage1TargetCompletionDate, "evaluation_criteria_stage_1_target_completion_date"} _
            , {EnumTenderColumns.evaluationCriteriaStage2TargetCompletionDate, "evaluation_criteria_stage_2_target_completion_date"} _
            , {EnumTenderColumns.dateModified, "date_modified"} _
            , {EnumTenderColumns.modifiedByUserId, "modified_by_user_id"} _
            , {EnumTenderColumns.dateReviewed, "date_reviewed"} _
            , {EnumTenderColumns.reviewedByUserId, "reviewed_by_user_id"} _
            , {EnumTenderColumns.dateApproved, "date_approved"} _
            , {EnumTenderColumns.approvedByUserId, "approved_by_user_id"} _
            , {EnumTenderColumns.dateIssued, "date_issued"} _
            , {EnumTenderColumns.issuedByUserId, "issued_by_user_id"} _
            , {EnumTenderColumns.dateClosed, "date_closed"} _
            , {EnumTenderColumns.closedByUserId, "closed_by_user_id"} _
            , {EnumTenderColumns.dateAborted, "date_aborted"} _
            , {EnumTenderColumns.abortedByUserId, "aborted_by_user_id"} _
            , {EnumTenderColumns.dateArchived, "date_archived"} _
            , {EnumTenderColumns.dateDearchived, "date_dearchived"} _
            , {EnumTenderColumns.dearchivedByUserId, "dearchived_by_user_id"} _
            , {EnumTenderColumns.dateAwarded, "date_awarded"} _
            , {EnumTenderColumns.awardedByUserId, "awarded_by_user_id"} _
            , {EnumTenderColumns.moduleName, "module_name"} _
            , {EnumTenderColumns.deptName, "dept_name"} _
            , {EnumTenderColumns.evaluationCriteriaId, "evaluation_criteria_id"} _
            , {EnumTenderColumns.evaluationCriteriaName, "evaluation_criteria_name"} _
            , {EnumTenderColumns.evaluationCriteriaStage1PassingScore, "evaluation_criteria_stage_1_passing_score"} _
            , {EnumTenderColumns.evaluationCriteriaStage2PassingScore, "evaluation_criteria_stage_2_passing_score"} _
            , {EnumTenderColumns.evaluationCriteriaTechnicalWeighted, "evaluation_criteria_technical_weighted"} _
            , {EnumTenderColumns.evaluationCriteriaPriceWeighted, "evaluation_criteria_price_weighted"} _
            , {EnumTenderColumns.contactPersonTelNumber, "contact_person_tel_number"} _
            , {EnumTenderColumns.contactPersonFaxNumber, "contact_person_fax_number"} _
            , {EnumTenderColumns.modifiedBy, "modified_by"} _
            , {EnumTenderColumns.reviewedBy, "reviewed_by"} _
            , {EnumTenderColumns.approvedBy, "approved_by"} _
            , {EnumTenderColumns.issuedBy, "issued_by"} _
            , {EnumTenderColumns.closedBy, "closed_by"} _
            , {EnumTenderColumns.abortedBy, "aborted_by"} _
            , {EnumTenderColumns.dearchivedBy, "dearchived_by"} _
            , {EnumTenderColumns.awardedBy, "awarded_by"}
        }

        ''' <summary>
        ''' Receives an array of <see cref="EnumTenderColumns"/> and returns a comma separated string for SQL query columns selection.
        ''' </summary>
        ''' <param name="cols"></param>
        ''' <returns>a comma separated string, e.g. "id, tender_id, created_by"</returns>
        Public Shared Function GetCommaSeparatedColNames(cols As EnumTenderColumns()) As String
            Dim _list = New List(Of String)
            For Each col In cols
                _list.Add(GetName(col))
            Next
            Dim colNames = Join(_list.ToArray(), ", ")
            Return colNames
        End Function
    End Class



End Namespace
