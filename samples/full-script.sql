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
/****** Object:  Table [dbo].[ets_commodity_supplier_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_commodity_supplier_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[commodity_code] [varchar](50) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[tender_id] [int] NULL,
	[version_no] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_commodity_supplier_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_string_table](
	[supplier_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_supplier_string_table] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[AI5591_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AI5591_view]
AS
Select
           remarkT.Action,
           remarkT.Vendor_no,
           remarkT.Account_group,
           remarkT.Name1,
           remarkT.Name2,
           remarkT.Street,
           remarkT.District,
           remarkT.City,
           remarkT.Country,
           remarkT.email1,
           remarkT.email2,
           remarkT.email3,
           remarkT.email4,
           remarkT.email5,
           remarkT.email6,
           remarkT.email7,
           remarkT.Phone,
           remarkT.Fax,
           remarkT.URL,
           remarkT.remark As Remark,
           ets_purchase_org_code_table.org AS Company,
           remarkT.Sales_person,
           ISNULL ((CASE
                          WHEN isNull(NULLIF(Contact_no_area_code, ''), '') = ''
                                  Then null
                          ELSE Case
                                 WHEN Contact_no_area_code = '852' Then CONVERT(NVARCHAR(MAX),Contact_no_num)
                                 Else (Contact_no_area_code + CONVERT(NVARCHAR(MAX),Contact_no_num))
                               END
                           END),'') As Contact_no,
           remarkT.Currency,
           remarkT.Payment_terms,
           remarkT.Incoterms,
           remarkT.Incoterms2,
           remarkT.Min_value,
           remarkT.Delivery_time

    From
         (Select
                 suppT.*,
                 etsComT.original_code as code,
                 STUFF((select CONVERT(varchar(4),originalCode) from
(SELECT ROW_NUMBER() OVER (PARTITION BY substring(ets_commodity_code_table.original_code,
                                                Len(ets_commodity_code_table.original_code) - 2,
                                                Len(ets_commodity_code_table.original_code))

  ORDER BY substring(ets_commodity_code_table.original_code,
                                                Len(ets_commodity_code_table.original_code) - 2,
                                                Len(ets_commodity_code_table.original_code))
            DESC) AS row,';' +  substring(ets_commodity_code_table.original_code,
                                                Len(ets_commodity_code_table.original_code) - 2,
                                                Len(ets_commodity_code_table.original_code)) originalCode
                        from ets_commodity_supplier_list_table
                               inner join ets_commodity_code_table
                                 on ets_commodity_code_table.code = ets_commodity_supplier_list_table.commodity_code
                        where ets_commodity_supplier_list_table.supplier_id = suppT.supplier_id
                          and (len(commodity_code) - len(replace(commodity_code,'-',''))) = 4
and LEFT(commodity_code,1) =  etsComT.code) ccT
where ccT.row = 1
                     FOR XML PATH('')), 1, 1,'') AS remark
          From
               (Select filterT.Action,
                       filterT.id As supplier_id,
                       supplier_code AS Vendor_no,

                       ISNULL ((SELECT  value
                                FROM  dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                                WHERE (name = 'supplier_code_type') AND (supplier_id = filterT.id)),'') AS Account_group,

                       CASE When LEN(cmpy_name_eng) > 40 Then
                           left(left(cmpy_name_eng,40),40 - CHARINDEX(' ', reverse(left(cmpy_name_eng,40)) ))
                            ELSE left(cmpy_name_eng,40) END as Name1,

                       ISNULL (CASE When LEN(cmpy_name_eng) > 40 Then
                           SUBSTRING (cmpy_name_eng , 40 - CHARINDEX(' ', reverse(left(cmpy_name_eng,40)) ) +2,40)
                            ELSE Null END,'') AS Name2
                    , addr_eng_1 AS Street, addr_eng_2 AS District, addr_eng_3 AS City,
                       registered_country AS Country,
                       ISNULL ((SELECT          contact_person_email_address
                                FROM              dbo.ets_supplier_table
                                WHERE            (id = filterT.id) and contact_person_email_address <> ''), 'Nil@Nil') AS email1,
                       ISNULL ((SELECT          value
                                FROM              dbo.ets_supplier_string_table AS ets_supplier_string_table_6
                                WHERE          (name = 'contact_person_1_email_address') AND (supplier_id = filterT.id) and CONVERT(NVARCHAR(MAX),value) <> ''), 'Nil@Nil') AS email2,
                       ISNULL ((SELECT          value
                                FROM              dbo.ets_supplier_string_table AS ets_supplier_string_table_5
                                WHERE          (name = 'contact_person_3_email_address') AND (supplier_id = filterT.id) and CONVERT(NVARCHAR(MAX),value) <> ''), 'Nil@Nil') AS email3,
                       ISNULL ((SELECT          value
                                FROM              dbo.ets_supplier_string_table AS ets_supplier_string_table_4
                                WHERE          (name = 'contact_person_4_email_address') AND (supplier_id = filterT.id) and CONVERT(NVARCHAR(MAX),value) <> ''), 'Nil@Nil') AS email4,
                       ISNULL  ((SELECT          value
                                 FROM              dbo.ets_supplier_string_table AS ets_supplier_string_table_3
                                 WHERE          (name = 'contact_person_5_email_address') AND (supplier_id = filterT.id) and CONVERT(NVARCHAR(MAX),value) <> ''), 'Nil@Nil') AS email5,
                       ISNULL ((SELECT          value
                                FROM              dbo.ets_supplier_string_table AS ets_supplier_string_table_2
                                WHERE          (name = 'contact_person_6_email_address') AND (supplier_id = filterT.id) and CONVERT(NVARCHAR(MAX),value) <> ''), 'Nil@Nil') AS email6,
                       ISNULL ((SELECT          value
                                FROM              dbo.ets_supplier_string_table AS ets_supplier_string_table_1
                                WHERE          (name = 'contact_person_2_email_address') AND (supplier_id = filterT.id) and CONVERT(NVARCHAR(MAX),value) <> ''), 'Nil@Nil') AS email7,
                       (CASE
                          WHEN isNull(NULLIF(contact_person_tel_number, ''), '') = ''
                                  Then ''
                          ELSE Case
                                 WHEN telCode.text = '852' Then contact_person_tel_number
                                 Else (telCode.text + contact_person_tel_number)
                               END
                           END) AS Phone,
                       (CASE
                          WHEN isNull(NULLIF(contact_person_fax_number, ''), '') = ''
                                  Then ''
                          ELSE Case
                                 WHEN telCode.text = '852' Then contact_person_fax_number
                                 ELSE ('002' + telCode.text + contact_person_fax_number)
                               END
                           END) AS Fax,
                       ISNULL ((SELECT          value
                        FROM               dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                        WHERE           (name = 'homepage') AND (supplier_id = filterT.id)),'') AS URL,
                       filterT.Lv_1 AS CompanyCode,
                       ISNULL ((SELECT          value
                                FROM               dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                                WHERE           (name = 'contact_person_2_name') AND (supplier_id = filterT.id)),'') AS Sales_person,
                       (SELECT          value
                        FROM               dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                        WHERE           (name = 'contact_person_2_tel_number') AND (supplier_id = filterT.id) ) AS Contact_no_num,
                       (select text from (SELECT  value as tel
                        FROM  dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                        WHERE (name = 'contact_person_2_tel_area_code') AND (supplier_id = filterT.id) ) as tel
                        inner join ets_tel_area_code_table on CONVERT(NVARCHAR(MAX), tel.tel) = CONVERT(NVARCHAR(MAX), ets_tel_area_code_table.code) and ets_tel_area_code_table.charset like 'en') AS Contact_no_area_code,
                       ISNULL ((SELECT          value
                        FROM               dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                        WHERE           (name = 'order_currency') AND (supplier_id = filterT.id)),'') AS Currency,
                       ISNULL ((SELECT          value
                                FROM               dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                                WHERE           (name = 'credit_period') AND (supplier_id = filterT.id)),'') AS Payment_terms,
                       ISNULL ((SELECT          value
                                FROM               dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                                WHERE           (name = 'Incoterms') AND (supplier_id = filterT.id)),'') AS Incoterms,
                       ISNULL ((SELECT          value
                                FROM               dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                                WHERE           (name = 'incoterms_description') AND (supplier_id = filterT.id)),'') AS Incoterms2,
                       ISNULL ((SELECT          value
                                FROM               dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                                WHERE           (name = 'minimum_order_value') AND (supplier_id = filterT.id)),'0.00') AS Min_value,
                       ISNULL ((SELECT          value
                        FROM               dbo.ets_supplier_string_table AS ets_supplier_string_table_7
                        WHERE           (name = 'order_lead_time') AND (supplier_id = filterT.id)),'') AS Delivery_time
                From (
                     Select   filT.id,filT.Action,commodityT.Lv_1
                     From
                          (Select id, Action
                           From (Select 'link' AS link, coalesce(cT.id,uT.id,dT.id) As id ,coalesce(cT.L,uT.L,dT.L) AS Action ,coalesce(cT.date_created , uT.date_modified , dt.date_purged) As actionDate  from

                                                                                                                                                                                                                 (select min(date_approved) as date_created , supplier_id as id ,'C' As L from ets_procurer_approval_table approvalT where approvalT.request_type = 'Submit for Approval' and  approvalT.status = '2' group by supplier_id) AS cT
                                                                                                                                                                                                                     FULL OUTER JOIN
                                                                                                                                                                                                                     (select coalesce(suT.id , commT.supplier_id) AS id , 'U' As L , CASE When isnull(date_created,'1900-1-1') > isnull(date_modified,'1900-1-1') Then date_created else date_modified end AS date_modified
                                                                                                                                                                                                                      From
                                                                                                                                                                                                                           (Select id , date_modified from ets_supplier_table where date_modified != date_created and status > 0)  suT
                                                                                                                                                                                                                               inner JOIN (select supplier_id , max(date_created) AS date_created from ets_commodity_supplier_list_table GROUP BY supplier_id) commT
                                                                                                                                                                                                                               on suT.id = commT.supplier_id) AS uT
                                                                                                                                                                                                                     ON cT.L = uT.L
                                                                                                                                                                                                                     FULL OUTER JOIN  (Select id , date_purged , 'D' AS L from ets_supplier_table where status > 0) AS dT
                                                                                                                                                                                                                     on cT.L = dT.L) As actionDateT
                                  INNER JOIN  (select 'link' AS link , CONVERT(datetime, value ) as exportDate  From boq_string_table Where Category = 'AI' and Category2 = 'AI5591' and keyword = 'ExportDate' and Status = 'Y') AS exportDateT
                                    ON actionDateT.link =  exportDateT.link

                           where actionDate  >= exportDate) AS filT
                            left join (select Lv_1 ,supplier_id AS  supplier_id from
                                                                                     (select LEFT(commodity_code,1) AS Lv_1 , supplier_id , date_created from ets_commodity_supplier_list_table) AS list
                                       group by supplier_id, list.Lv_1) commodityT

                              on filT.id =  commodityT.supplier_id) filterT

                       INNER JOIN ets_supplier_table AS infoT
                         ON filterT.id  = infoT.id

                       INNER JOIN (select * from ets_tel_area_code_table where charset ='en') AS telCode ON infoT.contact_person_tel_area_code = telCode.code) suppT
                 inner join ets_commodity_code_table etsComT
                   on suppT.CompanyCode = etsComT.code) remarkT
           inner join ets_purchase_org_code_table
             on remarkT.code = ets_purchase_org_code_table.code
GO
/****** Object:  View [dbo].[AI5601_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AI5601_view]
AS
	select dataT.*
	From (SELECT t.ref AS TenderRef, t.subj_eng AS TenderName, tsc.description AS Status
				FROM dbo.ets_tender_table AS t
							 INNER JOIN dbo.ets_tender_status_code_table AS tsc ON t.status = tsc.code
				WHERE (select Case
												WHEN approval.ApprovalNum = sendNum.sendNum And sendNum.sendNum > 0
																Then 'Y'
												Else 'N' End
							 from (select tender_id, count(1) as ApprovalNum
										 from ets_procurer_approval_table
										 where (request_type = 'Recommendation Approval (Approver)'
															or request_type = 'Recommendation Approval (Reviewer)'
															or request_type = 'Recommendation Approval (Endorser)')
											 and tender_id = t.id
											 and status = 2
										 group by tender_id) as approval
											inner join (select tender_id, count(1)as sendNum
																	from ets_procurer_approval_table
																	where (request_type = 'Recommendation Approval (Approver)'
																					 or request_type = 'Recommendation Approval (Reviewer)'
																					 or request_type = 'Recommendation Approval (Endorser)')
																		and tender_id = t.id
																	group by tender_id) as sendNum on sendNum.tender_id = approval.tender_id) LIKE
							'Y') dataT
				 left join (select ref
										from AI_exception_data
													 inner join ets_tender_table on AI_exception_data.tender_id = ets_tender_table.id
										where ai = 'AI5601')
			comparedT on dataT.TenderRef = comparedT.ref
	where comparedT.ref is null
GO
/****** Object:  Table [dbo].[ets_tender_final_contract_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_final_contract_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contract_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_final_contract_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_final_contract_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_final_contract_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[pr_no] [varchar](50) NULL,
	[pr_date] [datetime] NULL,
	[po_no] [varchar](50) NULL,
	[po_issue_date] [datetime] NULL,
	[contract_no] [varchar](50) NULL,
	[contract_sum] [varchar](50) NULL,
	[contract_start_date] [datetime] NULL,
	[contract_end_date] [datetime] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_final_contract_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AI5611_import_data_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AI5611_import_data_view]
  AS

    select tenT.ref AS Tender_Ref , refList.po_no ,refList.contract_sum ,  supT.supplier_code , refList.po_issue_date , refList.Release_date , refList.Payment_terms , refList.Incoterms , refList.Currency , refList.Purchase_org , refList.Purchase_grp  , refList.Company
From
(SELECT   ROW_NUMBER() OVER (partition BY etsFinalT.tender_id
                          ORDER BY etsFinalT.tender_id DESC) AS row, etsFinalT.*  ,Company , Release_date, Payment_terms, Incoterms,Currency,Purchase_org, Purchase_grp
from (select coalesce(releaseDateT.tender_id, paymentTermsT.tender_id, incotermsT.tender_id, currencyT.tender_id,
                      purchaseOrgT.tender_id, companyT.tender_id)                            AS tender_id,
             coalesce(releaseDateT.supplier_id, paymentTermsT.supplier_id, incotermsT.supplier_id,
                      currencyT.supplier_id, purchaseOrgT.supplier_id, companyT.supplier_id) AS supplier_id,
             releaseDateT.value                                                              AS Release_date,
             paymentTermsT.value                                                             AS Payment_terms,
             incotermsT.value                                                                AS Incoterms,
             currencyT.value                                                                 AS Currency,
             purchaseOrgT.value                                                              AS Purchase_org,
             companyT.value                                                                  AS Company,
             purchaseGrpT.value                                                              AS Purchase_grp
      from (select tender_id, supplier_id, value, name
            from ets_tender_final_contract_string_table
            where name = 'Release_date') releaseDateT FULL
             OUTER JOIN (select tender_id, supplier_id, value, name
                         from ets_tender_final_contract_string_table
                         where name = 'Payment_terms') paymentTermsT
               on releaseDateT.tender_id = paymentTermsT.tender_id and
                  releaseDateT.supplier_id = paymentTermsT.supplier_id FULL
             OUTER JOIN (select tender_id, supplier_id, value, name
                         from ets_tender_final_contract_string_table
                         where name = 'Incoterms') incotermsT on releaseDateT.tender_id = incotermsT.tender_id and
                                                                 releaseDateT.supplier_id = incotermsT.supplier_id FULL
             OUTER JOIN (select tender_id, supplier_id, value, name
                         from ets_tender_final_contract_string_table
                         where name = 'Currency') currencyT
               on releaseDateT.tender_id = currencyT.tender_id and releaseDateT.supplier_id = currencyT.supplier_id FULL
             OUTER JOIN (select tender_id, supplier_id, value, name
                         from ets_tender_final_contract_string_table
                         where name = 'Purchase_org') purchaseOrgT
               on releaseDateT.tender_id = purchaseOrgT.tender_id and
                  releaseDateT.supplier_id = purchaseOrgT.supplier_id FULL
             OUTER JOIN (select tender_id, supplier_id, value, name
                         from ets_tender_final_contract_string_table
                         where name = 'Company') companyT
               on releaseDateT.tender_id = companyT.tender_id and releaseDateT.supplier_id = companyT.supplier_id
     FULL  OUTER JOIN (select tender_id, supplier_id, value, name
                         from ets_tender_final_contract_string_table
                         where name = 'Purchase_grp') purchaseGrpT
               on releaseDateT.tender_id = purchaseGrpT.tender_id and releaseDateT.supplier_id = purchaseGrpT.supplier_id
     ) AS AiData
     inner join
(select tender_id,supplier_id ,po_no, po_issue_date ,contract_sum, date_created , created_by
from ets_tender_final_contract_table) etsFinalT
on AiData.tender_id = etsFinalT.tender_id and AiData.supplier_id = etsFinalT.supplier_id) AS refList
inner join ets_supplier_table As supT
    on supT.id = refList.supplier_id
inner join ets_tender_table AS tenT
    on tenT.id = refList.tender_id
where row = 1 
GO
/****** Object:  Table [dbo].[boq_incoterms_master]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_incoterms_master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](40) NOT NULL,
	[Descriptions] [varchar](40) NOT NULL,
	[Descriptions2] [varchar](40) NOT NULL,
	[Descriptions3] [varchar](100) NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ets_incoterms_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ets_incoterms_code_table]
AS
SELECT        *, ROW_NUMBER() OVER (ORDER BY Code) AS sequence
FROM            (SELECT DISTINCT Descriptions AS Code, Descriptions3 AS description, CASE WHEN Descriptions = 'Other' THEN 'N' ELSE 'Y' END AS [enabled]
                          FROM            dbo.boq_incoterms_master) AS derivedtbl_1
GO
/****** Object:  View [dbo].[ets_tender_1envelop_list_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[ets_tender_1envelop_list_view]

AS

SELECT a.* 
FROM ets_tender_table a
WHERE id IN (SELECT z.tender_id FROM ets_tender_string_table z WHERE z.tender_id = a.id AND z.name = 'tender_box_folder_1' AND CONVERT(varchar(50), z.value) = '1')
AND id IN (SELECT z.tender_id FROM ets_tender_string_table z WHERE z.tender_id = a.id AND z.name = 'tender_box_folder_2' AND CONVERT(varchar(50), z.value) = '0')
  UNION
SELECT a.* 
FROM ets_tender_table a
WHERE id IN (SELECT z.tender_id FROM ets_tender_string_table z WHERE z.tender_id = a.id AND z.name = 'tender_box_folder_1' AND CONVERT(varchar(50), z.value) = '0')
AND id IN (SELECT z.tender_id FROM ets_tender_string_table z WHERE z.tender_id = a.id AND z.name = 'tender_box_folder_2' AND CONVERT(varchar(50), z.value) = '1')


GO
/****** Object:  View [dbo].[ets_tender_2envelop_list_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[ets_tender_2envelop_list_view]

AS

SELECT a.* 
FROM ets_tender_table a
WHERE id IN (SELECT z.tender_id FROM ets_tender_string_table z WHERE z.tender_id = a.id AND z.name = 'tender_box_folder_1' AND CONVERT(varchar(50), z.value) = '1')
AND id IN (SELECT z.tender_id FROM ets_tender_string_table z WHERE z.tender_id = a.id AND z.name = 'tender_box_folder_2' AND CONVERT(varchar(50), z.value) = '1')


GO
/****** Object:  Table [dbo].[ets_tender_submission_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_submission_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[clarification_id] [int] NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[cmpy_name_chi] [nvarchar](200) NULL,
	[submission_type] [smallint] NOT NULL,
	[key_id] [int] NULL,
	[digital_certificate_type] [varchar](50) NULL,
	[digital_signature] [varchar](50) NULL,
	[signature] [varchar](50) NULL,
	[upload_start_time] [datetime] NULL,
	[upload_end_time] [datetime] NULL,
	[contact_person_name] [nvarchar](100) NULL,
	[contact_person_position] [nvarchar](200) NULL,
	[contact_person_tel_number] [nvarchar](50) NULL,
	[contact_person_fax_number] [nvarchar](50) NULL,
	[contact_person_email_address] [nvarchar](255) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[neop_approval_id] [int] NULL,
	[pta_approval_id] [int] NULL,
	[ptc_approval_id] [int] NULL,
 CONSTRAINT [PK_ets_tender_submission_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_eoi_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_eoi_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[status] [smallint] NULL,
	[category] [varchar](200) NULL,
	[file_id] [int] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_eoi_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_invitation_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_invitation_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[permanent_indicator] [bit] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[reason] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_tender_invitation_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_letter_undertaking_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_letter_undertaking_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[status] [smallint] NULL,
	[category] [varchar](200) NOT NULL,
	[file_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_letter_undertaking_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ets_tender_full_invitation_list_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ets_tender_full_invitation_list_view]
AS
    SELECT 
        a.tender_id 
        ,ISNULL(b.permanent_indicator, 0) AS permanent_indicator
        ,a.supplier_id 
        ,a.supplier_code 
        ,a.cmpy_name_eng 
        ,a.contact_person_name 
        ,a.contact_person_position 
        ,a.contact_person_tel_area_code
        ,a.contact_person_tel_number 
        ,a.contact_person_fax_area_code 
        ,a.contact_person_fax_number 
        ,a.contact_person_email_address
    FROM 
        (SELECT t.id AS tender_id ,s.id AS supplier_id ,s.supplier_code ,s.cmpy_name_eng ,s.contact_person_name ,s.contact_person_position ,s.contact_person_tel_area_code ,s.contact_person_tel_number ,s.contact_person_fax_area_code ,s.contact_person_fax_number ,s.contact_person_email_address
            FROM dbo.ets_tender_table AS t 
                LEFT OUTER JOIN dbo.ets_tender_string_table AS tlu ON tlu.tender_id = t.id AND tlu.name = 'letter_of_undertaking' 
                CROSS JOIN dbo.ets_supplier_table AS s
            WHERE
    --            (1 = 0) AND (tlu.value IS NULL) OR
    --            (1 = 0) AND (CONVERT(varchar(50), tlu.value) <> '1') OR
    --            (1 = 0) AND (CONVERT(varchar(50), tlu.value) = '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_letter_undertaking_table AS z WHERE (tender_id = t.id) AND (status = 1))) OR

                (tlu.value IS NULL) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_invitation_list_table AS z WHERE (tender_id = t.id))) OR
    --            (tlu.value IS NULL) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_download_list_table AS z WHERE (tender_id = t.id))) OR
    --            (tlu.value IS NULL) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_revision_download_list_table AS z WHERE (tender_id = t.id))) OR
    --            (tlu.value IS NULL) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_public_query_download_list_table AS z WHERE (tender_id = t.id))) OR
                (tlu.value IS NULL) AND (s.id IN (SELECT supplier_id FROM (SELECT TOP 1 supplier_id, submission_type FROM dbo.ets_tender_submission_table WHERE tender_id = t.id ORDER BY date_created DESC) AS z WHERE z.submission_type NOT IN (4, 5))) OR
                (tlu.value IS NULL) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_eoi_table AS z WHERE (tender_id = t.id))) OR


                (CONVERT(varchar(50), tlu.value) <> '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_invitation_list_table AS z WHERE (tender_id = t.id))) OR
    --            (CONVERT(varchar(50), tlu.value) <> '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_download_list_table AS z WHERE (tender_id = t.id))) OR
    --            (CONVERT(varchar(50), tlu.value) <> '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_revision_download_list_table AS z WHERE (tender_id = t.id))) OR
    --            (CONVERT(varchar(50), tlu.value) <> '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_public_query_download_list_table AS z WHERE (tender_id = t.id))) OR
                (CONVERT(varchar(50), tlu.value) <> '1') AND (s.id IN (SELECT supplier_id FROM (SELECT TOP 1 supplier_id, submission_type FROM dbo.ets_tender_submission_table WHERE tender_id = t.id ORDER BY date_created DESC) AS z WHERE z.submission_type NOT IN (4, 5))) OR
                (CONVERT(varchar(50), tlu.value) <> '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_eoi_table AS z WHERE (tender_id = t.id))) OR
 
 
                (CONVERT(varchar(50), tlu.value) = '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_invitation_list_table AS z WHERE (tender_id = t.id))) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_letter_undertaking_table AS z WHERE (tender_id = t.id) AND (status = 1))) OR
    --            (CONVERT(varchar(50), tlu.value) = '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_download_list_table AS z WHERE (tender_id = t.id))) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_letter_undertaking_table AS z WHERE (tender_id = t.id) AND (status = 1))) OR
    --            (CONVERT(varchar(50), tlu.value) = '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_revision_download_list_table AS z WHERE (tender_id = t.id))) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_letter_undertaking_table AS z WHERE (tender_id = t.id) AND (status = 1))) OR
    --            (CONVERT(varchar(50), tlu.value) = '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_public_query_download_list_table AS z WHERE (tender_id = t.id))) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_letter_undertaking_table AS z WHERE (tender_id = t.id) AND (status = 1))) OR
                (CONVERT(varchar(50), tlu.value) = '1') AND (s.id IN (SELECT supplier_id FROM (SELECT TOP 1 supplier_id, submission_type FROM dbo.ets_tender_submission_table WHERE tender_id = t.id ORDER BY date_created DESC) AS z WHERE z.submission_type NOT IN (4, 5))) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_letter_undertaking_table AS z WHERE (tender_id = t.id) AND (status = 1))) OR
                (CONVERT(varchar(50), tlu.value) = '1') AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_eoi_table AS z WHERE (tender_id = t.id))) AND (s.id IN (SELECT supplier_id FROM dbo.ets_tender_letter_undertaking_table AS z WHERE (tender_id = t.id) AND (status = 1))) OR


                (1 = 0)
        ) AS a 
        LEFT OUTER JOIN dbo.ets_tender_invitation_list_table AS b ON b.tender_id = a.tender_id AND b.supplier_id = a.supplier_id;
GO
/****** Object:  Table [dbo].[ets_procurer_approval_flow_dept_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_approval_flow_dept_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[procurer_id] [int] NOT NULL,
	[dept_short_name] [varchar](50) NOT NULL,
	[reviewer_user_id] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_procurer_approval_flow_dept_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_dept_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_dept_code_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[procurer_id] [int] NOT NULL,
	[division_code] [nvarchar](50) NULL,
	[dept_name] [nvarchar](100) NULL,
	[short_name] [varchar](50) NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_procurer_dept_code_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[procurer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_project_user_role_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_project_user_role_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[role_name] [varchar](50) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[enabled] [bit] NOT NULL,
	[send_email] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_ets_procurer_project_user_role_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ets_tender_user_role_list_view]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ets_tender_user_role_list_view] AS
SELECT DISTINCT unions.tender_id,
  unions.user_id,
  unions.role_name,
  unions.role_id,
  unions."sequence",
  p_user_table.procurer_id,
  p_user_table.username,
  p_user_table.realname,
  p_user_table.dept_name,
  p_user_table.position,
  p_user_table.tel_number,
  p_user_table.fax_number,
  p_user_table.email_address,
  p_user_table.enabled,
  CONVERT(bit, 1) AS send_email
FROM (
    SELECT tender.id AS tender_id,
      pp_user_role.role_name,
      pp_user_role.role_id,
      pp_user_role.user_id,
      1 AS "sequence"
    FROM dbo.ets_tender_table AS tender
      CROSS JOIN dbo.ets_procurer_project_user_role_table AS pp_user_role
    WHERE (pp_user_role.role_name = 'endorser')

    UNION
    
    SELECT tender_id,
      role_name,
      role_id,
      user_id,
      "sequence"
    FROM dbo.ets_tender_user_role_table
    WHERE (user_id <> - 1)
    
    UNION
    
    SELECT tender.id AS tender_id,
      'reviewer' AS role_name,
      2 AS role_id,
      af_dept.reviewer_user_id AS user_id,
      1 AS "sequence"
    FROM dbo.ets_tender_table AS tender
      INNER JOIN dbo.ets_procurer_dept_code_table AS dept_code ON dept_code.dept_name = tender.dept_name
      INNER JOIN dbo.ets_procurer_approval_flow_dept_table AS af_dept ON af_dept.dept_short_name = dept_code.short_name
  ) AS unions
  INNER JOIN dbo.ets_procurer_user_table AS p_user_table ON p_user_table.id = unions.user_id
  AND p_user_table.enabled = 1
GO
/****** Object:  Table [dbo].[ets_supplier_invitation_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_invitation_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NOT NULL,
	[cmpy_name_chi] [nvarchar](200) NOT NULL,
	[email_address] [nvarchar](255) NULL,
	[verification_code] [varchar](50) NOT NULL,
	[supplier_id] [int] NULL,
	[supplier_code] [varchar](50) NULL,
	[status] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_sent] [datetime] NULL,
	[date_inactive] [datetime] NULL,
	[date_activated] [datetime] NULL,
 CONSTRAINT [PK_ets_supplier_invitation_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[viw_supplier_invitation]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[viw_supplier_invitation]

AS

SELECT id
  , cmpy_name_eng
  , cmpy_name_chi
  , email_address
  , verification_code
  , status = CASE status WHEN 0 THEN 'Invitation Sent' WHEN 1 THEN 'Registering' WHEN 2 THEN 'Application Form Submitted' WHEN 4 THEN 'Purged' ELSE '' END
FROM ets_supplier_invitation_table 

GO
/****** Object:  View [dbo].[Log00000]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Log00000]
AS
SELECT        SessionID, IPAddr, LogDate, LogType, Description, MsgType, Remark, FileSize, ID, Type, Action
FROM            [SETS-SINO-VMAPP14001-LOG].dbo.Log00000 AS Log00000_1
GO
/****** Object:  View [dbo].[Log00001]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Log00001]
AS
SELECT        CmpyID, UserID, LogDate, LogType, Description, SessionID, IPAddr, MsgType, Remark, FileSize, ID, Type, Action
FROM            [SETS-SINO-VMAPP14001-LOG].dbo.Log00001 AS Log00001_1
GO
/****** Object:  Table [dbo].[AI5561]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AI5561](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Project_no] [nvarchar](25) NOT NULL,
	[Project_name] [nvarchar](100) NOT NULL,
	[Tender_no] [nvarchar](50) NULL,
	[Prepare_by] [nvarchar](250) NOT NULL,
	[Est_cost_w_profit] [decimal](13, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_analysis_buyer_data]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_analysis_buyer_data](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [varchar](255) NOT NULL,
	[TenderRefNo] [nvarchar](255) NOT NULL,
	[Data] [nvarchar](255) NOT NULL,
	[Col] [int] NOT NULL,
	[CellRow] [int] NOT NULL,
	[SourceColName] [nvarchar](255) NOT NULL,
	[SourceColID] [int] NULL,
	[Ref] [varchar](255) NOT NULL,
	[Ref2] [varchar](20) NULL,
	[Ref3] [varchar](20) NULL,
	[TenderID] [int] NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[WorksheetName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_analysis_report_history]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_analysis_report_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ref] [varchar](50) NOT NULL,
	[tender_id] [int] NOT NULL,
	[report_generate_date] [datetime] NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_analysis_supplier_data]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_analysis_supplier_data](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [varchar](255) NOT NULL,
	[TenderRefNo] [nvarchar](255) NOT NULL,
	[InitData] [nvarchar](255) NULL,
	[Col] [int] NOT NULL,
	[CellRow] [int] NOT NULL,
	[SupplierID] [varchar](255) NOT NULL,
	[SourceColName] [nvarchar](255) NOT NULL,
	[Ref] [varchar](255) NOT NULL,
	[ColumnID] [int] NULL,
	[Ref2] [varchar](20) NULL,
	[Ref3] [varchar](20) NULL,
	[Currency] [varchar](10) NOT NULL,
	[Incoterms] [varchar](100) NULL,
	[TenderID] [int] NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[CurrentData] [nvarchar](255) NULL,
	[WorksheetName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_currency_details]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_currency_details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NOT NULL,
	[Rate] [varchar](10) NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_currency_master]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_currency_master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Descriptions] [varchar](20) NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_current_index]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_current_index](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [varchar](255) NOT NULL,
	[TenderRefNo] [varchar](255) NOT NULL,
	[Ref] [varchar](255) NOT NULL,
	[Quantity] [decimal](9, 2) NULL,
	[Rate] [decimal](9, 2) NULL,
	[TenderID] [int] NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[WorksheetName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_incoterms_details]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_incoterms_details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NOT NULL,
	[Percentage] [varchar](10) NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_item_summary]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_item_summary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boq_template_info_temp_id] [int] NOT NULL,
	[item_level] [int] NOT NULL,
	[item_key] [nvarchar](max) NOT NULL,
	[cell_row] [int] NOT NULL,
	[cell_col] [nvarchar](10) NOT NULL,
	[item_key_code] [nvarchar](50) NULL,
	[item_free_key] [nvarchar](max) NULL,
	[item_letter_code] [nvarchar](10) NULL,
	[quantity] [nvarchar](10) NULL,
	[ref_quantity] [nvarchar](10) NULL,
	[unit] [nvarchar](10) NULL,
	[group_id] [int] NULL,
	[page_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_item_summary_submission]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_item_summary_submission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boq_template_info_temp_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[boq_item_summary_id] [int] NOT NULL,
	[item_level] [int] NOT NULL,
	[item_key] [nvarchar](max) NOT NULL,
	[cell_row] [int] NOT NULL,
	[cell_col] [nvarchar](10) NOT NULL,
	[item_key_code] [nvarchar](50) NULL,
	[item_free_key] [nvarchar](max) NULL,
	[item_letter_code] [nvarchar](10) NULL,
	[quantity] [nvarchar](10) NULL,
	[ref_quantity] [nvarchar](10) NULL,
	[unit] [nvarchar](10) NULL,
	[rate] [varchar](22) NULL,
	[price] [decimal](18, 4) NULL,
	[group_id] [int] NULL,
	[page_no] [int] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_item_summary_supplementary_information]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_item_summary_supplementary_information](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boq_template_info_temp_id] [int] NOT NULL,
	[cell_row] [int] NOT NULL,
	[cell_col] [nvarchar](10) NOT NULL,
	[item_letter_code] [nvarchar](10) NOT NULL,
	[info_key] [nvarchar](50) NULL,
	[group_id] [int] NULL,
	[page_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_item_summary_supplementary_information_submission]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_item_summary_supplementary_information_submission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boq_template_info_temp_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[boq_item_summary_supplementary_information_id] [int] NOT NULL,
	[cell_row] [int] NOT NULL,
	[cell_col] [nvarchar](10) NOT NULL,
	[item_letter_code] [nvarchar](10) NOT NULL,
	[info_key] [nvarchar](50) NULL,
	[info_value] [nvarchar](max) NULL,
	[group_id] [int] NULL,
	[page_no] [int] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_item_summary_supplier_alternative]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_item_summary_supplier_alternative](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boq_template_info_temp_id] [int] NOT NULL,
	[cell_row] [int] NOT NULL,
	[cell_col] [nvarchar](10) NOT NULL,
	[item_letter_code] [nvarchar](10) NOT NULL,
	[order] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_item_summary_supplier_alternative_submission]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_item_summary_supplier_alternative_submission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boq_template_info_temp_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[boq_item_summary_supplier_alternative_id] [int] NOT NULL,
	[cell_row] [int] NOT NULL,
	[cell_col] [nvarchar](10) NOT NULL,
	[item_letter_code] [nvarchar](10) NOT NULL,
	[order] [int] NOT NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[value] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_supplier_performance_index]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_supplier_performance_index](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[PerformanceIndex] [decimal](6, 4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_supplier_upload_history]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_supplier_upload_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ref] [varchar](255) NULL,
	[tender_id] [int] NOT NULL,
	[file_id] [int] NULL,
	[version] [varchar](20) NOT NULL,
	[file_status] [varchar](20) NULL,
	[supplier_id] [int] NULL,
	[excel_version] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template](
	[TemplateID] [varchar](255) NOT NULL,
	[StartRow] [int] NOT NULL,
	[BuyerColumnStart] [int] NULL,
	[BuyerColumnEnd] [int] NULL,
	[SupplierColumnStart] [int] NULL,
	[BuyerHeaderRow] [int] NULL,
	[SupplierHeaderRowUpper] [int] NULL,
	[SupplierHeaderRowLower] [int] NULL,
	[TemplateType] [nvarchar](100) NULL,
	[TemplateType2] [nvarchar](100) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[TemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_column]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_column](
	[ColumnID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [varchar](255) NOT NULL,
	[ExcelColRef] [int] NOT NULL,
	[ExcelCol] [varchar](255) NOT NULL,
	[ColContent] [varchar](255) NOT NULL,
	[IsMandatoryInProg1] [varchar](255) NULL,
	[IsMandatoryInProg2] [varchar](255) NULL,
	[DataType] [varchar](20) NULL,
	[IsLockCell] [varchar](255) NULL,
	[ExcelColFormulaCheck] [varchar](255) NULL,
	[ExcelColSymbolCheck] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_column_data_type]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_column_data_type](
	[CheckingID] [int] NOT NULL,
	[TemplateID] [varchar](255) NOT NULL,
	[ExcelColRef] [int] NOT NULL,
	[ExcelCol] [varchar](255) NOT NULL,
	[RuleID] [varchar](255) NOT NULL,
	[Parameter] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_data_type_check_rule]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_data_type_check_rule](
	[RuleID] [int] IDENTITY(1,1) NOT NULL,
	[RuleDescription] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_info]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenderRef] [nvarchar](255) NOT NULL,
	[CheckSumValue] [nvarchar](255) NOT NULL,
	[NoOfWorksheet] [int] NOT NULL,
	[Filename] [nvarchar](255) NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[TenderID] [nvarchar](255) NOT NULL,
	[CurrentVersion] [int] NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[TempID] [int] NOT NULL,
	[File_ID] [int] NOT NULL,
	[PathOfPCRateList] [nvarchar](255) NULL,
 CONSTRAINT [PK_boq_template_info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_info_temp]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_info_temp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenderRef] [nvarchar](255) NOT NULL,
	[CheckSum] [nvarchar](255) NOT NULL,
	[NoOfWorksheet] [int] NOT NULL,
	[Filename] [nvarchar](255) NULL,
	[Timestamp] [datetime] NULL,
	[TenderID] [nvarchar](255) NULL,
	[PathOfPCRateList] [nvarchar](255) NULL,
	[version] [int] NOT NULL,
	[BillNo] [varchar](10) NULL,
	[BillDesc] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_label]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_label](
	[LabelID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [varchar](255) NOT NULL,
	[ExcelLocation] [varchar](255) NOT NULL,
	[IsMandatoryInProg1] [varchar](255) NULL,
	[IsMandatoryInProg2] [varchar](255) NULL,
	[LabelType] [varchar](30) NULL,
	[TableName] [varchar](30) NULL,
	[CheckInProg1] [varchar](255) NULL,
	[Lock] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[LabelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_label_data_type]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_label_data_type](
	[CheckingID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [varchar](255) NOT NULL,
	[ExcelLocation] [varchar](255) NOT NULL,
	[RuleID] [varchar](255) NOT NULL,
	[Parameter] [varchar](255) NOT NULL,
	[CheckInProgram] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CheckingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_master_item]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_master_item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[level] [int] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[code_prefix] [varchar](50) NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_boq_template_master_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_submission_guid]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_submission_guid](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[boq_template_info_temp_id] [int] NOT NULL,
	[submission_guid] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_boq_template_submission_guid] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_supplier_info_temp]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_supplier_info_temp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenderRefNo] [varchar](255) NULL,
	[Checksum] [varchar](32) NOT NULL,
	[NumberOfSheet] [int] NULL,
	[FileName] [varchar](max) NULL,
	[TenderID] [int] NOT NULL,
	[Timestamp] [datetime] NULL,
	[ExcelVersion] [int] NULL,
	[Sum] [float] NOT NULL,
	[Currency] [varchar](10) NOT NULL,
	[SupplierId] [int] NULL,
	[SubmissionGuid] [nvarchar](50) NULL,
	[TargetTemplateInfoTempId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boq_template_version]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boq_template_version](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [varchar](255) NOT NULL,
	[version_id] [varchar](20) NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [UK_template_version] UNIQUE NONCLUSTERED 
(
	[TemplateID] ASC,
	[version_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_advertisement_status_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_advertisement_status_code_table](
	[procurer_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_advertisement_status_code_table] PRIMARY KEY CLUSTERED 
(
	[procurer_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_business_nature_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_business_nature_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NULL,
	[sequence] [smallint] NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_business_nature_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_commodity_score_sheet_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_commodity_score_sheet_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[commodity_code] [varchar](50) NOT NULL,
	[item] [varchar](50) NOT NULL,
	[description] [nvarchar](200) NOT NULL,
	[weighting] [varchar](50) NOT NULL,
	[mandatory_pass] [varchar](50) NOT NULL,
	[passing_score] [varchar](50) NOT NULL,
	[sequence] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_commodity_score_sheet_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_contract_type_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_contract_type_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NULL,
	[sequence] [smallint] NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_contract_type_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_contract_type_option_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_contract_type_option_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NULL,
	[sequence] [smallint] NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_contract_type_option_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_currency_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_currency_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_currency_code_table] UNIQUE CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_custom_field_form_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_custom_field_form_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[charset] [varchar](50) NOT NULL,
	[field_id] [int] NOT NULL,
	[form_name] [varchar](200) NOT NULL,
	[field_name] [varchar](100) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[caption] [nvarchar](100) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[length_min] [int] NOT NULL,
	[length_max] [int] NOT NULL,
	[require] [int] NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_custom_field_form_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[charset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_custom_field_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_custom_field_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[possible_values] [nvarchar](255) NOT NULL,
	[default_value] [nvarchar](255) NOT NULL,
	[valid_regexp] [nvarchar](255) NOT NULL,
	[access_level_r] [smallint] NOT NULL,
	[access_level_rw] [smallint] NOT NULL,
	[length_min] [int] NOT NULL,
	[length_max] [int] NOT NULL,
	[require_create] [bit] NOT NULL,
	[require_update] [bit] NOT NULL,
 CONSTRAINT [PK__ets_cust__3213E83F15E52B55] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_dearchive_request_history_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_dearchive_request_history_table](
	[request_history_id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NOT NULL,
	[request_history_date] [datetime] NULL,
	[request_history_changed_by_name] [varchar](62) NULL,
	[request_history_changed_by] [int] NULL,
	[request_history_field] [nvarchar](255) NULL,
	[request_history_change] [nvarchar](255) NULL,
 CONSTRAINT [PK_ets_dearchive_request_history_table] PRIMARY KEY CLUSTERED 
(
	[request_history_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_dearchive_request_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_dearchive_request_table](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[request_reference_no] [varchar](30) NOT NULL,
	[request_reason] [nvarchar](500) NOT NULL,
	[request_status] [int] NOT NULL,
	[request_requestor_name] [varchar](62) NULL,
	[request_requestor_title] [varchar](50) NULL,
	[request_requestor_tel] [varchar](20) NULL,
	[request_requestor_fax] [varchar](20) NULL,
	[request_requestor_email] [varchar](100) NULL,
	[request_requested_by] [int] NULL,
	[request_date] [datetime] NOT NULL,
	[request_modified_by_name] [varchar](62) NULL,
	[request_modified_by] [int] NULL,
	[request_date_modified] [datetime] NULL,
	[request_approved_by_name] [varchar](62) NULL,
	[request_approved_by] [int] NULL,
	[request_date_approved] [datetime] NULL,
	[request_rejected_by_name] [varchar](62) NULL,
	[request_rejected_by] [int] NULL,
	[request_date_rejected] [datetime] NULL,
	[request_completed_by_name] [varchar](62) NULL,
	[request_completed_by] [int] NULL,
	[request_date_completion] [datetime] NULL,
 CONSTRAINT [PK_ets_dearchive_request_table] PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_delegation_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_delegation_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[procurer_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[acting_user_id] [int] NOT NULL,
	[delegate_user_id] [int] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[enabled] [bit] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_created] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[date_modified] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_delegation_relationship_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_delegation_relationship_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[positionid] [varchar](8) NOT NULL,
	[positioncode] [varchar](12) NOT NULL,
	[positionname] [varchar](40) NOT NULL,
	[validfrom] [varchar](8) NOT NULL,
	[validto] [varchar](8) NOT NULL,
	[gradecode] [varchar](12) NOT NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_delegation_user_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_delegation_user_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[name] [nvarchar](40) NOT NULL,
	[gradecode] [varchar](12) NOT NULL,
	[gradename] [varchar](40) NOT NULL,
	[email] [varchar](241) NOT NULL,
	[telephone] [varchar](30) NOT NULL,
	[unitcode] [varchar](12) NOT NULL,
	[divisioncode] [varchar](12) NOT NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_doi_approval_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_doi_approval_string_table](
	[request_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_doi_approval_string_table_1] PRIMARY KEY CLUSTERED 
(
	[request_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_doi_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_doi_approval_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[procurer_id] [int] NOT NULL,
	[path] [varchar](200) NOT NULL,
	[tender_id] [int] NULL,
	[parent_id] [int] NULL,
	[ref] [varchar](50) NULL,
	[subj_eng] [nvarchar](200) NULL,
	[supplier_id] [int] NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[version_id] [varchar](32) NOT NULL,
	[version_no] [int] NOT NULL,
	[request_type] [varchar](200) NOT NULL,
	[request_count] [smallint] NOT NULL,
	[requestor_user_id] [varchar](50) NOT NULL,
	[role_name] [varchar](200) NOT NULL,
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
	[role_id] [int] NULL,
 CONSTRAINT [PK_ets_doi_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_ecert_reminder_log_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_ecert_reminder_log_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CmpyId] [int] NOT NULL,
	[CmpyNameEng] [varchar](128) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[ExpiryDate] [datetime] NOT NULL,
	[SentDate] [datetime] NOT NULL,
	[ReminderType] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_email_template_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_email_template_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[form_name] [varchar](200) NOT NULL,
	[from] [varchar](255) NULL,
	[from_name] [nvarchar](200) NULL,
	[to] [varchar](255) NOT NULL,
	[cc] [varchar](2000) NULL,
	[subject] [nvarchar](255) NULL,
	[plain_text] [nvarchar](max) NULL,
	[diskfile] [nvarchar](255) NULL,
	[to_role_ids] [varchar](60) NULL,
	[cc_role_ids] [varchar](60) NULL,
 CONSTRAINT [PK_ets_email_template_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_estimated_budget_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_estimated_budget_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NULL,
	[sequence] [smallint] NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_estimated_budget_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_form_of_business_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_form_of_business_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_form_of_business_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_form_of_business_status_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_form_of_business_status_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_form_of_business_status_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_http_request_log_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_http_request_log_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[request_type] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[status_text] [varchar](50) NULL,
	[response_text] [nvarchar](max) NULL,
	[date_created] [datetime] NOT NULL,
	[date_read] [datetime] NULL,
 CONSTRAINT [PK_ets_http_request_log_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_ipp_status_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_ipp_status_code_table](
	[procurer_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_ipp_status_code_table] PRIMARY KEY CLUSTERED 
(
	[procurer_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_no_of_staff_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_no_of_staff_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_no_of_staff_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_non_working_date_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_non_working_date_table](
	[calendar_date] [datetime] NOT NULL,
	[holiday_type] [varchar](50) NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [PK_ets_non_working_date_table] PRIMARY KEY CLUSTERED 
(
	[calendar_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_pq_status_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_pq_status_code_table](
	[procurer_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_pq_status_code_table] PRIMARY KEY CLUSTERED 
(
	[procurer_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_prequalified_list_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_prequalified_list_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_prequalified_list_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_private_profile_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_private_profile_code_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[section_name] [nvarchar](255) NOT NULL,
	[key_name] [nvarchar](255) NOT NULL,
	[portal] [nvarchar](255) NOT NULL,
	[value] [nvarchar](255) NOT NULL,
 CONSTRAINT [ets_private_profile_code_table_pk] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_approval_additional_info_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_approval_additional_info_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NULL,
	[comment] [nvarchar](max) NULL,
 CONSTRAINT [ets_procurer_approval_additional_info_table_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_approval_flow_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_approval_flow_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[step] [int] NOT NULL,
	[request_type] [nvarchar](255) NOT NULL,
	[module] [nvarchar](255) NOT NULL,
	[user_role] [nvarchar](255) NOT NULL,
	[reject_to] [int] NOT NULL,
	[enable] [int] NOT NULL,
	[role_id] [int] NULL,
 CONSTRAINT [ets_procurer_approval_flow_table_pk] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_approval_history_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_approval_history_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[attachment_filename] [nvarchar](max) NULL,
	[attachment_filename_id] [int] NULL,
	[remark] [nvarchar](max) NULL,
	[action_type] [nvarchar](255) NOT NULL,
	[date_action] [datetime] NOT NULL,
	[action_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [ets_procurer_approval__history_table_pk] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_approval_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_approval_string_table](
	[request_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_supplier_approval_string_table_1] PRIMARY KEY CLUSTERED 
(
	[request_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_contact_person_dept_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_contact_person_dept_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[procurer_id] [int] NOT NULL,
	[dept_short_name] [varchar](50) NOT NULL,
	[user_id] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_procurer_contact_person_dept_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_division_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_division_code_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[division_code] [nvarchar](50) NULL,
	[division_name] [nvarchar](500) NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_procurer_division_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_history_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_history_table](
	[procurer_id] [int] NOT NULL,
	[history_no] [int] NOT NULL,
	[history_date] [datetime] NULL,
	[history_changed_by_name] [nvarchar](100) NULL,
	[history_changed_by_user_id] [varchar](50) NULL,
	[history_field] [nvarchar](255) NULL,
	[history_change] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_procurer_history_table] PRIMARY KEY CLUSTERED 
(
	[procurer_id] ASC,
	[history_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_keystore_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_keystore_string_table](
	[key_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_procurer_keystore_string_table] PRIMARY KEY CLUSTERED 
(
	[key_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_keystore_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_keystore_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[procurer_id] [int] NOT NULL,
	[digital_certificate_type] [varchar](50) NOT NULL,
	[key_length] [smallint] NOT NULL,
	[issuer_name] [nvarchar](255) NOT NULL,
	[common_name] [nvarchar](255) NOT NULL,
	[email_address] [nvarchar](255) NOT NULL,
	[country] [varchar](50) NOT NULL,
	[serial_number] [varchar](50) NOT NULL,
	[issue_date] [datetime] NOT NULL,
	[expiry_date] [datetime] NOT NULL,
	[signature] [varchar](32) NOT NULL,
	[revoked] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_procurer_keystore_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_opening_team_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_opening_team_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[opening_team_name] [nvarchar](255) NOT NULL,
	[opening_team_short_name] [nvarchar](255) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_procurer_opening_team_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_opening_team_user_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_opening_team_user_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[opening_team_id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[sequence] [smallint] NOT NULL,
	[enabled] [bit] NOT NULL,
	[send_email] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_procurer_opening_team_user_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_project_sysproperties_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_project_sysproperties_table](
	[project_id] [int] NOT NULL,
	[section_name] [varchar](50) NOT NULL,
	[key_name] [varchar](50) NOT NULL,
	[key_value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_procurer_project_sysproperties_table] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC,
	[section_name] ASC,
	[key_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_project_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_project_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_name] [nvarchar](255) NOT NULL,
	[project_short_name] [nvarchar](255) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_procurer_project_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_registration_approval_flow_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_registration_approval_flow_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[procurer_id] [int] NOT NULL,
	[dept_short_name] [varchar](50) NOT NULL,
	[reviewer_user_id] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_procurer_registration_approval_flow_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_table](
	[id] [int] NOT NULL,
	[version_id] [varchar](32) NOT NULL,
	[version_no] [int] NOT NULL,
	[account_type] [int] NOT NULL,
	[status] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NOT NULL,
	[cmpy_name_chi] [nvarchar](200) NOT NULL,
	[addr_eng_1] [nvarchar](50) NOT NULL,
	[addr_eng_2] [nvarchar](50) NOT NULL,
	[addr_eng_3] [nvarchar](50) NOT NULL,
	[addr_eng_4] [nvarchar](50) NOT NULL,
	[addr_chi_1] [nvarchar](50) NOT NULL,
	[addr_chi_2] [nvarchar](50) NOT NULL,
	[addr_chi_3] [nvarchar](50) NOT NULL,
	[addr_chi_4] [nvarchar](50) NOT NULL,
	[contact_person_name] [nvarchar](100) NOT NULL,
	[contact_person_position] [nvarchar](200) NOT NULL,
	[contact_person_tel_number] [nvarchar](50) NOT NULL,
	[contact_person_fax_number] [nvarchar](50) NULL,
	[contact_person_email_address] [nvarchar](255) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[addr_eng_5] [nvarchar](50) NOT NULL,
	[addr_chi_5] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__ets_proc__3213E83F392E6792] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_user_group_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_user_group_table](
	[id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[group_code] [varchar](100) NOT NULL,
	[group_name] [nvarchar](100) NOT NULL,
	[enabled] [bit] NOT NULL,
	[locked] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_ets_procurer_user_group_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[procurer_id] ASC,
	[group_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_user_history_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_user_history_table](
	[user_id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[history_no] [int] NOT NULL,
	[history_date] [datetime] NULL,
	[history_changed_by_name] [nvarchar](100) NULL,
	[history_changed_by_user_id] [varchar](50) NULL,
	[history_field] [nvarchar](255) NULL,
	[history_change] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_procurer_user_history_table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[procurer_id] ASC,
	[history_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_user_password_history_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_user_password_history_table](
	[user_id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[password_no] [int] NOT NULL,
	[password] [varchar](50) NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_procurer_user_password_history_table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[procurer_id] ASC,
	[password_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_user_preferences_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_user_preferences_table](
	[procurer_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[section_name] [varchar](50) NOT NULL,
	[key_name] [varchar](50) NOT NULL,
	[key_value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_procurer_user_preferences_table] PRIMARY KEY CLUSTERED 
(
	[procurer_id] ASC,
	[user_id] ASC,
	[section_name] ASC,
	[key_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_user_role_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_user_role_table](
	[user_id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[role_name] [varchar](50) NOT NULL,
	[enabled] [bit] NOT NULL,
	[send_email] [bit] NOT NULL,
	[sequence] [smallint] NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_ets_procurer_user_role_table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[procurer_id] ASC,
	[role_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_procurer_user_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_procurer_user_string_table](
	[user_id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_procurer_user_text_table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[procurer_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_property_sub_category_1_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_property_sub_category_1_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_property_sub_category_1_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_property_sub_category_2_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_property_sub_category_2_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_property_sub_category_2_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_property_sub_category_2_max_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_property_sub_category_2_max_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_property_sub_category_2_max_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_property_sub_category_2_min_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_property_sub_category_2_min_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_property_sub_category_2_min_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_registered_before_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_registered_before_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_registered_before_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_registered_country_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_registered_country_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[charset] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_registered_country_code_table] UNIQUE CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC,
	[charset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_rfp_status_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_rfp_status_code_table](
	[procurer_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_rfp_status_code_table] PRIMARY KEY CLUSTERED 
(
	[procurer_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_rfq_status_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_rfq_status_code_table](
	[procurer_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_rfq_status_code_table] PRIMARY KEY CLUSTERED 
(
	[procurer_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_send_invites_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_send_invites_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NOT NULL,
	[cmpy_name_chi] [nvarchar](200) NOT NULL,
	[email_address] [nvarchar](255) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_send_invites_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_sole_sourcing_category_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_sole_sourcing_category_code_table](
	[procurer_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_sole_sourcing_category_code_table] PRIMARY KEY CLUSTERED 
(
	[procurer_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_standard_document_file_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_standard_document_file_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
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
 CONSTRAINT [PK__ets_standard_document_file_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_standing_list_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_standing_list_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NULL,
	[sequence] [smallint] NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_standing_list_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_approval_commodity_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_approval_commodity_list_table](
	[app_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[commodity_code] [varchar](50) NOT NULL,
	[enabled] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[blacklisted] [bit] NULL,
	[suspended] [bit] NULL,
	[valid_until] [datetime] NULL,
	[status_remark] [varchar](50) NULL,
 CONSTRAINT [PK_ets_supplier_approval_commodity_list_table] PRIMARY KEY CLUSTERED 
(
	[app_id] ASC,
	[supplier_id] ASC,
	[commodity_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_approval_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_approval_string_table](
	[app_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_supplier_approval_string_table] PRIMARY KEY CLUSTERED 
(
	[app_id] ASC,
	[supplier_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_approval_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[version_no] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](max) NULL,
	[cmpy_name_chi] [nvarchar](max) NULL,
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
	[date_reviewed] [datetime] NULL,
	[reviewed_by] [nvarchar](100) NULL,
	[date_approved] [datetime] NULL,
	[approved_by] [nvarchar](100) NULL,
	[date_returned] [datetime] NULL,
	[returned_by] [nvarchar](100) NULL,
	[status] [int] NOT NULL,
	[contact_person_lastname] [nvarchar](50) NULL,
	[contact_person_firstname] [nvarchar](50) NULL,
	[register_source] [nvarchar](10) NULL,
 CONSTRAINT [PK__ets_supplier_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_assessment_scoresheet_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_assessment_scoresheet_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contract_id] [int] NOT NULL,
	[assessment_id] [int] NOT NULL,
	[project_manager_user_id] [int] NULL,
	[supplier_id] [int] NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[sequence] [smallint] NOT NULL,
	[item] [varchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[weighting] [varchar](50) NULL,
	[mandatory_pass] [varchar](50) NULL,
	[score] [varchar](50) NULL,
	[remark] [nvarchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_supplier_assessment_scoresheet_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_assessment_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_assessment_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contract_id] [int] NOT NULL,
	[project_manager_user_id] [int] NOT NULL,
	[evaluation_criteria_id] [varchar](50) NOT NULL,
	[score_bf] [varchar](50) NOT NULL,
	[score] [varchar](50) NOT NULL,
	[score_cf] [varchar](50) NOT NULL,
	[remark] [nvarchar](max) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_supplier_assessment_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_business_nature_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_business_nature_table](
	[id] [int] NOT NULL,
	[charset] [nvarchar](10) NOT NULL,
	[description] [nvarchar](100) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[enabled] [bit] NOT NULL,
	[category] [int] NOT NULL,
	[sequence] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[charset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_code_table](
	[id] [int] IDENTITY(15,1) NOT NULL,
	[supplier_code] [varchar](50) NOT NULL,
	[version_no] [int] NOT NULL,
	[version_id] [varchar](32) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_supplier_ref_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_commodity_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_commodity_list_table](
	[supplier_id] [int] NOT NULL,
	[commodity_code] [varchar](50) NOT NULL,
	[enabled] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[blacklisted] [bit] NULL,
	[suspended] [bit] NULL,
	[valid_until] [datetime] NULL,
	[status_remark] [varchar](50) NULL,
 CONSTRAINT [PK_ets_supplier_commodity_list_table] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC,
	[commodity_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_export_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_export_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[procurer_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[session_id] [nvarchar](50) NOT NULL,
	[requested_date] [datetime] NOT NULL,
	[processed_date] [datetime] NULL,
	[deleted_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_export_table_bak_20220907]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_export_table_bak_20220907](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[procurer_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[session_id] [nvarchar](50) NOT NULL,
	[requested_date] [datetime] NOT NULL,
	[processed_date] [datetime] NULL,
	[deleted_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_file_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_file_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[supplier_id] [int] NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[created_by_user_id] [int] NOT NULL,
 CONSTRAINT [PK_ets_supplier_file_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_file_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_file_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[category] [varchar](200) NULL,
	[description] [nvarchar](500) NOT NULL,
	[diskfile] [nvarchar](250) NOT NULL,
	[filename] [nvarchar](250) NOT NULL,
	[folder] [nvarchar](250) NOT NULL,
	[filesize] [int] NOT NULL,
	[file_type] [varchar](250) NOT NULL,
	[signature] [varchar](32) NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK__ets_supp__3213E83F5E5FEC41] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_history_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_history_table](
	[supplier_id] [int] NOT NULL,
	[history_no] [int] NOT NULL,
	[history_date] [datetime] NULL,
	[history_changed_by_name] [nvarchar](100) NULL,
	[history_changed_by_user_id] [varchar](50) NULL,
	[history_field] [nvarchar](255) NULL,
	[history_change] [nvarchar](max) NULL,
	[procurer_approval_id] [int] NULL,
	[procurer_approval_additional_info_id] [int] NULL,
 CONSTRAINT [PK_ets_supplier_history_table] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC,
	[history_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_invitation_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_invitation_string_table](
	[request_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_supplier_invitation_string_table] PRIMARY KEY CLUSTERED 
(
	[request_id] ASC,
	[supplier_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_keystore_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_keystore_string_table](
	[key_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[supplier_id] [int] NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_supplier_keystore_string_table] PRIMARY KEY CLUSTERED 
(
	[key_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_keystore_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_keystore_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[digital_certificate_type] [varchar](50) NOT NULL,
	[key_length] [smallint] NOT NULL,
	[issuer_name] [nvarchar](255) NOT NULL,
	[common_name] [nvarchar](255) NOT NULL,
	[email_address] [nvarchar](255) NOT NULL,
	[country] [varchar](50) NOT NULL,
	[serial_number] [varchar](50) NOT NULL,
	[issue_date] [datetime] NOT NULL,
	[expiry_date] [datetime] NOT NULL,
	[signature] [varchar](32) NOT NULL,
	[revoked] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK__ets_supp__3213E83F3CFEF876] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_private_query_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_private_query_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_id] [int] NULL,
	[query_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_supplier_private_query_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_private_query_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_private_query_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_replied] [datetime] NULL,
	[replied_by_user_id] [int] NULL,
	[replied_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_supplier_private_query_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_register_source_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_register_source_code_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [int] NOT NULL,
	[description] [varchar](255) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_status_change_reason_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_status_change_reason_code_table](
	[code] [int] NULL,
	[description] [nvarchar](255) NULL,
	[sequence] [int] NULL,
	[date_created] [datetime] NULL,
	[enabled] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_status_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_status_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[charset] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_supplier_status_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC,
	[charset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_sync_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_sync_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[action] [varchar](1) NOT NULL,
	[process_date] [datetime] NULL,
	[sync_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_type_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_type_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](10) NOT NULL,
	[charset] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [ets_supplier_type_code_table_pk] UNIQUE NONCLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC,
	[charset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_user_history_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_user_history_table](
	[user_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[history_no] [int] NOT NULL,
	[history_date] [datetime] NULL,
	[history_changed_by_name] [nvarchar](100) NULL,
	[history_changed_by_user_id] [varchar](50) NULL,
	[history_field] [nvarchar](255) NULL,
	[history_change] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_supplier_user_history_table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[supplier_id] ASC,
	[history_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_user_password_history_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_user_password_history_table](
	[user_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[password_no] [int] NOT NULL,
	[password] [varchar](50) NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_supplier_user_password_history_table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[supplier_id] ASC,
	[password_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_user_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_user_string_table](
	[user_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_supplier_user_text_table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[supplier_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_supplier_user_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_supplier_user_table](
	[id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[realname] [nvarchar](100) NULL,
	[position] [nvarchar](200) NULL,
	[tel_area_code] [varchar](50) NULL,
	[tel_number] [nvarchar](50) NOT NULL,
	[fax_area_code] [varchar](50) NULL,
	[fax_number] [nvarchar](50) NULL,
	[mobile_no_area_code] [varchar](50) NULL,
	[mobile_no] [nvarchar](50) NULL,
	[email_address] [nvarchar](255) NOT NULL,
	[enabled] [bit] NOT NULL,
	[password] [varchar](32) NOT NULL,
	[signature] [varchar](32) NULL,
	[locked] [bit] NULL,
	[date_locked] [datetime] NULL,
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
	[lastname] [nvarchar](100) NULL,
	[firstname] [nvarchar](50) NULL,
 CONSTRAINT [PK_ets_supplier_user_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_sysproperties_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_sysproperties_table](
	[section_name] [varchar](50) NOT NULL,
	[key_name] [varchar](50) NOT NULL,
	[key_value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_system_properties_table] PRIMARY KEY CLUSTERED 
(
	[section_name] ASC,
	[key_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_system_message_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_system_message_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_system_message_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_system_message_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_system_message_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[module_name] [varchar](50) NULL,
	[tender_id] [int] NULL,
	[procurer_id] [int] NULL,
	[supplier_id] [int] NULL,
	[from] [nvarchar](255) NOT NULL,
	[from_user_id] [int] NULL,
	[from_name] [nvarchar](200) NOT NULL,
	[to] [nvarchar](255) NOT NULL,
	[to_user_id] [int] NULL,
	[to_name] [nvarchar](200) NOT NULL,
	[cc] [nvarchar](2000) NULL,
	[subject] [nvarchar](255) NOT NULL,
	[plain_text] [nvarchar](max) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[date_read] [datetime] NULL,
	[date_sent] [datetime] NULL,
	[error_description] [nvarchar](255) NULL,
 CONSTRAINT [PK_ets_system_message_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_task_scheduler_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_task_scheduler_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[form_name] [varchar](200) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_task_scheduler_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_task_scheduler_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_task_scheduler_table](
	[form_name] [varchar](200) NOT NULL,
	[start_time] [datetime] NOT NULL,
	[settings] [smallint] NOT NULL,
	[recur_every] [smallint] NOT NULL,
	[weekday] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_task_scheduler_table] PRIMARY KEY CLUSTERED 
(
	[form_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_task_scheduler_user_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_task_scheduler_user_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[form_name] [varchar](200) NOT NULL,
	[user_id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_task_scheduler_user_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_archive_request_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_archive_request_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_tender_archive_request_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_assessment_scoresheet_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_assessment_scoresheet_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[assessment_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[procurer_id] [int] NULL,
	[role_name] [varchar](50) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[item] [varchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[weighting] [varchar](50) NULL,
	[mandatory_pass] [varchar](50) NULL,
	[supplier_id] [int] NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[score] [varchar](50) NULL,
	[remark] [nvarchar](500) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_ets_tender_assessment_scoresheet_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_assessment_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_assessment_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage_no] [smallint] NOT NULL,
	[target_completion_date] [datetime] NOT NULL,
	[assessment_start_time] [datetime] NOT NULL,
	[assessment_end_time] [datetime] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_tender_assessment_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_assessment_tenderer_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_assessment_tenderer_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[assessment_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NOT NULL,
	[score] [float] NULL,
	[result] [bit] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_tender_assessment_tenderer_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_assessment_user_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_assessment_user_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[assessment_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[procurer_id] [int] NULL,
	[role_name] [varchar](50) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[enabled] [bit] NULL,
	[status] [smallint] NULL,
	[remark] [nvarchar](1000) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_submitted] [datetime] NULL,
	[date_approved] [datetime] NULL,
	[date_returned] [datetime] NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_ets_tender_assessment_user_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_clarification_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_clarification_approval_table](
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
	[status] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_clarification_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_clarification_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_clarification_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clarification_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_clarification_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_clarification_forward_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_clarification_forward_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clarification_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[user_id] [int] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_clarification_forward_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_clarification_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_clarification_table](
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
 CONSTRAINT [PK_ets_tender_clarification_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_contact_point_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_contact_point_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[send_email] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_tender_contact_point_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_contract_award_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_contract_award_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_contract_award_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_contract_award_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_contract_award_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[status] [smallint] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_contract_award_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_dearchive_request_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_dearchive_request_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_tender_dearchive_request_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_department_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_department_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[dept_code] [varchar](200) NOT NULL,
	[sequence] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_department_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_disabled_supplier_notification_list]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_disabled_supplier_notification_list](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_created] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_document_fee_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_document_fee_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[tender_document_fee] [int] NOT NULL,
	[payment_type] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[category] [varchar](200) NOT NULL,
	[file_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_document_fee_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_doi_tenderer_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_doi_tenderer_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[tenderer_name] [nvarchar](255) NOT NULL,
	[sequence] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_doi_tenderer_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_evaluation_criteria_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_evaluation_criteria_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[2stage] [bit] NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_technical_evaluation_criteria_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_final_contract_supplier_review_rating_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_final_contract_supplier_review_rating_table](
	[id] [int] NOT NULL,
	[review_id] [int] NOT NULL,
	[rating] [int] NOT NULL,
	[comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_final_contract_supplier_review_rating_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_final_contract_supplier_review_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_final_contract_supplier_review_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contract_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[date_created] [datetime] NULL,
	[created_by] [nvarchar](50) NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](50) NULL,
 CONSTRAINT [PK_ets_tender_final_contract_supplier_review_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_history_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_history_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[history_no] [int] NOT NULL,
	[history_date] [datetime] NULL,
	[history_changed_by_name] [nvarchar](100) NULL,
	[history_changed_by_user_id] [varchar](50) NULL,
	[history_field] [nvarchar](255) NULL,
	[history_change] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_history_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_interest_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_interest_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_interest_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_invitation_email_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_invitation_email_list_table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NULL,
	[cmpy_name_eng] [nvarchar](250) NULL,
	[email_address] [nvarchar](250) NULL,
	[enabled] [bit] NULL,
	[supplier_id] [int] NULL,
	[message] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_keystore_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_keystore_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[key_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_keystore_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_loa_approval_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_loa_approval_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NULL,
	[tender_id] [int] NULL,
	[name] [nvarchar](max) NULL,
	[value] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_loa_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_loa_approval_table](
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
	[status] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_loa_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_loa_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_loa_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clarification_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_loa_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_loa_forward_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_loa_forward_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clarification_id] [int] NOT NULL,
	[file_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[user_id] [int] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_loa_forward_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_loa_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_loa_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NULL,
	[name] [nvarchar](max) NULL,
	[value] [nvarchar](max) NULL,
	[loa_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_loc_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_loc_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clarification_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_loc_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_loc_forward_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_loc_forward_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clarification_id] [int] NOT NULL,
	[file_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[user_id] [int] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_loc_forward_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_loc_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_loc_table](
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
 CONSTRAINT [PK_ets_tender_loc_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_negotiation_opening_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_negotiation_opening_approval_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[ref] [varchar](50) NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_replied] [datetime] NULL,
	[replied_by_user_id] [int] NULL,
	[status] [int] NOT NULL,
	[submission_deadline] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_tender_negotiation_opening_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_negotiation_opening_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_negotiation_opening_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[neop_approval_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[supplier_id] [int] NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_negotiation_opening_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_negotiation_opening_log_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_negotiation_opening_log_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[module_name] [varchar](50) NULL,
	[dept_name] [nvarchar](100) NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[opening_start_time] [datetime] NULL,
	[opening_end_time] [datetime] NULL,
	[date_created] [datetime] NOT NULL,
	[date_last_accessed] [datetime] NULL,
	[date_downloaded] [datetime] NULL,
	[date_decrypted] [datetime] NULL,
	[date_uploaded] [datetime] NULL,
	[date_archived] [datetime] NULL,
 CONSTRAINT [PK_ets_tender_negotiation_opening_log_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_negotiation_opening_record_file_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_negotiation_opening_record_file_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[file_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NOT NULL,
	[offer_id] [int] NOT NULL,
	[supplement_id] [smallint] NULL,
	[submission_type] [smallint] NOT NULL,
	[category] [varchar](200) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[diskfile] [nvarchar](250) NOT NULL,
	[filename] [nvarchar](250) NOT NULL,
	[folder] [nvarchar](250) NOT NULL,
	[filesize] [int] NOT NULL,
	[file_type] [varchar](250) NOT NULL,
	[signature] [varchar](32) NULL,
	[date_created] [datetime] NOT NULL,
	[date_uploaded] [datetime] NULL,
	[neop_approval_id] [int] NULL,
 CONSTRAINT [PK_ets_tender_negotiation_opening_record_file_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_negotiation_opening_record_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_negotiation_opening_record_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[opening_start_time] [datetime] NULL,
	[opening_end_time] [datetime] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[date_downloaded] [datetime] NULL,
	[date_decrypted] [datetime] NULL,
	[date_uploaded] [datetime] NULL,
	[neop_approval_id] [int] NULL,
	[remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_negotiation_opening_record_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_negotiation_opening_record_tenderer_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_negotiation_opening_record_tenderer_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[tenderer_ref] [varchar](50) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[digital_certificate_type] [varchar](50) NOT NULL,
	[part_a_count] [smallint] NOT NULL,
	[part_b_count] [smallint] NOT NULL,
	[part_c_count] [smallint] NOT NULL,
	[part_d_count] [smallint] NOT NULL,
	[part_e_count] [smallint] NOT NULL,
	[part_d_fot] [bit] NOT NULL,
	[part_d_bond] [nvarchar](50) NOT NULL,
	[part_d_others] [nvarchar](200) NOT NULL,
	[sample] [bit] NOT NULL,
	[decline] [bit] NOT NULL,
	[no_reply] [bit] NOT NULL,
	[late] [bit] NOT NULL,
	[reopen] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[dq] [bit] NOT NULL,
	[neop_approval_id] [int] NULL,
 CONSTRAINT [PK_ets_tender_negotiation_opening_record_tenderer_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_negotiation_opening_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_negotiation_opening_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[neop_approval_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_negotiation_opening_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_negotiation_opening_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_negotiation_opening_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[neop_approval_id] [int] NOT NULL,
	[ref] [varchar](50) NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[submission_deadline] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_tender_negotiation_opening_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_negotiation_opening_to_suppliers_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_negotiation_opening_to_suppliers_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[neop_approval_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_tender_negotiation_opening_to_suppliers_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_no_response_letter_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_no_response_letter_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_no_response_letter_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_noa_approval_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_noa_approval_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NULL,
	[tender_id] [int] NULL,
	[name] [nvarchar](max) NULL,
	[value] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_noa_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_noa_approval_table](
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
	[status] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_noa_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_noa_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_noa_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clarification_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_noa_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_noa_forward_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_noa_forward_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clarification_id] [int] NOT NULL,
	[file_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[user_id] [int] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_noa_forward_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_noa_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_noa_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NULL,
	[name] [nvarchar](max) NULL,
	[value] [nvarchar](max) NULL,
	[noa_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_noa_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_noa_table](
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
 CONSTRAINT [PK_ets_tender_noa_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_opening_log_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_opening_log_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[module_name] [varchar](50) NULL,
	[dept_name] [nvarchar](100) NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[opening_start_time] [datetime] NULL,
	[opening_end_time] [datetime] NULL,
	[date_created] [datetime] NOT NULL,
	[date_last_accessed] [datetime] NULL,
	[date_downloaded] [datetime] NULL,
	[date_decrypted] [datetime] NULL,
	[date_uploaded] [datetime] NULL,
	[date_archived] [datetime] NULL,
 CONSTRAINT [PK_ets_tender_opening_log_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_opening_record_file_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_opening_record_file_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[file_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NOT NULL,
	[offer_id] [int] NOT NULL,
	[supplement_id] [smallint] NULL,
	[submission_type] [smallint] NOT NULL,
	[category] [varchar](200) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[diskfile] [nvarchar](250) NOT NULL,
	[filename] [nvarchar](250) NOT NULL,
	[folder] [nvarchar](250) NOT NULL,
	[filesize] [int] NOT NULL,
	[file_type] [varchar](250) NOT NULL,
	[signature] [varchar](32) NULL,
	[date_created] [datetime] NOT NULL,
	[date_uploaded] [datetime] NULL,
 CONSTRAINT [PK__ets_tender_opening_record_file_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_opening_record_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_opening_record_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_opening_record_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_opening_record_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_opening_record_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[opening_start_time] [datetime] NULL,
	[opening_end_time] [datetime] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[date_downloaded] [datetime] NULL,
	[date_decrypted] [datetime] NULL,
	[date_uploaded] [datetime] NULL,
 CONSTRAINT [PK_ets_tender_opening_record_table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_opening_record_tenderer_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_opening_record_tenderer_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[tenderer_ref] [varchar](50) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[digital_certificate_type] [varchar](50) NOT NULL,
	[part_a_count] [smallint] NOT NULL,
	[part_b_count] [smallint] NOT NULL,
	[part_c_count] [smallint] NOT NULL,
	[part_d_count] [smallint] NOT NULL,
	[part_e_count] [smallint] NOT NULL,
	[part_d_fot] [bit] NOT NULL,
	[part_d_bond] [nvarchar](50) NOT NULL,
	[part_d_others] [nvarchar](200) NOT NULL,
	[sample] [bit] NOT NULL,
	[decline] [bit] NOT NULL,
	[no_reply] [bit] NOT NULL,
	[late] [bit] NOT NULL,
	[reopen] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[dq] [bit] NOT NULL,
 CONSTRAINT [PK_ets_tender_opening_record_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_payment_file_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_payment_file_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[payment_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_payment_file_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_private_query_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_private_query_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[query_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_private_query_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_private_query_forward_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_private_query_forward_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[query_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[user_id] [int] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_private_query_forward_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_private_query_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_private_query_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_id] [int] NULL,
	[tender_id] [int] NULL,
	[query_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_private_query_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_private_query_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_private_query_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_replied] [datetime] NULL,
	[replied_by_user_id] [int] NULL,
	[replied_by] [nvarchar](100) NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_private_query_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_pta_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_pta_approval_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[ref] [varchar](50) NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[submission_deadline] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_pta_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_pta_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_pta_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pta_approval_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_pta_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_pta_log_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_pta_log_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[module_name] [varchar](50) NULL,
	[dept_name] [nvarchar](100) NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[opening_start_time] [datetime] NULL,
	[opening_end_time] [datetime] NULL,
	[date_created] [datetime] NOT NULL,
	[date_last_accessed] [datetime] NULL,
	[date_downloaded] [datetime] NULL,
	[date_decrypted] [datetime] NULL,
	[date_uploaded] [datetime] NULL,
	[date_archived] [datetime] NULL,
 CONSTRAINT [PK_ets_tender_pta_log_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_pta_record_file_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_pta_record_file_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[file_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NOT NULL,
	[offer_id] [int] NOT NULL,
	[supplement_id] [smallint] NULL,
	[submission_type] [smallint] NOT NULL,
	[category] [varchar](200) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[diskfile] [nvarchar](250) NOT NULL,
	[filename] [nvarchar](250) NOT NULL,
	[folder] [nvarchar](250) NOT NULL,
	[filesize] [int] NOT NULL,
	[file_type] [varchar](250) NOT NULL,
	[signature] [varchar](32) NULL,
	[date_created] [datetime] NOT NULL,
	[date_uploaded] [datetime] NULL,
	[pta_approval_id] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_pta_record_file_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_pta_record_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_pta_record_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[opening_start_time] [datetime] NULL,
	[opening_end_time] [datetime] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[date_downloaded] [datetime] NULL,
	[date_decrypted] [datetime] NULL,
	[date_uploaded] [datetime] NULL,
	[pta_approval_id] [int] NOT NULL,
	[remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_pta_record_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_pta_record_tenderer_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_pta_record_tenderer_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[tenderer_ref] [varchar](50) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[digital_certificate_type] [varchar](50) NOT NULL,
	[part_a_count] [smallint] NOT NULL,
	[part_b_count] [smallint] NOT NULL,
	[part_c_count] [smallint] NOT NULL,
	[part_d_count] [smallint] NOT NULL,
	[part_e_count] [smallint] NOT NULL,
	[part_d_fot] [bit] NOT NULL,
	[part_d_bond] [nvarchar](50) NOT NULL,
	[part_d_others] [nvarchar](200) NOT NULL,
	[sample] [bit] NOT NULL,
	[decline] [bit] NOT NULL,
	[no_reply] [bit] NOT NULL,
	[late] [bit] NOT NULL,
	[reopen] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[dq] [bit] NOT NULL,
	[pta_approval_id] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_pta_record_tenderer_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_pta_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_pta_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[pta_approval_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ets_tender_pta_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_pta_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_pta_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[pta_approval_id] [int] NOT NULL,
	[ref] [varchar](50) NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[submission_deadline] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_pta_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_pta_to_suppliers_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_pta_to_suppliers_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[pta_approval_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_tender_pta_to_suppliers_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_ptc_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_ptc_approval_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[ref] [varchar](50) NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[submission_deadline] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_ptc_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_ptc_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_ptc_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ptc_approval_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_ptc_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_ptc_log_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_ptc_log_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[module_name] [varchar](50) NULL,
	[dept_name] [nvarchar](100) NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[opening_start_time] [datetime] NULL,
	[opening_end_time] [datetime] NULL,
	[date_created] [datetime] NOT NULL,
	[date_last_accessed] [datetime] NULL,
	[date_downloaded] [datetime] NULL,
	[date_decrypted] [datetime] NULL,
	[date_uploaded] [datetime] NULL,
	[date_archived] [datetime] NULL,
 CONSTRAINT [PK_ets_tender_ptc_log_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_ptc_record_file_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_ptc_record_file_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[file_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NOT NULL,
	[offer_id] [int] NOT NULL,
	[supplement_id] [smallint] NULL,
	[submission_type] [smallint] NOT NULL,
	[category] [varchar](200) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[diskfile] [nvarchar](250) NOT NULL,
	[filename] [nvarchar](250) NOT NULL,
	[folder] [nvarchar](250) NOT NULL,
	[filesize] [int] NOT NULL,
	[file_type] [varchar](250) NOT NULL,
	[signature] [varchar](32) NULL,
	[date_created] [datetime] NOT NULL,
	[date_uploaded] [datetime] NULL,
	[ptc_approval_id] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_ptc_record_file_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_ptc_record_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_ptc_record_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[opening_start_time] [datetime] NULL,
	[opening_end_time] [datetime] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[date_downloaded] [datetime] NULL,
	[date_decrypted] [datetime] NULL,
	[date_uploaded] [datetime] NULL,
	[ptc_approval_id] [int] NOT NULL,
	[remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_ptc_record_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_ptc_record_tenderer_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_ptc_record_tenderer_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [smallint] NOT NULL,
	[version_no] [smallint] NOT NULL,
	[tenderer_ref] [varchar](50) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[digital_certificate_type] [varchar](50) NOT NULL,
	[part_a_count] [smallint] NOT NULL,
	[part_b_count] [smallint] NOT NULL,
	[part_c_count] [smallint] NOT NULL,
	[part_d_count] [smallint] NOT NULL,
	[part_e_count] [smallint] NOT NULL,
	[part_d_fot] [bit] NOT NULL,
	[part_d_bond] [nvarchar](50) NOT NULL,
	[part_d_others] [nvarchar](200) NOT NULL,
	[sample] [bit] NOT NULL,
	[decline] [bit] NOT NULL,
	[no_reply] [bit] NOT NULL,
	[late] [bit] NOT NULL,
	[reopen] [bit] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
	[dq] [bit] NOT NULL,
	[ptc_approval_id] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_ptc_record_tenderer_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_ptc_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_ptc_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[ptc_approval_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ets_tender_ptc_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_ptc_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_ptc_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[ptc_approval_id] [int] NOT NULL,
	[ref] [varchar](50) NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[submission_deadline] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_ptc_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_ptc_to_suppliers_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_ptc_to_suppliers_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[ptc_approval_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[date_created] [datetime] NOT NULL,
 CONSTRAINT [PK_ets_tender_ptc_to_suppliers_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_public_query_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_public_query_approval_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[ref] [varchar](50) NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_public_query_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_public_query_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_public_query_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[query_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_public_query_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_public_query_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_public_query_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[ref] [varchar](50) NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_public_query_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_ref_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_ref_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NOT NULL,
	[procurer_id] [int] NOT NULL,
	[module_name] [varchar](50) NOT NULL,
	[dept_name] [nvarchar](100) NULL,
	[version_id] [varchar](32) NOT NULL,
	[version_no] [int] NOT NULL,
	[project_name] [nvarchar](255) NOT NULL,
	[project_short_name] [nvarchar](255) NOT NULL,
	[prefix] [varchar](50) NOT NULL,
	[suffix] [varchar](50) NOT NULL,
	[sequence] [int] NOT NULL,
	[ref] [varchar](50) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_tender_ref_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_register_form_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_register_form_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_id] [int] NULL,
	[tender_id] [int] NULL,
	[request_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_register_form_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_register_form_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_register_form_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[status] [smallint] NULL,
	[category] [varchar](200) NOT NULL,
	[file_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_register_form_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_regret_letter_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_regret_letter_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_regret_letter_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_release_deposit_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_release_deposit_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NOT NULL,
	[release_type] [varchar](50) NULL,
	[bond_ref] [nvarchar](50) NULL,
	[attachment_filename] [nvarchar](255) NULL,
	[attachment_filename_id] [int] NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[date_modified] [datetime] NULL,
	[modified_by] [nvarchar](100) NULL,
 CONSTRAINT [PK_ets_tender_release_deposit_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_request_inspection_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_request_inspection_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_id] [int] NULL,
	[tender_id] [int] NULL,
	[request_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_request_inspection_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_request_inspection_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_request_inspection_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[status] [smallint] NULL,
	[category] [varchar](200) NOT NULL,
	[file_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_request_inspection_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_revision_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_revision_approval_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[ref] [varchar](50) NOT NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_ets_tender_revision_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_revision_download_list_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_revision_download_list_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[addendum_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NULL,
	[file_id] [int] NULL,
	[category] [varchar](200) NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[cmpy_name_eng] [nvarchar](200) NULL,
 CONSTRAINT [PK_ets_tender_revision_download_list_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_revision_string_approval_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_revision_string_approval_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[revision_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_revision_string_approval_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_revision_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_revision_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[revision_id] [int] NOT NULL,
	[tender_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_revision_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_revision_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_revision_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[ref] [varchar](50) NOT NULL,
	[category] [varchar](200) NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by_user_id] [int] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_revision_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_score_sheet_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_score_sheet_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[stage] [int] NOT NULL,
	[item] [varchar](50) NOT NULL,
	[description] [nvarchar](500) NULL,
	[weighting] [varchar](50) NOT NULL,
	[mandatory_pass] [varchar](50) NOT NULL,
	[passing_score] [varchar](50) NOT NULL,
	[sequence] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ets_tender_score_sheet_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_submission_file_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_submission_file_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[clarification_id] [int] NULL,
	[supplier_id] [int] NOT NULL,
	[offer_id] [int] NOT NULL,
	[category] [varchar](200) NULL,
	[description] [nvarchar](500) NOT NULL,
	[diskfile] [nvarchar](250) NOT NULL,
	[filename] [nvarchar](250) NOT NULL,
	[folder] [nvarchar](250) NOT NULL,
	[filesize] [int] NOT NULL,
	[file_type] [varchar](250) NOT NULL,
	[signature] [varchar](32) NULL,
	[date_created] [datetime] NOT NULL,
	[negotiation_id] [int] NULL,
	[pta_id] [int] NULL,
	[ptc_id] [int] NULL,
	[target_version] [int] NULL,
	[target_bill_no] [varchar](10) NULL,
 CONSTRAINT [PK__ets_tender_submission_file_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tender_submission_string_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tender_submission_string_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tender_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[offer_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ets_tender_submission_string_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_tgc_payment_term_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_tgc_payment_term_code_table](
	[procurer_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[charset] [varchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_tgc_payment_term_code_table] PRIMARY KEY CLUSTERED 
(
	[procurer_id] ASC,
	[code] ASC,
	[charset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_type_of_organisation_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_type_of_organisation_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NULL,
	[sequence] [smallint] NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_type_of_organisation_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_type_of_supplier_code_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_type_of_supplier_code_table](
	[cmpy_id] [int] NOT NULL,
	[code] [int] NOT NULL,
	[charset] [varchar](50) NOT NULL,
	[description] [nvarchar](100) NULL,
	[text] [nvarchar](500) NULL,
	[enabled] [varchar](1) NOT NULL,
	[sequence] [smallint] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
 CONSTRAINT [PK_ets_type_of_supplier_code_table] PRIMARY KEY CLUSTERED 
(
	[cmpy_id] ASC,
	[code] ASC,
	[charset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ets_user_role_master_table]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ets_user_role_master_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](50) NOT NULL,
	[role_id] [int] NOT NULL,
	[date_created] [datetime] NOT NULL,
	[date_modified] [datetime] NULL,
	[role_label] [varchar](50) NULL,
 CONSTRAINT [PK_ets_user_role_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_ets_user_role_master] UNIQUE NONCLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log00000_bak]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log00000_bak](
	[SessionID] [varchar](50) NULL,
	[IPAddr] [varchar](15) NOT NULL,
	[LogDate] [datetime] NOT NULL,
	[LogType] [int] NOT NULL,
	[Description] [nvarchar](150) NULL,
	[MsgType] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[FileSize] [varchar](15) NULL,
	[ID] [varchar](50) NULL,
	[Type] [varchar](3) NULL,
	[Action] [varchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log00001_bak]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log00001_bak](
	[CmpyID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[LogDate] [datetime] NOT NULL,
	[LogType] [int] NOT NULL,
	[Description] [nvarchar](150) NULL,
	[SessionID] [varchar](50) NULL,
	[IPAddr] [varchar](15) NULL,
	[MsgType] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[FileSize] [varchar](15) NULL,
	[ID] [varchar](50) NULL,
	[Type] [varchar](3) NULL,
	[Action] [varchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XMLwithOpenXML]    Script Date: 9/1/2023 8:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XMLwithOpenXML](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[XMLData] [xml] NULL,
	[LoadedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO