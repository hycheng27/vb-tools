/****** Object:  Table [dbo].[ets_tender_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[name] [nvarchar](1000) NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NULL,
	[procurer_id] [int] NOT NULL,
	[module_name] [varchar](50) NULL,
	[dept_name] [nvarchar](100) NULL,
	[version_id] [varchar](32) NOT NULL,
	[version_no] [int] NOT NULL,
	[tender_type] [int] NULL,
	[restricted] [bit] NULL,
	[status] [int] NOT NULL,
	[ref] [varchar](50) NOT NULL,
	[subj_eng] [nvarchar](200) NOT NULL,
	[subj_chi] [nvarchar](200) NOT NULL,
	[issue_date] [datetime] NULL,
	[closing_date] [datetime] NULL,
	[evaluation_criteria_id] [varchar](50) NULL,
	[evaluation_criteria_name] [nvarchar](200) NULL,
	[2stage_assessment] [bit] NULL,
	[evaluation_criteria_stage_1_passing_score] [nvarchar](100) NULL,
	[evaluation_criteria_stage_1_target_completion_date] [datetime] NULL,
	[evaluation_criteria_stage_2_passing_score] [nvarchar](100) NULL,
	[evaluation_criteria_stage_2_target_completion_date] [datetime] NULL,
	[evaluation_criteria_technical_weighted] [varchar](50) NULL,
	[evaluation_criteria_price_weighted] [varchar](50) NULL,
	[contact_person_name] [nvarchar](100) NOT NULL,
	[contact_person_position] [nvarchar](200) NOT NULL,
	[contact_person_tel_number] [nvarchar](50) NULL,
	[contact_person_fax_number] [nvarchar](50) NULL,
	[contact_person_email_address] [nvarchar](255) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by_user_id] [int] NULL,
	[modified_by] [nvarchar](100) NULL,
	[date_reviewed] [datetime] NULL,
	[reviewed_by_user_id] [int] NULL,
	[reviewed_by] [nvarchar](100) NULL,
	[date_approved] [datetime] NULL,
	[approved_by_user_id] [int] NULL,
	[approved_by] [nvarchar](100) NULL,
	[date_issued] [datetime] NULL,
	[issued_by_user_id] [int] NULL,
	[issued_by] [nvarchar](100) NULL,
	[date_closed] [datetime] NULL,
	[closed_by_user_id] [int] NULL,
	[closed_by] [nvarchar](100) NULL,
	[date_aborted] [datetime] NULL,
	[aborted_by_user_id] [int] NULL,
	[aborted_by] [nvarchar](100) NULL,
	[date_archived] [datetime] NULL,
	[date_dearchived] [datetime] NULL,
	[dearchived_by_user_id] [int] NULL,
	[dearchived_by] [nvarchar](100) NULL,
	[date_awarded] [datetime] NULL,
	[awarded_by_user_id] [int] NULL,
	[awarded_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_tender_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_user_role_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_user_role_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[role_name] [varchar](50) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[enabled] [bit] NOT NULL,
	[send_email] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_ets_tender_user_role_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_user_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_user_table](
	[id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[realname] [nvarchar](100) NOT NULL,
	[dept_name] [nvarchar](100) NULL,
	[position] [nvarchar](200) NULL,
	[tel_number] [nvarchar](50) NULL,
	[fax_number] [nvarchar](50) NULL,
	[email_address] [nvarchar](255) NULL,
	[password] [varchar](32) NULL,
	[signature] [varchar](32) NULL,
	[enabled] [bit] NOT NULL,
	[date_locked] [datetime] NULL,
	[locked] [bit] NULL,
	[session_id] [varchar](50) NULL,
	[session_status] [smallint] NOT NULL,
	[last_visit] [datetime] NULL,
	[last_password] [datetime] NULL,
	[login_count] [int] NOT NULL,
	[lost_password_request_count] [int] NOT NULL,
	[failed_login_count] [smallint] NOT NULL,
	[cookie_string] [varchar](64) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_procurer_user_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[procurer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AI5561_import_data_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AI5561_import_data_view]
  AS
    select tRef.ref AS Tender_no , tEmail.email_address AS Prepare_by  ,tId.*
    from
         (SELECT  * from
                         (SELECT   ROW_NUMBER() OVER (partition BY tender_id
                           ORDER BY tender_id DESC) AS row,  dataT.* , pT.email_address From
                                                                                             (select AiData.* , userT.date_created , userT.user_id from
                                                                                                                                                        (
                                                                                                                                                        select tender_id.id AS tender_id, tender_id.status AS status ,  st.value  AS Project_name ,  nT.value  AS Project_no ,  eT.value  AS Est_cost_w_profit
                                                                                                                                                        from (select id , status from ets_tender_table ) AS tender_id
                                                                                                                                                                 FULL OUTER join (select tender_id, value from ets_tender_string_table where name = 'Project_name') AS sT
                                                                                                                                                                 on tender_id.id = st.tender_id
                                                                                                                                                                 FULL OUTER join (select tender_id, value from ets_tender_string_table where name = 'Project_no') AS nT
                                                                                                                                                                 on tender_id.id = nt.tender_id
                                                                                                                                                                 FULL OUTER join (select tender_id, value from ets_tender_string_table where name = 'Est_cost_w_profit') AS eT
                                                                                                                                                                 on tender_id.id = et.tender_id
                                                                                                                                                        where tender_id.id is not null) AS AiData
                                                                                                                                                          inner join  (select * from ets_tender_user_role_table where role_name = 'buyer' and sequence = 2) AS userT
                                                                                                                                                            on AiData.tender_id = userT.tender_id) As dataT
                                                                                               inner join ets_procurer_user_table as pT
                                                                                                 on pT.id = dataT.user_id)AS dt
          where dt.row = 1) As tId
           INNER JOIN ets_tender_table as tRef
             on tId.tender_id = tRef.id
           INNER JOIN ets_procurer_user_table as tEmail
             on tId.user_id = tEmail.id
GO
/****** Object:  Table [dbo].[ets_tender_status_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_status_code_table](
	[procurer_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_tender_status_code_table] PRIMARY KEY CLUSTERED 
(
	[procurer_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AI_exception_data]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AI_exception_data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ai] [char](10) NOT NULL,
	[tender_id] [int] NOT NULL,
	[date] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AI5611]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AI5611](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tender_ref] [nvarchar](50) NOT NULL,
	[Doc_no] [nvarchar](10) NOT NULL,
	[Vendor_no] [nvarchar](10) NOT NULL,
	[Date] [nvarchar](8) NOT NULL,
	[Release_date] [nvarchar](8) NOT NULL,
	[Payment_terms] [nvarchar](4) NOT NULL,
	[Incoterms] [nvarchar](3) NOT NULL,
	[Currency] [nvarchar](5) NOT NULL,
	[Amount] [decimal](13, 2) NOT NULL,
	[Purchase_org] [nvarchar](4) NOT NULL,
	[Purchase_grp] [nvarchar](3) NOT NULL,
	[Company] [nvarchar](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_file_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_file_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[clarification_id] [int] NULL,
	[addendum_id] [int] NULL,
	[query_id] [int] NULL,
	[contract_id] [int] NULL,
	[category] [varchar](200) NULL,
	[description] [nvarchar](500) NOT NULL,
	[remark] [nvarchar](500) NULL,
	[diskfile] [nvarchar](250) NOT NULL,
	[filename] [nvarchar](250) NOT NULL,
	[folder] [nvarchar](250) NOT NULL,
	[filesize] [int] NOT NULL,
	[file_type] [varchar](250) NOT NULL,
	[signature] [varchar](32) NULL,
	[status] [varchar](50) NULL,
	[date_created] [datetime] NOT NULL,
	[neop_approval_id] [int] NULL,
	[submission_deadline] [datetime] NULL,
	[pta_approval_id] [int] NULL,
	[ptc_approval_id] [int] NULL,
	[target_version] [int] NULL,
	[target_bill_no] [varchar](10) NULL,
 CONSTRAINT [PK__ets_tender_file_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AI5571_assessment_report_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AI5571_assessment_report_view]
AS
SELECT        Tender_no, groupTable.T_STATUS AS STATUS, tf.id, tf.diskfile, tf.filename, tf.date_created
FROM            (SELECT        ROW_NUMBER() OVER (PARTITION BY tender_id
                          ORDER BY tender_id DESC) AS row, t .id AS Tender_no, t .issue_date AS Issue_date, t .closing_date AS Closing_date,
                             (SELECT        value
                               FROM            dbo.ets_tender_string_table AS ets_tender_string_table_18
                               WHERE        (NAME = 'Expiry_date') AND (tender_id = t .id)) AS Expiry_date,
                             (SELECT        description
                               FROM            dbo.ets_tender_status_code_table
                               WHERE        (code = t .STATUS)) AS T_STATUS
FROM            dbo.ets_tender_table AS t INNER JOIN
                         dbo.ets_tender_string_table AS ts ON t .id = ts .tender_id
WHERE        ((SELECT        ts .value
                            WHERE        (ts .tender_id = t .id) AND (ts .NAME = 'po_released')) LIKE 'Y') OR
                         (t .STATUS = 100) OR
                             ((SELECT        COUNT(*) AS Expr1
                                 FROM            dbo.AI5611
                                 WHERE        (Tender_ref = t .ref)) = 0) AND
                             ((SELECT        CASE WHEN isdate(SUBSTRING(value, 1, 11)) = 1 THEN CAST(SUBSTRING(value, 1, 11) AS DATETIME) ELSE CAST('1/1/1900' AS DATETIME) END AS Expr1
                                 FROM            dbo.ets_tender_string_table AS ets_tender_string_table_18
                                 WHERE        (NAME = 'Expiry_date') AND (tender_id = t .id)) <= GETDATE())) AS groupTable, ets_tender_file_table AS tf
WHERE        groupTable.row = '1' AND T_STATUS = 'Contract Award' AND groupTable.Tender_no = tf.tender_id AND tf.category = 'assessment_report' AND
                         (tf.file_type = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' OR
                         tf.file_type = 'application/vnd.ms-excel') AND groupTable.Tender_no NOT IN (select tender_id from  AI_exception_data where ai = 'AI5571' )
GO
/****** Object:  View [dbo].[AI5571_exception_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AI5571_exception_view]
  AS
    select sourceT.tender_id
    from
         (select  coalesce(case1.tender_id , case3.tender_id , case2.tender_id) AS tender_id from
                                                                                                  (SELECT tender_id From
                                                                                                                         (SELECT tender_id , CAST(convert(nvarchar(max),value) AS datetime)  AS Expr1
                                                                                                                          FROM dbo.ets_tender_string_table WHERE (name = 'Expiry_date') ) AS st
                                                                                                   where   st.Expr1 <= GETDATE()) as case1

                                                                                                      Full outer join (SELECT id AS tender_id , status  from dbo.ets_tender_table where status = 200 Or status = 100) as case2
                                                                                                      on case1.tender_id = case2.tender_id

                                                                                                      Full outer join (SELECT tender_id from dbo.ets_tender_string_table  WHERE name = 'po_released' and value like 'Y') as case3
                                                                                                      on case1.tender_id = case3.tender_id

          Where case1.tender_id is null or case2.tender_id is null or case3.tender_id is null) AS sourceT
           LEFT JOIN (select tender_id from ets_tender_string_table where name = 'Project_no' and value is not null and CONVERT(VARCHAR(MAX),value) != '') AS proNoT
             on sourceT.tender_id = proNoT.tender_id
           LEFT JOIN (SELECT tender_id From AI_exception_data where ai = 'AI5571' ) As comparedT
             on sourceT.tender_id = comparedT.tender_id

    Where comparedT.tender_id is null and proNoT.tender_id is not null
GO
/****** Object:  View [dbo].[AI5571_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AI5571_view]
  AS
     SELECT
            substring(Project_no,1,25) AS Project_no,
            substring(Tender_no,1,16) AS Tender_no,
            Issue_date,
            Closing_date,
            left(case WHEN ISDATE(CONVERT(varchar,Expiry_date)) = 1
            then CONVERT(varchar,CONVERT(datetime,CONVERT(varchar,Expiry_date)),103)
            Else '' End,10) Expiry_date,
            substring(Status,1,50) AS Status,
            substring(Remark,1,255) AS Remark,
            substring(Receiver,1,4000) AS Receiver,
            substring(Revised_quote,1,1) AS Revised_quote,
            substring(Vendor,1,10) AS Vendor,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Lab_carcass),',','')),15) AS Lab_carcass,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Lab_riser),',','')),15) AS Lab_riser,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Lab_app),',','')),15) AS Lab_app,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Meter_install),',','')),15) AS Meter_install,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Lab_siteco),',','')),15) AS Lab_siteco,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Lab_other),',','')),15) AS Lab_other,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Mat_carcass),',','')),15) AS Mat_carcass,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Mat_riser),',','')),15) AS Mat_riser,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Mat_app),',','')),15) AS Mat_app,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Mat_other),',','')),15) AS Mat_other,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Amr_install),',','')),15) AS Amr_install,
            RIGHT(Convert(decimal(12,2),REPLACE(CONVERT(VARCHAR(MAX),Other),',','')),15) AS Other ,
            substring(Scaffolding,1,1) AS Scaffolding

    from (SELECT  Tender_id , Project_no, Tender_no, CONVERT(nvarchar,Issue_date,103) AS Issue_date, CONVERT(nvarchar,Closing_date,103) AS Closing_date, Expiry_date, Status, Remark, Receiver, Revised_quote, Vendor, isNULL(Lab_carcass, '0.00')
                                                                                      AS Lab_carcass, isNULL(Lab_riser, '0.00') AS Lab_riser, isNULL(Lab_app, '0.00') AS Lab_app, isNULL(Meter_install, '0.00') AS Meter_install, isNULL(Lab_siteco, '0.00') AS Lab_siteco, isNULL(Lab_other, '0.00') AS Lab_other, isNULL(Mat_carcass, '0.00')
                                                                                      AS Mat_carcass, isNULL(Mat_riser, '0.00') AS Mat_riser, isNULL(Mat_app, '0.00') AS Mat_app, isNULL(Mat_other, '0.00') AS Mat_other, isNULL(Amr_install, '0.00') AS Amr_install, isNULL(Other, '0.00') AS Other, isNULL(Scaffolding, '1')
                                                                                      AS Scaffolding
          FROM            (SELECT    Tender_id ,    ROW_NUMBER() OVER (partition BY tender_id
            ORDER BY tender_id DESC) AS row,
                                     ISNULL((SELECT        value
                                      FROM            dbo.ets_tender_string_table
                                      WHERE        (name = 'Project_no') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> ''),'') AS Project_no,
                                     t.ref AS Tender_no,
                                     ISNULL(CONVERT(varchar,t.issue_date, 103),'') AS Issue_date,
                                     ISNULL(CONVERT(varchar,t .closing_date, 103),'') AS Closing_date,
                                     ISNULL((SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_18
                                      WHERE        (name = 'Expiry_date') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> ''),'') AS Expiry_date,
                                     (SELECT        description
                                      FROM            dbo.ets_tender_status_code_table
                                      WHERE        (code = t .status)) AS Status,
                                     ISNULL((SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_17
                                      WHERE        (name = 'Tender Detail Remark') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> ''),'') AS Remark,
                                     ISNULL((SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_16
                                      WHERE        (name = 'Receiver') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> ''),'') AS Receiver,
                                     ISNULL((SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_15
                                      WHERE        (name = 'Revised Quote') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> ''),'0') AS Revised_quote,
                                     ISNULL((SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_14
                                      WHERE        (name = 'Contractor Name') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> ''),'') AS Vendor,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_13
                                      WHERE        (name = 'Lab_carcass') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Lab_carcass,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_12
                                      WHERE        (name = 'Lab_riser') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Lab_riser,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_11
                                      WHERE        (name = 'Lab_app') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Lab_app,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_10
                                      WHERE        (name = 'Meter_install') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Meter_install,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_9
                                      WHERE        (name = 'Lab_siteco') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Lab_siteco,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_8
                                      WHERE        (name = 'Lab_other') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Lab_other,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_7
                                      WHERE        (name = 'Mat_carcass') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Mat_carcass,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_6
                                      WHERE        (name = 'Mat_riser') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Mat_riser,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_5
                                      WHERE        (name = 'Mat_app') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Mat_app,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_4
                                      WHERE        (name = 'Mat_other') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Mat_other,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_3
                                      WHERE        (name = 'Amr_install') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Amr_install,
                                     (SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_2
                                      WHERE        (name = 'Other') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> '') AS Other,
                                     ISNULL((SELECT        value
                                      FROM            dbo.ets_tender_string_table AS ets_tender_string_table_1
                                      WHERE        (name = 'Scaffolding') AND (tender_id = t .id) And CONVERT(nvarchar,value) <> ''),'2') AS Scaffolding
                           FROM            dbo.ets_tender_table AS t INNER JOIN
                                               dbo.ets_tender_string_table AS ts ON t .id = ts .tender_id
                          ) AS groupTable
          WHERE groupTable.row = '1'  and groupTable.Project_no is not null and CONVERT(VARCHAR(MAX),groupTable.Project_no) != '') AS sourceT

           LEFT JOIN (SELECT tender_id From AI_exception_data where ai = 'AI5571' ) As comparedT
             on sourceT.Tender_id = comparedT.tender_id
    Where comparedT.tender_id is null
GO
/****** Object:  Table [dbo].[PCRate_Buyer_Item]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCRate_Buyer_Item](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenderRefID] [int] NOT NULL,
	[RefNo] [varchar](255) NOT NULL,
	[RefName] [varchar](255) NOT NULL,
	[DisplayName] [varchar](255) NOT NULL,
	[Unit] [varchar](255) NOT NULL,
	[UsedInAnalysis] [bit] NOT NULL,
	[UsedInWMS] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PCRate_Supplier_Quote]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCRate_Supplier_Quote](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenderRefID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
	[ItemRefNo] [varchar](255) NOT NULL,
	[Price] [varchar](255) NOT NULL,
	[OriginalPrice] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_loa_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_loa_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[ref] [varchar](50) NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_replied] [datetime] NULL,
	[replied_by_user_id] [int] NULL,
	[replied_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_tender_loa_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_table](
	[id] [int] NOT NULL,
	[app_id] [int] NOT NULL,
	[version_id] [varchar](32) NOT NULL,
	[version_no] [int] NOT NULL,
	[supplier_code] [varchar](50) NOT NULL,
	[account_type] [int] NOT NULL,
	[status] [int] NOT NULL,
	[approval_status] [int] NOT NULL,
	[grading] [varchar](50) NOT NULL,
	[cmpy_name_eng] [nvarchar](300) NULL,
	[cmpy_name_chi] [nvarchar](300) NULL,
	[addr_eng_1] [nvarchar](255) NULL,
	[addr_eng_2] [nvarchar](255) NULL,
	[addr_eng_3] [nvarchar](255) NULL,
	[addr_eng_4] [nvarchar](255) NULL,
	[addr_eng_5] [nvarchar](255) NULL,
	[addr_chi_1] [nvarchar](255) NULL,
	[addr_chi_2] [nvarchar](255) NULL,
	[addr_chi_3] [nvarchar](255) NULL,
	[addr_chi_4] [nvarchar](255) NULL,
	[addr_chi_5] [nvarchar](255) NULL,
	[registered_country_group] [varchar](50) NULL,
	[registered_country] [varchar](50) NULL,
	[digital_certificate_type] [varchar](50) NULL,
	[organization_unit] [nvarchar](200) NULL,
	[key_id] [int] NULL,
	[contact_person_name] [nvarchar](100) NULL,
	[contact_person_position] [nvarchar](200) NULL,
	[contact_person_tel_area_code] [varchar](50) NULL,
	[contact_person_tel_number] [nvarchar](50) NULL,
	[contact_person_fax_area_code] [varchar](50) NULL,
	[contact_person_fax_number] [nvarchar](50) NULL,
	[contact_person_mobile_no_area_code] [varchar](50) NULL,
	[contact_person_mobile_no] [nvarchar](50) NULL,
	[contact_person_email_address] [nvarchar](255) NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[date_suspended] [datetime] NULL,
	[suspended_by] [nvarchar](100) NULL,
	[date_purged] [datetime] NULL,
	[purged_by] [nvarchar](255) NULL,
	[contact_person_lastname] [nvarchar](50) NULL,
	[contact_person_firstname] [nvarchar](50) NULL,
	[register_source] [tinyint] NULL,
 CONSTRAINT [PK__ets_supp__6F8A0A346BEEF189] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AI5581_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AI5581_view]
AS
SELECT viewT.ref,  viewT.item, viewT.unit_rate, viewT.unit , viewT.tender_no,
       right(viewT.sap_contractor_ID,6) as sap_contractor_ID
from
(SELECT          ts.tender_id ,
                 s.SupplierID,
                 s.ItemRefNo AS ref,
                                (SELECT          RefName
                                  FROM               dbo.PCRate_Buyer_Item
                                  WHERE           (RefNo = s.ItemRefNo) AND (TenderRefID = s.TenderRefID)) AS item, s.Price AS unit_rate,
                                (SELECT          Unit
                                  FROM               dbo.PCRate_Buyer_Item AS PCRate_Buyer_Item_1
                                  WHERE           (RefNo = s.ItemRefNo) AND (TenderRefID = s.TenderRefID)) AS unit, t.ref AS tender_no,
                            suppT.supplier_code AS sap_contractor_ID
FROM                        dbo.ets_tender_table AS t INNER JOIN
                            dbo.ets_tender_string_table AS ts ON t.id = ts.tender_id AND ts.name = 'loa_loi_released' AND
                            ts.value LIKE 'Y' INNER JOIN
    (select PCRate_Supplier_Quote.ID, TenderRefID, SupplierID, ItemRefNo, Price,OriginalPrice from PCRate_Supplier_Quote full outer join AI_exception_data
    on AI_exception_data.tender_id = PCRate_Supplier_Quote.TenderRefID
         and AI_exception_data.ai = 'AI5581'
    where AI_exception_data.tender_id is null) AS s ON t.id = s.TenderRefID AND s.Price <> 'N/A' INNER JOIN

    (select PCRate_Buyer_Item.ID, TenderRefID, RefNo,RefName, DisplayName,Unit,UsedInAnalysis,UsedInWMS from PCRate_Buyer_Item full outer join AI_exception_data
    on AI_exception_data.tender_id = PCRate_Buyer_Item.TenderRefID
         and AI_exception_data.ai = 'AI5581'
    where AI_exception_data.tender_id is null) AS b ON t.id = b.TenderRefID AND b.UsedInWMS = '1' AND s.ItemRefNo = b.RefNo  INNER JOIN
    ets_supplier_table AS suppT On s.SupplierID = suppT.id
                            ) viewT
inner join ets_tender_loa_table on viewT.tender_id = ets_tender_loa_table.tender_id
and viewT.SupplierID = ets_tender_loa_table.supplier_id
GO
/****** Object:  Table [dbo].[ets_tel_area_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tel_area_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[charset] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_tel_area_code_table] UNIQUE CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC,
	[charset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_approval_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[procurer_id] [int] NOT NULL,
	[path] [varchar](200) NOT NULL,
	[tender_id] [int] NULL,
	[ref] [varchar](50) NULL,
	[subj_eng] [nvarchar](200) NULL,
	[supplier_id] [int] NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[version_id] [varchar](32) NOT NULL,
	[version_no] [int] NOT NULL,
	[request_type] [varchar](200) NOT NULL,
	[request_count] [smallint] NOT NULL,
	[requestor_user_id] [varchar](50) NOT NULL,
	[status] [smallint] NOT NULL,
	[attachment_filename] [nvarchar](255) NOT NULL,
	[attachment_filename_id] [int] NOT NULL,
	[remark] [nvarchar](500) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[date_read] [datetime] NULL,
	[read_by] [nvarchar](100) NULL,
	[date_reviewed] [datetime] NULL,
	[reviewed_by] [nvarchar](100) NULL,
	[date_approved] [datetime] NULL,
	[approved_by] [nvarchar](100) NULL,
	[date_returned] [datetime] NULL,
	[returned_by] [nvarchar](100) NULL,
	[step] [int] NULL,
 CONSTRAINT [PK_ets_supplier_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_purchase_org_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_purchase_org_code_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [char](1) NULL,
	[org] [varchar](4) NULL,
	[descr] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_string_table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](255) NOT NULL,
	[Category2] [nvarchar](255) NOT NULL,
	[Keyword] [nvarchar](255) NULL,
	[Value] [nvarchar](max) NULL,
	[Description] [nvarchar](255) NULL,
	[Status] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_commodity_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_commodity_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[code_1] [varchar](50) NOT NULL,
	[code_2] [varchar](50) NULL,
	[code_3] [varchar](50) NULL,
	[code_4] [varchar](50) NULL,
	[code_5] [varchar](50) NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[original_code] [varchar](50) NULL,
	[enabled] [varchar](1) NULL,
	[sequence] [smallint] NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_commodity_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO