USE [SETS-SINO-VMAPP14001]
GO
/****** Object:  Table [dbo].[AI_exception_data]    Script Date: 9/11/2023 9:45:05 AM ******/
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
/****** Object:  Table [dbo].[AI5561]    Script Date: 9/11/2023 9:45:05 AM ******/
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
/****** Object:  Table [dbo].[AI5611]    Script Date: 9/11/2023 9:45:05 AM ******/
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

ALTER TABLE [dbo].[boq_template_supplier_info_temp] ADD  DEFAULT ((0)) FOR [Sum]
GO
ALTER TABLE [dbo].[boq_template_supplier_info_temp] ADD  DEFAULT ('') FOR [Currency]
GO
ALTER TABLE [dbo].[ets_commodity_score_sheet_table] ADD  DEFAULT ('') FOR [passing_score]
GO
ALTER TABLE [dbo].[ets_form_of_business_code_table] ADD  CONSTRAINT [DF_ets_form_of_business_table_order]  DEFAULT ((999)) FOR [sequence]
GO
ALTER TABLE [dbo].[ets_non_working_date_table] ADD  CONSTRAINT [DF_ets_non_working_date_table_enabled]  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[ets_procurer_approval_flow_table] ADD  DEFAULT ((0)) FOR [enable]
GO
ALTER TABLE [dbo].[ets_procurer_approval_table] ADD  DEFAULT (getdate()) FOR [date_modified]
GO
ALTER TABLE [dbo].[ets_procurer_dept_code_table] ADD  CONSTRAINT [DF_ets_procurer_dept_code_table_date_created]  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[ets_procurer_table] ADD  CONSTRAINT [DF__ets_procu__addr___396E5EB4]  DEFAULT ('') FOR [addr_eng_4]
GO
ALTER TABLE [dbo].[ets_procurer_table] ADD  CONSTRAINT [DF__ets_procu__addr___3A6282ED]  DEFAULT ('') FOR [addr_chi_4]
GO
ALTER TABLE [dbo].[ets_procurer_table] ADD  DEFAULT ('') FOR [addr_eng_5]
GO
ALTER TABLE [dbo].[ets_procurer_table] ADD  DEFAULT ('') FOR [addr_chi_5]
GO
ALTER TABLE [dbo].[ets_supplier_approval_commodity_list_table] ADD  DEFAULT ((0)) FOR [blacklisted]
GO
ALTER TABLE [dbo].[ets_supplier_approval_commodity_list_table] ADD  DEFAULT ((0)) FOR [suspended]
GO
ALTER TABLE [dbo].[ets_supplier_commodity_list_table] ADD  DEFAULT ((0)) FOR [blacklisted]
GO
ALTER TABLE [dbo].[ets_supplier_commodity_list_table] ADD  DEFAULT ((0)) FOR [suspended]
GO
ALTER TABLE [dbo].[ets_supplier_file_download_list_table] ADD  CONSTRAINT [DF_ets_supplier_file_download_list_table_creaded_by_user_id]  DEFAULT ((0)) FOR [created_by_user_id]
GO
ALTER TABLE [dbo].[ets_supplier_table] ADD  CONSTRAINT [DF_ets_supplier_table_supplier_code]  DEFAULT ('') FOR [supplier_code]
GO
ALTER TABLE [dbo].[ets_supplier_table] ADD  CONSTRAINT [DF__ets_suppl__gradi__19F5B35B]  DEFAULT ('') FOR [grading]
GO
ALTER TABLE [dbo].[ets_supplier_table] ADD  CONSTRAINT [DF__ets_suppl__addr___3D3EEF98]  DEFAULT ('') FOR [addr_eng_4]
GO
ALTER TABLE [dbo].[ets_supplier_table] ADD  CONSTRAINT [DF__ets_suppl__addr___57F2E5D4]  DEFAULT ('') FOR [addr_eng_5]
GO
ALTER TABLE [dbo].[ets_supplier_table] ADD  CONSTRAINT [DF__ets_suppl__addr___3E3313D1]  DEFAULT ('') FOR [addr_chi_4]
GO
ALTER TABLE [dbo].[ets_supplier_table] ADD  CONSTRAINT [DF__ets_suppl__addr___58E70A0D]  DEFAULT ('') FOR [addr_chi_5]
GO
ALTER TABLE [dbo].[ets_task_scheduler_table] ADD  DEFAULT ((0)) FOR [settings]
GO
ALTER TABLE [dbo].[ets_task_scheduler_table] ADD  DEFAULT ((0)) FOR [recur_every]
GO
ALTER TABLE [dbo].[ets_task_scheduler_table] ADD  DEFAULT ((0)) FOR [weekday]
GO
ALTER TABLE [dbo].[ets_task_scheduler_table] ADD  DEFAULT (getdate()) FOR [date_created]
GO
ALTER TABLE [dbo].[ets_tender_evaluation_criteria_code_table] ADD  CONSTRAINT [DF_ets_technical_evaluation_criteria_code_table_order]  DEFAULT ((999)) FOR [sequence]
GO
ALTER TABLE [dbo].[ets_tender_invitation_list_table] ADD  CONSTRAINT [DF_ets_tender_invitation_list_table_permanent_indicator]  DEFAULT ((0)) FOR [permanent_indicator]
GO
ALTER TABLE [dbo].[ets_tender_opening_record_tenderer_table] ADD  DEFAULT ((0)) FOR [dq]
GO
ALTER TABLE [dbo].[ets_tender_score_sheet_table] ADD  CONSTRAINT [DF__ets_tende__passi__15660868]  DEFAULT ('') FOR [passing_score]
GO
ALTER TABLE [dbo].[ets_type_of_supplier_code_table] ADD  CONSTRAINT [DF_ets_type_of_supplier_code_table_charset]  DEFAULT ('en') FOR [charset]
GO
ALTER TABLE [dbo].[ets_type_of_supplier_code_table] ADD  CONSTRAINT [DF_ets_type_of_supplier_code_table_order]  DEFAULT ((999)) FOR [sequence]
GO
ALTER TABLE [dbo].[Log00000_bak] ADD  CONSTRAINT [DF_Log00000_LogDate]  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[Log00000_bak] ADD  CONSTRAINT [DF_Log00000_LogType]  DEFAULT ((0)) FOR [LogType]
GO
ALTER TABLE [dbo].[Log00000_bak] ADD  CONSTRAINT [DF_Log00000_MsgType]  DEFAULT ((0)) FOR [MsgType]
GO
ALTER TABLE [dbo].[Log00000_bak] ADD  CONSTRAINT [DF_Log00000_FileSize]  DEFAULT ((0)) FOR [FileSize]
GO
ALTER TABLE [dbo].[Log00001_bak] ADD  CONSTRAINT [DF_Log00001_LogDate]  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[Log00001_bak] ADD  CONSTRAINT [DF_Log00001_LogType]  DEFAULT ((0)) FOR [LogType]
GO
ALTER TABLE [dbo].[Log00001_bak] ADD  CONSTRAINT [DF_Log00001_MsgType]  DEFAULT ((0)) FOR [MsgType]
GO
ALTER TABLE [dbo].[Log00001_bak] ADD  CONSTRAINT [DF_Log00001_FileSize]  DEFAULT ((0)) FOR [FileSize]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Disable if supplier register in system' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ets_tender_invitation_email_list_table', @level2type=N'COLUMN',@level2name=N'enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If supplier register in system add supplier id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ets_tender_invitation_email_list_table', @level2type=N'COLUMN',@level2name=N'supplier_id'
GO
