USE [SETS-SINO-VMAPP14001]
GO

/****** Object:  Table [dbo].[ets_tender_table]    Script Date: 8/26/2023 4:58:10 PM ******/
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


