-- liquibase formatted sql

-- changeset djay:1719192563573-1
CREATE TABLE accounts (id CHAR(36) NOT NULL, name VARCHAR(150) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, account_type VARCHAR(50) NULL, industry VARCHAR(50) NULL, annual_revenue VARCHAR(100) NULL, phone_fax VARCHAR(100) NULL, billing_address_street VARCHAR(150) NULL, billing_address_city VARCHAR(100) NULL, billing_address_state VARCHAR(100) NULL, billing_address_postalcode VARCHAR(20) NULL, billing_address_country VARCHAR(255) NULL, rating VARCHAR(100) NULL, phone_office VARCHAR(100) NULL, phone_alternate VARCHAR(100) NULL, website VARCHAR(255) NULL, ownership VARCHAR(100) NULL, employees VARCHAR(10) NULL, ticker_symbol VARCHAR(10) NULL, shipping_address_street VARCHAR(150) NULL, shipping_address_city VARCHAR(100) NULL, shipping_address_state VARCHAR(100) NULL, shipping_address_postalcode VARCHAR(20) NULL, shipping_address_country VARCHAR(255) NULL, parent_id CHAR(36) NULL, sic_code VARCHAR(10) NULL, campaign_id CHAR(36) NULL, CONSTRAINT PK_ACCOUNTS PRIMARY KEY (id));

-- changeset djay:1719192563573-2
CREATE TABLE accounts_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_ACCOUNTS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-3
CREATE TABLE accounts_bugs (id VARCHAR(36) NOT NULL, account_id VARCHAR(36) NULL, bug_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_ACCOUNTS_BUGS PRIMARY KEY (id));

-- changeset djay:1719192563573-4
CREATE TABLE accounts_cases (id VARCHAR(36) NOT NULL, account_id VARCHAR(36) NULL, case_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_ACCOUNTS_CASES PRIMARY KEY (id));

-- changeset djay:1719192563573-5
CREATE TABLE accounts_contacts (id VARCHAR(36) NOT NULL, contact_id VARCHAR(36) NULL, account_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_ACCOUNTS_CONTACTS PRIMARY KEY (id));

-- changeset djay:1719192563573-6
CREATE TABLE accounts_cstm (id_c CHAR(36) NOT NULL, jjwg_maps_lng_c FLOAT DEFAULT 0 NULL, jjwg_maps_lat_c FLOAT DEFAULT 0 NULL, jjwg_maps_geocode_status_c VARCHAR(255) NULL, jjwg_maps_address_c VARCHAR(255) NULL, CONSTRAINT PK_ACCOUNTS_CSTM PRIMARY KEY (id_c));

-- changeset djay:1719192563573-7
CREATE TABLE accounts_opportunities (id VARCHAR(36) NOT NULL, opportunity_id VARCHAR(36) NULL, account_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_ACCOUNTS_OPPORTUNITIES PRIMARY KEY (id));

-- changeset djay:1719192563573-8
CREATE TABLE acl_actions (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, name VARCHAR(150) NULL, category VARCHAR(100) NULL, acltype VARCHAR(100) NULL, aclaccess INT DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT NULL NULL, CONSTRAINT PK_ACL_ACTIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-9
CREATE TABLE acl_roles (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, name VARCHAR(150) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT NULL NULL, CONSTRAINT PK_ACL_ROLES PRIMARY KEY (id));

-- changeset djay:1719192563573-10
CREATE TABLE acl_roles_actions (id VARCHAR(36) NOT NULL, role_id VARCHAR(36) NULL, action_id VARCHAR(36) NULL, access_override INT DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_ACL_ROLES_ACTIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-11
CREATE TABLE acl_roles_users (id VARCHAR(36) NOT NULL, role_id VARCHAR(36) NULL, user_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_ACL_ROLES_USERS PRIMARY KEY (id));

-- changeset djay:1719192563573-12
CREATE TABLE address_book (assigned_user_id CHAR(36) NOT NULL, bean VARCHAR(50) NULL, bean_id CHAR(36) NOT NULL);

-- changeset djay:1719192563573-13
CREATE TABLE alerts (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, is_read TINYINT(1) DEFAULT NULL NULL, target_module VARCHAR(255) NULL, type VARCHAR(255) NULL, url_redirect VARCHAR(255) NULL, reminder_id CHAR(36) NULL, CONSTRAINT PK_ALERTS PRIMARY KEY (id));

-- changeset djay:1719192563573-14
CREATE TABLE am_projecttemplates (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, status VARCHAR(100) DEFAULT 'Draft' NULL, priority VARCHAR(100) DEFAULT 'High' NULL, override_business_hours TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_AM_PROJECTTEMPLATES PRIMARY KEY (id));

-- changeset djay:1719192563573-15
CREATE TABLE am_projecttemplates_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AM_PROJECTTEMPLATES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-16
CREATE TABLE am_projecttemplates_contacts_1_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, am_projecttemplates_ida VARCHAR(36) NULL, contacts_idb VARCHAR(36) NULL, CONSTRAINT PK_AM_PROJECTTEMPLATES_CONTACTS_1_C PRIMARY KEY (id));

-- changeset djay:1719192563573-17
CREATE TABLE am_projecttemplates_project_1_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, am_projecttemplates_project_1am_projecttemplates_ida VARCHAR(36) NULL, am_projecttemplates_project_1project_idb VARCHAR(36) NULL, CONSTRAINT PK_AM_PROJECTTEMPLATES_PROJECT_1_C PRIMARY KEY (id));

-- changeset djay:1719192563573-18
CREATE TABLE am_projecttemplates_users_1_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, am_projecttemplates_ida VARCHAR(36) NULL, users_idb VARCHAR(36) NULL, CONSTRAINT PK_AM_PROJECTTEMPLATES_USERS_1_C PRIMARY KEY (id));

-- changeset djay:1719192563573-19
CREATE TABLE am_tasktemplates (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, status VARCHAR(100) DEFAULT 'Not Started' NULL, priority VARCHAR(100) DEFAULT 'High' NULL, percent_complete INT DEFAULT 0 NULL, predecessors INT DEFAULT NULL NULL, milestone_flag TINYINT(1) DEFAULT 0 NULL, relationship_type VARCHAR(100) DEFAULT 'FS' NULL, task_number INT DEFAULT NULL NULL, order_number INT DEFAULT NULL NULL, estimated_effort INT DEFAULT NULL NULL, utilization VARCHAR(100) DEFAULT '0' NULL, duration INT DEFAULT NULL NULL, CONSTRAINT PK_AM_TASKTEMPLATES PRIMARY KEY (id));

-- changeset djay:1719192563573-20
CREATE TABLE am_tasktemplates_am_projecttemplates_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, am_tasktemplates_am_projecttemplatesam_projecttemplates_ida VARCHAR(36) NULL, am_tasktemplates_am_projecttemplatesam_tasktemplates_idb VARCHAR(36) NULL, CONSTRAINT PK_AM_TASKTEMPLATES_AM_PROJECTTEMPLATES_C PRIMARY KEY (id));

-- changeset djay:1719192563573-21
CREATE TABLE am_tasktemplates_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AM_TASKTEMPLATES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-22
CREATE TABLE aobh_businesshours (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, opening_hours VARCHAR(100) DEFAULT '1' NULL, closing_hours VARCHAR(100) DEFAULT '1' NULL, open_status TINYINT(1) DEFAULT NULL NULL, day VARCHAR(100) DEFAULT 'monday' NULL, CONSTRAINT PK_AOBH_BUSINESSHOURS PRIMARY KEY (id));

-- changeset djay:1719192563573-23
CREATE TABLE aod_index (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, last_optimised datetime DEFAULT NULL NULL, location VARCHAR(255) NULL, CONSTRAINT PK_AOD_INDEX PRIMARY KEY (id));

-- changeset djay:1719192563573-24
CREATE TABLE aod_index_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOD_INDEX_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-25
CREATE TABLE aod_indexevent (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, error VARCHAR(255) NULL, success TINYINT(1) DEFAULT 0 NULL, record_id CHAR(36) NULL, record_module VARCHAR(255) NULL, CONSTRAINT PK_AOD_INDEXEVENT PRIMARY KEY (id));

-- changeset djay:1719192563573-26
CREATE TABLE aod_indexevent_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOD_INDEXEVENT_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-27
CREATE TABLE aok_knowledge_base_categories (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, CONSTRAINT PK_AOK_KNOWLEDGE_BASE_CATEGORIES PRIMARY KEY (id));

-- changeset djay:1719192563573-28
CREATE TABLE aok_knowledge_base_categories_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOK_KNOWLEDGE_BASE_CATEGORIES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-29
CREATE TABLE aok_knowledgebase (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, status VARCHAR(100) DEFAULT 'Draft' NULL, revision VARCHAR(255) NULL, additional_info TEXT NULL, user_id_c CHAR(36) NULL, user_id1_c CHAR(36) NULL, CONSTRAINT PK_AOK_KNOWLEDGEBASE PRIMARY KEY (id));

-- changeset djay:1719192563573-30
CREATE TABLE aok_knowledgebase_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOK_KNOWLEDGEBASE_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-31
CREATE TABLE aok_knowledgebase_categories (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, aok_knowledgebase_id VARCHAR(36) NULL, aok_knowledge_base_categories_id VARCHAR(36) NULL, CONSTRAINT PK_AOK_KNOWLEDGEBASE_CATEGORIES PRIMARY KEY (id));

-- changeset djay:1719192563573-32
CREATE TABLE aop_case_events (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, case_id CHAR(36) NULL, CONSTRAINT PK_AOP_CASE_EVENTS PRIMARY KEY (id));

-- changeset djay:1719192563573-33
CREATE TABLE aop_case_events_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOP_CASE_EVENTS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-34
CREATE TABLE aop_case_updates (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, case_id CHAR(36) NULL, contact_id CHAR(36) NULL, internal TINYINT(1) DEFAULT NULL NULL, CONSTRAINT PK_AOP_CASE_UPDATES PRIMARY KEY (id));

-- changeset djay:1719192563573-35
CREATE TABLE aop_case_updates_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOP_CASE_UPDATES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-36
CREATE TABLE aor_charts (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, aor_report_id CHAR(36) NULL, type VARCHAR(100) NULL, x_field INT DEFAULT NULL NULL, y_field INT DEFAULT NULL NULL, CONSTRAINT PK_AOR_CHARTS PRIMARY KEY (id));

-- changeset djay:1719192563573-37
CREATE TABLE aor_conditions (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, aor_report_id CHAR(36) NULL, condition_order INT DEFAULT NULL NULL, logic_op VARCHAR(255) NULL, parenthesis VARCHAR(255) NULL, module_path LONGTEXT NULL, field VARCHAR(100) NULL, operator VARCHAR(100) NULL, value_type VARCHAR(100) NULL, value VARCHAR(255) NULL, parameter TINYINT(1) DEFAULT NULL NULL, CONSTRAINT PK_AOR_CONDITIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-38
CREATE TABLE aor_fields (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, aor_report_id CHAR(36) NULL, field_order INT DEFAULT NULL NULL, module_path LONGTEXT NULL, field VARCHAR(100) NULL, display TINYINT(1) DEFAULT NULL NULL, link TINYINT(1) DEFAULT NULL NULL, label VARCHAR(255) NULL, field_function VARCHAR(100) NULL, sort_by VARCHAR(100) NULL, format VARCHAR(100) NULL, total VARCHAR(100) NULL, sort_order VARCHAR(100) NULL, group_by TINYINT(1) DEFAULT NULL NULL, group_order VARCHAR(100) NULL, group_display INT DEFAULT NULL NULL, CONSTRAINT PK_AOR_FIELDS PRIMARY KEY (id));

-- changeset djay:1719192563573-39
CREATE TABLE aor_reports (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, report_module VARCHAR(100) NULL, graphs_per_row INT DEFAULT 2 NULL, CONSTRAINT PK_AOR_REPORTS PRIMARY KEY (id));

-- changeset djay:1719192563573-40
CREATE TABLE aor_reports_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOR_REPORTS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-41
CREATE TABLE aor_scheduled_reports (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, schedule VARCHAR(100) NULL, last_run datetime DEFAULT NULL NULL, status VARCHAR(100) NULL, email_recipients LONGTEXT NULL, aor_report_id CHAR(36) NULL, CONSTRAINT PK_AOR_SCHEDULED_REPORTS PRIMARY KEY (id));

-- changeset djay:1719192563573-42
CREATE TABLE aos_contracts (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, reference_code VARCHAR(255) NULL, start_date date DEFAULT NULL NULL, end_date date DEFAULT NULL NULL, total_contract_value DECIMAL(26, 6) DEFAULT NULL NULL, total_contract_value_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, currency_id CHAR(36) NULL, status VARCHAR(100) DEFAULT 'Not Started' NULL, customer_signed_date date DEFAULT NULL NULL, company_signed_date date DEFAULT NULL NULL, renewal_reminder_date datetime DEFAULT NULL NULL, contract_type VARCHAR(100) DEFAULT 'Type' NULL, contract_account_id CHAR(36) NULL, opportunity_id CHAR(36) NULL, contact_id CHAR(36) NULL, call_id CHAR(36) NULL, total_amt DECIMAL(26, 6) DEFAULT NULL NULL, total_amt_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_amount DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, discount_amount DECIMAL(26, 6) DEFAULT NULL NULL, discount_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, tax_amount DECIMAL(26, 6) DEFAULT NULL NULL, tax_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, shipping_amount DECIMAL(26, 6) DEFAULT NULL NULL, shipping_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, shipping_tax VARCHAR(100) NULL, shipping_tax_amt DECIMAL(26, 6) DEFAULT NULL NULL, shipping_tax_amt_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, total_amount DECIMAL(26, 6) DEFAULT NULL NULL, total_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, CONSTRAINT PK_AOS_CONTRACTS PRIMARY KEY (id));

-- changeset djay:1719192563573-43
CREATE TABLE aos_contracts_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOS_CONTRACTS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-44
CREATE TABLE aos_contracts_documents (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, aos_contracts_id VARCHAR(36) NULL, documents_id VARCHAR(36) NULL, document_revision_id VARCHAR(36) NULL, CONSTRAINT PK_AOS_CONTRACTS_DOCUMENTS PRIMARY KEY (id));

-- changeset djay:1719192563573-45
CREATE TABLE aos_invoices (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, billing_account_id CHAR(36) NULL, billing_contact_id CHAR(36) NULL, billing_address_street VARCHAR(150) NULL, billing_address_city VARCHAR(100) NULL, billing_address_state VARCHAR(100) NULL, billing_address_postalcode VARCHAR(20) NULL, billing_address_country VARCHAR(255) NULL, shipping_address_street VARCHAR(150) NULL, shipping_address_city VARCHAR(100) NULL, shipping_address_state VARCHAR(100) NULL, shipping_address_postalcode VARCHAR(20) NULL, shipping_address_country VARCHAR(255) NULL, number INT NOT NULL, total_amt DECIMAL(26, 6) DEFAULT NULL NULL, total_amt_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_amount DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, discount_amount DECIMAL(26, 6) DEFAULT NULL NULL, discount_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, tax_amount DECIMAL(26, 6) DEFAULT NULL NULL, tax_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, shipping_amount DECIMAL(26, 6) DEFAULT NULL NULL, shipping_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, shipping_tax VARCHAR(100) NULL, shipping_tax_amt DECIMAL(26, 6) DEFAULT NULL NULL, shipping_tax_amt_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, total_amount DECIMAL(26, 6) DEFAULT NULL NULL, total_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, currency_id CHAR(36) NULL, quote_number INT DEFAULT NULL NULL, quote_date date DEFAULT NULL NULL, invoice_date date DEFAULT NULL NULL, due_date date DEFAULT NULL NULL, status VARCHAR(100) NULL, template_ddown_c TEXT NULL, subtotal_tax_amount DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_tax_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, CONSTRAINT PK_AOS_INVOICES PRIMARY KEY (id));

-- changeset djay:1719192563573-46
CREATE TABLE aos_invoices_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOS_INVOICES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-47
CREATE TABLE aos_line_item_groups (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, total_amt DECIMAL(26, 6) DEFAULT NULL NULL, total_amt_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, discount_amount DECIMAL(26, 6) DEFAULT NULL NULL, discount_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_amount DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, tax_amount DECIMAL(26, 6) DEFAULT NULL NULL, tax_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_tax_amount DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_tax_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, total_amount DECIMAL(26, 6) DEFAULT NULL NULL, total_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, parent_type VARCHAR(100) NULL, parent_id CHAR(36) NULL, number INT DEFAULT NULL NULL, currency_id CHAR(36) NULL, CONSTRAINT PK_AOS_LINE_ITEM_GROUPS PRIMARY KEY (id));

-- changeset djay:1719192563573-48
CREATE TABLE aos_line_item_groups_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOS_LINE_ITEM_GROUPS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-49
CREATE TABLE aos_pdf_templates (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` LONGTEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, active TINYINT(1) DEFAULT 1 NULL, type VARCHAR(100) NULL, pdfheader LONGTEXT NULL, pdffooter LONGTEXT NULL, margin_left INT DEFAULT 15 NULL, margin_right INT DEFAULT 15 NULL, margin_top INT DEFAULT 16 NULL, margin_bottom INT DEFAULT 16 NULL, margin_header INT DEFAULT 9 NULL, margin_footer INT DEFAULT 9 NULL, page_size VARCHAR(100) NULL, orientation VARCHAR(100) NULL, CONSTRAINT PK_AOS_PDF_TEMPLATES PRIMARY KEY (id));

-- changeset djay:1719192563573-50
CREATE TABLE aos_pdf_templates_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOS_PDF_TEMPLATES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-51
CREATE TABLE aos_product_categories (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, is_parent TINYINT(1) DEFAULT 0 NULL, parent_category_id CHAR(36) NULL, CONSTRAINT PK_AOS_PRODUCT_CATEGORIES PRIMARY KEY (id));

-- changeset djay:1719192563573-52
CREATE TABLE aos_product_categories_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOS_PRODUCT_CATEGORIES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-53
CREATE TABLE aos_products (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, maincode VARCHAR(100) DEFAULT 'XXXX' NULL, part_number VARCHAR(25) NULL, category VARCHAR(100) NULL, type VARCHAR(100) DEFAULT 'Good' NULL, cost DECIMAL(26, 6) DEFAULT NULL NULL, cost_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, currency_id CHAR(36) NULL, price DECIMAL(26, 6) DEFAULT NULL NULL, price_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, url VARCHAR(255) NULL, contact_id CHAR(36) NULL, product_image VARCHAR(255) NULL, aos_product_category_id CHAR(36) NULL, CONSTRAINT PK_AOS_PRODUCTS PRIMARY KEY (id));

-- changeset djay:1719192563573-54
CREATE TABLE aos_products_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOS_PRODUCTS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-55
CREATE TABLE aos_products_quotes (id CHAR(36) NOT NULL, name TEXT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, currency_id CHAR(36) NULL, part_number VARCHAR(255) NULL, item_description TEXT NULL, number INT DEFAULT NULL NULL, product_qty DECIMAL(18, 4) DEFAULT NULL NULL, product_cost_price DECIMAL(26, 6) DEFAULT NULL NULL, product_cost_price_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, product_list_price DECIMAL(26, 6) DEFAULT NULL NULL, product_list_price_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, product_discount DECIMAL(26, 6) DEFAULT NULL NULL, product_discount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, product_discount_amount DECIMAL(26, 6) DEFAULT NULL NULL, product_discount_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, discount VARCHAR(255) DEFAULT 'Percentage' NULL, product_unit_price DECIMAL(26, 6) DEFAULT NULL NULL, product_unit_price_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, vat_amt DECIMAL(26, 6) DEFAULT NULL NULL, vat_amt_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, product_total_price DECIMAL(26, 6) DEFAULT NULL NULL, product_total_price_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, vat VARCHAR(100) DEFAULT '5.0' NULL, parent_type VARCHAR(100) NULL, parent_id CHAR(36) NULL, product_id CHAR(36) NULL, group_id CHAR(36) NULL, CONSTRAINT PK_AOS_PRODUCTS_QUOTES PRIMARY KEY (id));

-- changeset djay:1719192563573-56
CREATE TABLE aos_products_quotes_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOS_PRODUCTS_QUOTES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-57
CREATE TABLE aos_quotes (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, approval_issue TEXT NULL, billing_account_id CHAR(36) NULL, billing_contact_id CHAR(36) NULL, billing_address_street VARCHAR(150) NULL, billing_address_city VARCHAR(100) NULL, billing_address_state VARCHAR(100) NULL, billing_address_postalcode VARCHAR(20) NULL, billing_address_country VARCHAR(255) NULL, shipping_address_street VARCHAR(150) NULL, shipping_address_city VARCHAR(100) NULL, shipping_address_state VARCHAR(100) NULL, shipping_address_postalcode VARCHAR(20) NULL, shipping_address_country VARCHAR(255) NULL, expiration date DEFAULT NULL NULL, number INT DEFAULT NULL NULL, opportunity_id CHAR(36) NULL, template_ddown_c TEXT NULL, total_amt DECIMAL(26, 6) DEFAULT NULL NULL, total_amt_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_amount DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, discount_amount DECIMAL(26, 6) DEFAULT NULL NULL, discount_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, tax_amount DECIMAL(26, 6) DEFAULT NULL NULL, tax_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, shipping_amount DECIMAL(26, 6) DEFAULT NULL NULL, shipping_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, shipping_tax VARCHAR(100) NULL, shipping_tax_amt DECIMAL(26, 6) DEFAULT NULL NULL, shipping_tax_amt_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, total_amount DECIMAL(26, 6) DEFAULT NULL NULL, total_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, currency_id CHAR(36) NULL, stage VARCHAR(100) DEFAULT 'Draft' NULL, term VARCHAR(100) NULL, terms_c TEXT NULL, approval_status VARCHAR(100) NULL, invoice_status VARCHAR(100) DEFAULT 'Not Invoiced' NULL, subtotal_tax_amount DECIMAL(26, 6) DEFAULT NULL NULL, subtotal_tax_amount_usdollar DECIMAL(26, 6) DEFAULT NULL NULL, CONSTRAINT PK_AOS_QUOTES PRIMARY KEY (id));

-- changeset djay:1719192563573-58
CREATE TABLE aos_quotes_aos_invoices_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, aos_quotes77d9_quotes_ida VARCHAR(36) NULL, aos_quotes6b83nvoices_idb VARCHAR(36) NULL, CONSTRAINT PK_AOS_QUOTES_AOS_INVOICES_C PRIMARY KEY (id));

-- changeset djay:1719192563573-59
CREATE TABLE aos_quotes_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOS_QUOTES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-60
CREATE TABLE aos_quotes_os_contracts_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, aos_quotese81e_quotes_ida VARCHAR(36) NULL, aos_quotes4dc0ntracts_idb VARCHAR(36) NULL, CONSTRAINT PK_AOS_QUOTES_OS_CONTRACTS_C PRIMARY KEY (id));

-- changeset djay:1719192563573-61
CREATE TABLE aos_quotes_project_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, aos_quotes1112_quotes_ida VARCHAR(36) NULL, aos_quotes7207project_idb VARCHAR(36) NULL, CONSTRAINT PK_AOS_QUOTES_PROJECT_C PRIMARY KEY (id));

-- changeset djay:1719192563573-62
CREATE TABLE aow_actions (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, aow_workflow_id CHAR(36) NULL, action_order INT DEFAULT NULL NULL, action VARCHAR(100) NULL, parameters LONGTEXT NULL, CONSTRAINT PK_AOW_ACTIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-63
CREATE TABLE aow_conditions (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, aow_workflow_id CHAR(36) NULL, condition_order INT DEFAULT NULL NULL, module_path LONGTEXT NULL, field VARCHAR(100) NULL, operator VARCHAR(100) NULL, value_type VARCHAR(255) NULL, value VARCHAR(255) NULL, CONSTRAINT PK_AOW_CONDITIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-64
CREATE TABLE aow_processed (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, aow_workflow_id CHAR(36) NULL, parent_id CHAR(36) NULL, parent_type VARCHAR(100) NULL, status VARCHAR(100) DEFAULT 'Pending' NULL, CONSTRAINT PK_AOW_PROCESSED PRIMARY KEY (id));

-- changeset djay:1719192563573-65
CREATE TABLE aow_processed_aow_actions (id VARCHAR(36) NOT NULL, aow_processed_id VARCHAR(36) NULL, aow_action_id VARCHAR(36) NULL, status VARCHAR(36) DEFAULT 'Pending' NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_AOW_PROCESSED_AOW_ACTIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-66
CREATE TABLE aow_workflow (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, flow_module VARCHAR(100) NULL, flow_run_on VARCHAR(100) DEFAULT '0' NULL, status VARCHAR(100) DEFAULT 'Active' NULL, run_when VARCHAR(100) DEFAULT 'Always' NULL, multiple_runs TINYINT(1) DEFAULT 0 NULL, run_on_import TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_AOW_WORKFLOW PRIMARY KEY (id));

-- changeset djay:1719192563573-67
CREATE TABLE aow_workflow_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_AOW_WORKFLOW_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-68
CREATE TABLE bugs (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, bug_number INT AUTO_INCREMENT NOT NULL, type VARCHAR(255) NULL, status VARCHAR(100) NULL, priority VARCHAR(100) NULL, resolution VARCHAR(255) NULL, work_log TEXT NULL, found_in_release VARCHAR(255) NULL, fixed_in_release VARCHAR(255) NULL, source VARCHAR(255) NULL, product_category VARCHAR(255) NULL, CONSTRAINT PK_BUGS PRIMARY KEY (id), UNIQUE (bug_number));

-- changeset djay:1719192563573-69
CREATE TABLE bugs_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_BUGS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-70
CREATE TABLE calls (id CHAR(36) NOT NULL, name VARCHAR(50) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, duration_hours INT DEFAULT NULL NULL, duration_minutes INT DEFAULT NULL NULL, date_start datetime DEFAULT NULL NULL, date_end datetime DEFAULT NULL NULL, parent_type VARCHAR(255) NULL, status VARCHAR(100) DEFAULT 'Planned' NULL, direction VARCHAR(100) NULL, parent_id CHAR(36) NULL, reminder_time INT DEFAULT -1 NULL, email_reminder_time INT DEFAULT -1 NULL, email_reminder_sent TINYINT(1) DEFAULT 0 NULL, outlook_id VARCHAR(255) NULL, repeat_type VARCHAR(36) NULL, repeat_interval INT DEFAULT 1 NULL, repeat_dow VARCHAR(7) NULL, repeat_until date DEFAULT NULL NULL, repeat_count INT DEFAULT NULL NULL, repeat_parent_id CHAR(36) NULL, recurring_source VARCHAR(36) NULL, CONSTRAINT PK_CALLS PRIMARY KEY (id));

-- changeset djay:1719192563573-71
CREATE TABLE calls_contacts (id VARCHAR(36) NOT NULL, call_id VARCHAR(36) NULL, contact_id VARCHAR(36) NULL, required VARCHAR(1) DEFAULT '1' NULL, accept_status VARCHAR(25) DEFAULT 'none' NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_CALLS_CONTACTS PRIMARY KEY (id));

-- changeset djay:1719192563573-72
CREATE TABLE calls_leads (id VARCHAR(36) NOT NULL, call_id VARCHAR(36) NULL, lead_id VARCHAR(36) NULL, required VARCHAR(1) DEFAULT '1' NULL, accept_status VARCHAR(25) DEFAULT 'none' NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_CALLS_LEADS PRIMARY KEY (id));

-- changeset djay:1719192563573-73
CREATE TABLE calls_reschedule (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, reason VARCHAR(100) NULL, call_id CHAR(36) NULL, CONSTRAINT PK_CALLS_RESCHEDULE PRIMARY KEY (id));

-- changeset djay:1719192563573-74
CREATE TABLE calls_reschedule_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_CALLS_RESCHEDULE_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-75
CREATE TABLE calls_users (id VARCHAR(36) NOT NULL, call_id VARCHAR(36) NULL, user_id VARCHAR(36) NULL, required VARCHAR(1) DEFAULT '1' NULL, accept_status VARCHAR(25) DEFAULT 'none' NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_CALLS_USERS PRIMARY KEY (id));

-- changeset djay:1719192563573-76
CREATE TABLE campaign_log (id CHAR(36) NOT NULL, campaign_id CHAR(36) NULL, target_tracker_key VARCHAR(36) NULL, target_id VARCHAR(36) NULL, target_type VARCHAR(100) NULL, activity_type VARCHAR(100) NULL, activity_date datetime DEFAULT NULL NULL, related_id VARCHAR(36) NULL, related_type VARCHAR(100) NULL, archived TINYINT(1) DEFAULT 0 NULL, hits INT DEFAULT 0 NULL, list_id CHAR(36) NULL, deleted TINYINT(1) DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, more_information VARCHAR(100) NULL, marketing_id CHAR(36) NULL, CONSTRAINT PK_CAMPAIGN_LOG PRIMARY KEY (id));

-- changeset djay:1719192563573-77
CREATE TABLE campaign_trkrs (id CHAR(36) NOT NULL, tracker_name VARCHAR(255) NULL, tracker_url VARCHAR(255) DEFAULT 'http://' NULL, tracker_key INT AUTO_INCREMENT NOT NULL, campaign_id CHAR(36) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, is_optout TINYINT(1) DEFAULT 0 NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_CAMPAIGN_TRKRS PRIMARY KEY (id));

-- changeset djay:1719192563573-78
CREATE TABLE campaigns (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, tracker_key INT AUTO_INCREMENT NOT NULL, tracker_count INT DEFAULT 0 NULL, refer_url VARCHAR(255) DEFAULT 'http://' NULL, tracker_text VARCHAR(255) NULL, start_date date DEFAULT NULL NULL, end_date date DEFAULT NULL NULL, status VARCHAR(100) NULL, impressions INT DEFAULT 0 NULL, currency_id CHAR(36) NULL, budget DOUBLE DEFAULT NULL NULL, expected_cost DOUBLE DEFAULT NULL NULL, actual_cost DOUBLE DEFAULT NULL NULL, expected_revenue DOUBLE DEFAULT NULL NULL, campaign_type VARCHAR(100) NULL, objective TEXT NULL, content TEXT NULL, frequency VARCHAR(100) NULL, survey_id CHAR(36) NULL, CONSTRAINT PK_CAMPAIGNS PRIMARY KEY (id));

-- changeset djay:1719192563573-79
CREATE TABLE campaigns_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_CAMPAIGNS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-80
CREATE TABLE cases (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, case_number INT AUTO_INCREMENT NOT NULL, type VARCHAR(255) NULL, status VARCHAR(100) NULL, priority VARCHAR(100) NULL, resolution TEXT NULL, work_log TEXT NULL, account_id CHAR(36) NULL, state VARCHAR(100) DEFAULT 'Open' NULL, contact_created_by_id CHAR(36) NULL, CONSTRAINT PK_CASES PRIMARY KEY (id), UNIQUE (case_number));

-- changeset djay:1719192563573-81
CREATE TABLE cases_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_CASES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-82
CREATE TABLE cases_bugs (id VARCHAR(36) NOT NULL, case_id VARCHAR(36) NULL, bug_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_CASES_BUGS PRIMARY KEY (id));

-- changeset djay:1719192563573-83
CREATE TABLE cases_cstm (id_c CHAR(36) NOT NULL, jjwg_maps_lng_c FLOAT DEFAULT 0 NULL, jjwg_maps_lat_c FLOAT DEFAULT 0 NULL, jjwg_maps_geocode_status_c VARCHAR(255) NULL, jjwg_maps_address_c VARCHAR(255) NULL, CONSTRAINT PK_CASES_CSTM PRIMARY KEY (id_c));

-- changeset djay:1719192563573-84
CREATE TABLE config (category VARCHAR(32) NULL, name VARCHAR(32) NULL, value TEXT NULL);

-- changeset djay:1719192563573-85
CREATE TABLE contacts (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, salutation VARCHAR(255) NULL, first_name VARCHAR(100) NULL, last_name VARCHAR(100) NULL, title VARCHAR(100) NULL, photo VARCHAR(255) NULL, department VARCHAR(255) NULL, do_not_call TINYINT(1) DEFAULT 0 NULL, phone_home VARCHAR(100) NULL, phone_mobile VARCHAR(100) NULL, phone_work VARCHAR(100) NULL, phone_other VARCHAR(100) NULL, phone_fax VARCHAR(100) NULL, lawful_basis TEXT NULL, date_reviewed date DEFAULT NULL NULL, lawful_basis_source VARCHAR(100) NULL, primary_address_street VARCHAR(150) NULL, primary_address_city VARCHAR(100) NULL, primary_address_state VARCHAR(100) NULL, primary_address_postalcode VARCHAR(20) NULL, primary_address_country VARCHAR(255) NULL, alt_address_street VARCHAR(150) NULL, alt_address_city VARCHAR(100) NULL, alt_address_state VARCHAR(100) NULL, alt_address_postalcode VARCHAR(20) NULL, alt_address_country VARCHAR(255) NULL, assistant VARCHAR(75) NULL, assistant_phone VARCHAR(100) NULL, lead_source VARCHAR(255) NULL, reports_to_id CHAR(36) NULL, birthdate date DEFAULT NULL NULL, campaign_id CHAR(36) NULL, joomla_account_id VARCHAR(255) NULL, portal_account_disabled TINYINT(1) DEFAULT NULL NULL, portal_user_type VARCHAR(100) DEFAULT 'Single' NULL, CONSTRAINT PK_CONTACTS PRIMARY KEY (id));

-- changeset djay:1719192563573-86
CREATE TABLE contacts_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_CONTACTS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-87
CREATE TABLE contacts_bugs (id VARCHAR(36) NOT NULL, contact_id VARCHAR(36) NULL, bug_id VARCHAR(36) NULL, contact_role VARCHAR(50) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_CONTACTS_BUGS PRIMARY KEY (id));

-- changeset djay:1719192563573-88
CREATE TABLE contacts_cases (id VARCHAR(36) NOT NULL, contact_id VARCHAR(36) NULL, case_id VARCHAR(36) NULL, contact_role VARCHAR(50) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_CONTACTS_CASES PRIMARY KEY (id));

-- changeset djay:1719192563573-89
CREATE TABLE contacts_cstm (id_c CHAR(36) NOT NULL, jjwg_maps_lng_c FLOAT DEFAULT 0 NULL, jjwg_maps_lat_c FLOAT DEFAULT 0 NULL, jjwg_maps_geocode_status_c VARCHAR(255) NULL, jjwg_maps_address_c VARCHAR(255) NULL, CONSTRAINT PK_CONTACTS_CSTM PRIMARY KEY (id_c));

-- changeset djay:1719192563573-90
CREATE TABLE contacts_users (id VARCHAR(36) NOT NULL, contact_id VARCHAR(36) NULL, user_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_CONTACTS_USERS PRIMARY KEY (id));

-- changeset djay:1719192563573-91
CREATE TABLE cron_remove_documents (id VARCHAR(36) NOT NULL, bean_id VARCHAR(36) NULL, module VARCHAR(25) NULL, date_modified datetime DEFAULT NULL NULL, CONSTRAINT PK_CRON_REMOVE_DOCUMENTS PRIMARY KEY (id));

-- changeset djay:1719192563573-92
CREATE TABLE currencies (id CHAR(36) NOT NULL, name VARCHAR(36) NULL, symbol VARCHAR(36) NULL, iso4217 VARCHAR(3) NULL, conversion_rate DOUBLE DEFAULT 0 NULL, status VARCHAR(100) NULL, deleted TINYINT(1) DEFAULT NULL NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, created_by CHAR(36) NOT NULL, CONSTRAINT PK_CURRENCIES PRIMARY KEY (id));

-- changeset djay:1719192563573-93
CREATE TABLE custom_fields (bean_id VARCHAR(36) NULL, set_num INT DEFAULT 0 NULL, field0 VARCHAR(255) NULL, field1 VARCHAR(255) NULL, field2 VARCHAR(255) NULL, field3 VARCHAR(255) NULL, field4 VARCHAR(255) NULL, field5 VARCHAR(255) NULL, field6 VARCHAR(255) NULL, field7 VARCHAR(255) NULL, field8 VARCHAR(255) NULL, field9 VARCHAR(255) NULL, deleted TINYINT(1) DEFAULT 0 NULL);

-- changeset djay:1719192563573-94
CREATE TABLE document_revisions (id VARCHAR(36) NOT NULL, change_log VARCHAR(255) NULL, document_id VARCHAR(36) NULL, doc_id VARCHAR(100) NULL, doc_type VARCHAR(100) NULL, doc_url VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, created_by CHAR(36) NULL, filename VARCHAR(255) NULL, file_ext VARCHAR(100) NULL, file_mime_type VARCHAR(100) NULL, revision VARCHAR(100) NULL, deleted TINYINT(1) DEFAULT 0 NULL, date_modified datetime DEFAULT NULL NULL, CONSTRAINT PK_DOCUMENT_REVISIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-95
CREATE TABLE documents (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, document_name VARCHAR(255) NULL, doc_id VARCHAR(100) NULL, doc_type VARCHAR(100) DEFAULT 'Sugar' NULL, doc_url VARCHAR(255) NULL, active_date date DEFAULT NULL NULL, exp_date date DEFAULT NULL NULL, category_id VARCHAR(100) NULL, subcategory_id VARCHAR(100) NULL, status_id VARCHAR(100) NULL, document_revision_id VARCHAR(36) NULL, related_doc_id CHAR(36) NULL, related_doc_rev_id CHAR(36) NULL, is_template TINYINT(1) DEFAULT 0 NULL, template_type VARCHAR(100) NULL, CONSTRAINT PK_DOCUMENTS PRIMARY KEY (id));

-- changeset djay:1719192563573-96
CREATE TABLE documents_accounts (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, document_id VARCHAR(36) NULL, account_id VARCHAR(36) NULL, CONSTRAINT PK_DOCUMENTS_ACCOUNTS PRIMARY KEY (id));

-- changeset djay:1719192563573-97
CREATE TABLE documents_bugs (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, document_id VARCHAR(36) NULL, bug_id VARCHAR(36) NULL, CONSTRAINT PK_DOCUMENTS_BUGS PRIMARY KEY (id));

-- changeset djay:1719192563573-98
CREATE TABLE documents_cases (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, document_id VARCHAR(36) NULL, case_id VARCHAR(36) NULL, CONSTRAINT PK_DOCUMENTS_CASES PRIMARY KEY (id));

-- changeset djay:1719192563573-99
CREATE TABLE documents_contacts (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, document_id VARCHAR(36) NULL, contact_id VARCHAR(36) NULL, CONSTRAINT PK_DOCUMENTS_CONTACTS PRIMARY KEY (id));

-- changeset djay:1719192563573-100
CREATE TABLE documents_opportunities (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, document_id VARCHAR(36) NULL, opportunity_id VARCHAR(36) NULL, CONSTRAINT PK_DOCUMENTS_OPPORTUNITIES PRIMARY KEY (id));

-- changeset djay:1719192563573-101
CREATE TABLE eapm (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, password VARCHAR(255) NULL, url VARCHAR(255) NULL, application VARCHAR(100) DEFAULT 'webex' NULL, api_data TEXT NULL, consumer_key VARCHAR(255) NULL, consumer_secret VARCHAR(255) NULL, oauth_token VARCHAR(255) NULL, oauth_secret VARCHAR(255) NULL, validated TINYINT(1) DEFAULT NULL NULL, CONSTRAINT PK_EAPM PRIMARY KEY (id));

-- changeset djay:1719192563573-102
CREATE TABLE email_addr_bean_rel (id CHAR(36) NOT NULL, email_address_id CHAR(36) NOT NULL, bean_id CHAR(36) NOT NULL, bean_module VARCHAR(100) NULL, primary_address TINYINT(1) DEFAULT 0 NULL, reply_to_address TINYINT(1) DEFAULT 0 NULL, date_created datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_EMAIL_ADDR_BEAN_REL PRIMARY KEY (id));

-- changeset djay:1719192563573-103
CREATE TABLE email_addresses (id CHAR(36) NOT NULL, email_address VARCHAR(255) NULL, email_address_caps VARCHAR(255) NULL, invalid_email TINYINT(1) DEFAULT 0 NULL, opt_out TINYINT(1) DEFAULT 0 NULL, confirm_opt_in VARCHAR(255) DEFAULT 'not-opt-in' NULL, confirm_opt_in_date datetime DEFAULT NULL NULL, confirm_opt_in_sent_date datetime DEFAULT NULL NULL, confirm_opt_in_fail_date datetime DEFAULT NULL NULL, confirm_opt_in_token VARCHAR(255) NULL, date_created datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_EMAIL_ADDRESSES PRIMARY KEY (id));

-- changeset djay:1719192563573-104
CREATE TABLE email_addresses_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_EMAIL_ADDRESSES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-105
CREATE TABLE email_cache (ie_id CHAR(36) NULL, mbox VARCHAR(60) NULL, subject VARCHAR(255) NULL, fromaddr VARCHAR(100) NULL, toaddr VARCHAR(255) NULL, senddate datetime DEFAULT NULL NULL, message_id VARCHAR(255) NULL, mailsize INT UNSIGNED DEFAULT NULL NULL, imap_uid INT UNSIGNED DEFAULT NULL NULL, msgno INT UNSIGNED DEFAULT NULL NULL, recent TINYINT DEFAULT NULL NULL, flagged TINYINT DEFAULT NULL NULL, answered TINYINT DEFAULT NULL NULL, deleted TINYINT DEFAULT NULL NULL, seen TINYINT DEFAULT NULL NULL, draft TINYINT DEFAULT NULL NULL);

-- changeset djay:1719192563573-106
CREATE TABLE email_marketing (id CHAR(36) NOT NULL, deleted TINYINT(1) DEFAULT NULL NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, name VARCHAR(255) NULL, from_name VARCHAR(100) NULL, from_addr VARCHAR(100) NULL, reply_to_name VARCHAR(100) NULL, reply_to_addr VARCHAR(100) NULL, inbound_email_id VARCHAR(36) NULL, date_start datetime DEFAULT NULL NULL, template_id CHAR(36) NOT NULL, status VARCHAR(100) NULL, campaign_id CHAR(36) NULL, outbound_email_id CHAR(36) NULL, all_prospect_lists TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_EMAIL_MARKETING PRIMARY KEY (id));

-- changeset djay:1719192563573-107
CREATE TABLE email_marketing_prospect_lists (id VARCHAR(36) NOT NULL, prospect_list_id VARCHAR(36) NULL, email_marketing_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_EMAIL_MARKETING_PROSPECT_LISTS PRIMARY KEY (id));

-- changeset djay:1719192563573-108
CREATE TABLE email_templates (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by VARCHAR(36) NULL, published VARCHAR(3) NULL, name VARCHAR(255) NULL, `description` TEXT NULL, subject VARCHAR(255) NULL, body LONGTEXT NULL, body_html LONGTEXT NULL, deleted TINYINT(1) DEFAULT NULL NULL, assigned_user_id CHAR(36) NULL, text_only TINYINT(1) DEFAULT NULL NULL, type VARCHAR(255) NULL, CONSTRAINT PK_EMAIL_TEMPLATES PRIMARY KEY (id));

-- changeset djay:1719192563573-109
CREATE TABLE emailman (date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, user_id CHAR(36) NULL, id INT AUTO_INCREMENT NOT NULL, campaign_id CHAR(36) NULL, marketing_id CHAR(36) NULL, list_id CHAR(36) NULL, send_date_time datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, in_queue TINYINT(1) DEFAULT 0 NULL, in_queue_date datetime DEFAULT NULL NULL, send_attempts INT DEFAULT 0 NULL, deleted TINYINT(1) DEFAULT 0 NULL, related_id CHAR(36) NULL, related_type VARCHAR(100) NULL, related_confirm_opt_in TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_EMAILMAN PRIMARY KEY (id));

-- changeset djay:1719192563573-110
CREATE TABLE emails (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, orphaned TINYINT(1) DEFAULT NULL NULL, last_synced datetime DEFAULT NULL NULL, date_sent_received datetime DEFAULT NULL NULL, message_id VARCHAR(255) NULL, type VARCHAR(100) NULL, status VARCHAR(100) NULL, flagged TINYINT(1) DEFAULT NULL NULL, reply_to_status TINYINT(1) DEFAULT NULL NULL, intent VARCHAR(100) DEFAULT 'pick' NULL, mailbox_id CHAR(36) NULL, parent_type VARCHAR(100) NULL, parent_id CHAR(36) NULL, uid VARCHAR(255) NULL, category_id VARCHAR(100) NULL, CONSTRAINT PK_EMAILS PRIMARY KEY (id));

-- changeset djay:1719192563573-111
CREATE TABLE emails_beans (id CHAR(36) NOT NULL, email_id CHAR(36) NULL, bean_id CHAR(36) NULL, bean_module VARCHAR(100) NULL, campaign_data TEXT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_EMAILS_BEANS PRIMARY KEY (id));

-- changeset djay:1719192563573-112
CREATE TABLE emails_email_addr_rel (id CHAR(36) NOT NULL, email_id CHAR(36) NOT NULL, address_type VARCHAR(4) NULL, email_address_id CHAR(36) NOT NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_EMAILS_EMAIL_ADDR_REL PRIMARY KEY (id));

-- changeset djay:1719192563573-113
CREATE TABLE emails_text (email_id CHAR(36) NOT NULL, from_addr VARCHAR(250) NULL, reply_to_addr VARCHAR(250) NULL, to_addrs TEXT NULL, cc_addrs TEXT NULL, bcc_addrs TEXT NULL, `description` LONGTEXT NULL, description_html LONGTEXT NULL, raw_source LONGTEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_EMAILS_TEXT PRIMARY KEY (email_id));

-- changeset djay:1719192563573-114
CREATE TABLE external_oauth_connections (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, type VARCHAR(255) NULL, client_id VARCHAR(32) NULL, client_secret VARCHAR(32) NULL, token_type VARCHAR(32) NULL, expires_in VARCHAR(32) NULL, access_token TEXT NULL, refresh_token TEXT NULL, external_oauth_provider_id CHAR(36) NULL, CONSTRAINT PK_EXTERNAL_OAUTH_CONNECTIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-115
CREATE TABLE external_oauth_providers (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, type VARCHAR(255) NULL, connector VARCHAR(255) NULL, client_id VARCHAR(255) NULL, client_secret VARCHAR(255) NULL, scope TEXT NULL, url_authorize VARCHAR(255) NULL, authorize_url_options TEXT NULL, url_access_token VARCHAR(255) NULL, extra_provider_params TEXT NULL, get_token_request_grant VARCHAR(255) DEFAULT 'authorization_code' NULL, get_token_request_options TEXT NULL, refresh_token_request_grant VARCHAR(255) DEFAULT 'refresh_token' NULL, refresh_token_request_options TEXT NULL, access_token_mapping VARCHAR(255) DEFAULT 'access_token' NULL, expires_in_mapping VARCHAR(255) DEFAULT 'expires_in' NULL, refresh_token_mapping VARCHAR(255) DEFAULT 'refresh_token' NULL, token_type_mapping VARCHAR(255) NULL, CONSTRAINT PK_EXTERNAL_OAUTH_PROVIDERS PRIMARY KEY (id));

-- changeset djay:1719192563573-116
CREATE TABLE favorites (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, parent_id CHAR(36) NULL, parent_type VARCHAR(255) NULL, CONSTRAINT PK_FAVORITES PRIMARY KEY (id));

-- changeset djay:1719192563573-117
CREATE TABLE fields_meta_data (id VARCHAR(255) NOT NULL, name VARCHAR(255) NULL, vname VARCHAR(255) NULL, comments VARCHAR(255) NULL, help VARCHAR(255) NULL, custom_module VARCHAR(255) NULL, type VARCHAR(255) NULL, len INT DEFAULT NULL NULL, required TINYINT(1) DEFAULT 0 NULL, default_value VARCHAR(255) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, audited TINYINT(1) DEFAULT 0 NULL, massupdate TINYINT(1) DEFAULT 0 NULL, duplicate_merge SMALLINT DEFAULT 0 NULL, reportable TINYINT(1) DEFAULT 1 NULL, importable VARCHAR(255) NULL, ext1 VARCHAR(255) NULL, ext2 VARCHAR(255) NULL, ext3 VARCHAR(255) NULL, ext4 TEXT NULL, CONSTRAINT PK_FIELDS_META_DATA PRIMARY KEY (id));

-- changeset djay:1719192563573-118
CREATE TABLE folders (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, folder_type VARCHAR(25) NULL, parent_folder CHAR(36) NULL, has_child TINYINT(1) DEFAULT 0 NULL, is_group TINYINT(1) DEFAULT 0 NULL, is_dynamic TINYINT(1) DEFAULT 0 NULL, dynamic_query TEXT NULL, assign_to_id CHAR(36) NULL, created_by CHAR(36) NOT NULL, modified_by CHAR(36) NOT NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_FOLDERS PRIMARY KEY (id));

-- changeset djay:1719192563573-119
CREATE TABLE folders_rel (id CHAR(36) NOT NULL, folder_id CHAR(36) NOT NULL, polymorphic_module VARCHAR(25) NULL, polymorphic_id CHAR(36) NOT NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_FOLDERS_REL PRIMARY KEY (id));

-- changeset djay:1719192563573-120
CREATE TABLE folders_subscriptions (id CHAR(36) NOT NULL, folder_id CHAR(36) NOT NULL, assigned_user_id CHAR(36) NOT NULL, CONSTRAINT PK_FOLDERS_SUBSCRIPTIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-121
CREATE TABLE fp_event_locations (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, address VARCHAR(255) NULL, address_city VARCHAR(100) NULL, address_country VARCHAR(100) NULL, address_postalcode VARCHAR(20) NULL, address_state VARCHAR(100) NULL, capacity VARCHAR(255) NULL, CONSTRAINT PK_FP_EVENT_LOCATIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-122
CREATE TABLE fp_event_locations_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_FP_EVENT_LOCATIONS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-123
CREATE TABLE fp_event_locations_fp_events_1_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, fp_event_locations_fp_events_1fp_event_locations_ida VARCHAR(36) NULL, fp_event_locations_fp_events_1fp_events_idb VARCHAR(36) NULL, CONSTRAINT PK_FP_EVENT_LOCATIONS_FP_EVENTS_1_C PRIMARY KEY (id));

-- changeset djay:1719192563573-124
CREATE TABLE fp_events (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, duration_hours INT DEFAULT NULL NULL, duration_minutes INT DEFAULT NULL NULL, date_start datetime DEFAULT NULL NULL, date_end datetime DEFAULT NULL NULL, budget DECIMAL(26, 6) DEFAULT NULL NULL, currency_id CHAR(36) NULL, invite_templates VARCHAR(100) NULL, accept_redirect VARCHAR(255) NULL, decline_redirect VARCHAR(255) NULL, activity_status_type VARCHAR(255) NULL, CONSTRAINT PK_FP_EVENTS PRIMARY KEY (id));

-- changeset djay:1719192563573-125
CREATE TABLE fp_events_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_FP_EVENTS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-126
CREATE TABLE fp_events_contacts_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, fp_events_contactsfp_events_ida VARCHAR(36) NULL, fp_events_contactscontacts_idb VARCHAR(36) NULL, invite_status VARCHAR(25) DEFAULT 'Not Invited' NULL, accept_status VARCHAR(25) DEFAULT 'No Response' NULL, email_responded INT DEFAULT 0 NULL, CONSTRAINT PK_FP_EVENTS_CONTACTS_C PRIMARY KEY (id));

-- changeset djay:1719192563573-127
CREATE TABLE fp_events_fp_event_delegates_1_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, fp_events_fp_event_delegates_1fp_events_ida VARCHAR(36) NULL, fp_events_fp_event_delegates_1fp_event_delegates_idb VARCHAR(36) NULL, CONSTRAINT PK_FP_EVENTS_FP_EVENT_DELEGATES_1_C PRIMARY KEY (id));

-- changeset djay:1719192563573-128
CREATE TABLE fp_events_fp_event_locations_1_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, fp_events_fp_event_locations_1fp_events_ida VARCHAR(36) NULL, fp_events_fp_event_locations_1fp_event_locations_idb VARCHAR(36) NULL, CONSTRAINT PK_FP_EVENTS_FP_EVENT_LOCATIONS_1_C PRIMARY KEY (id));

-- changeset djay:1719192563573-129
CREATE TABLE fp_events_leads_1_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, fp_events_leads_1fp_events_ida VARCHAR(36) NULL, fp_events_leads_1leads_idb VARCHAR(36) NULL, invite_status VARCHAR(25) DEFAULT 'Not Invited' NULL, accept_status VARCHAR(25) DEFAULT 'No Response' NULL, email_responded INT DEFAULT 0 NULL, CONSTRAINT PK_FP_EVENTS_LEADS_1_C PRIMARY KEY (id));

-- changeset djay:1719192563573-130
CREATE TABLE fp_events_prospects_1_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, fp_events_prospects_1fp_events_ida VARCHAR(36) NULL, fp_events_prospects_1prospects_idb VARCHAR(36) NULL, invite_status VARCHAR(25) DEFAULT 'Not Invited' NULL, accept_status VARCHAR(25) DEFAULT 'No Response' NULL, email_responded INT DEFAULT 0 NULL, CONSTRAINT PK_FP_EVENTS_PROSPECTS_1_C PRIMARY KEY (id));

-- changeset djay:1719192563573-131
CREATE TABLE import_maps (id CHAR(36) NOT NULL, name VARCHAR(254) NULL, source VARCHAR(36) NULL, enclosure VARCHAR(1) DEFAULT ' ' NULL, delimiter VARCHAR(1) DEFAULT ',' NULL, module VARCHAR(36) NULL, content TEXT NULL, default_values TEXT NULL, has_header TINYINT(1) DEFAULT 1 NULL, deleted TINYINT(1) DEFAULT NULL NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, assigned_user_id CHAR(36) NULL, is_published VARCHAR(3) DEFAULT 'no' NULL, CONSTRAINT PK_IMPORT_MAPS PRIMARY KEY (id));

-- changeset djay:1719192563573-132
CREATE TABLE inbound_email (id VARCHAR(36) NOT NULL, deleted TINYINT(1) DEFAULT 0 NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, name VARCHAR(255) NULL, status VARCHAR(100) DEFAULT 'Active' NULL, email_body_filtering VARCHAR(255) DEFAULT 'multi' NULL, server_url VARCHAR(100) NULL, connection_string VARCHAR(255) NULL, email_user VARCHAR(100) NULL, email_password VARCHAR(100) NULL, port INT DEFAULT 143 NULL, service VARCHAR(50) NULL, mailbox TEXT NULL, sentFolder VARCHAR(255) NULL, trashFolder VARCHAR(255) NULL, delete_seen TINYINT(1) DEFAULT 0 NULL, move_messages_to_trash_after_import TINYINT(1) DEFAULT 0 NULL, mailbox_type VARCHAR(10) NULL, template_id CHAR(36) NULL, stored_options TEXT NULL, group_id CHAR(36) NULL, is_personal TINYINT(1) DEFAULT 0 NULL, groupfolder_id CHAR(36) NULL, type VARCHAR(255) NULL, auth_type VARCHAR(255) DEFAULT 'basic' NULL, protocol VARCHAR(255) DEFAULT 'imap' NULL, is_ssl TINYINT(1) DEFAULT 0 NULL, distribution_user_id CHAR(36) NULL, outbound_email_id CHAR(36) NULL, create_case_template_id CHAR(36) NULL, external_oauth_connection_id CHAR(36) NULL, CONSTRAINT PK_INBOUND_EMAIL PRIMARY KEY (id));

-- changeset djay:1719192563573-133
CREATE TABLE inbound_email_autoreply (id CHAR(36) NOT NULL, deleted TINYINT(1) DEFAULT 0 NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, autoreplied_to VARCHAR(100) NULL, ie_id CHAR(36) NOT NULL, CONSTRAINT PK_INBOUND_EMAIL_AUTOREPLY PRIMARY KEY (id));

-- changeset djay:1719192563573-134
CREATE TABLE inbound_email_cache_ts (id VARCHAR(255) NOT NULL, ie_timestamp INT UNSIGNED DEFAULT NULL NULL, CONSTRAINT PK_INBOUND_EMAIL_CACHE_TS PRIMARY KEY (id));

-- changeset djay:1719192563573-135
CREATE TABLE jjwg_address_cache (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, lat FLOAT DEFAULT NULL NULL, lng FLOAT DEFAULT NULL NULL, CONSTRAINT PK_JJWG_ADDRESS_CACHE PRIMARY KEY (id));

-- changeset djay:1719192563573-136
CREATE TABLE jjwg_address_cache_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_JJWG_ADDRESS_CACHE_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-137
CREATE TABLE jjwg_areas (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, city VARCHAR(255) NULL, state VARCHAR(255) NULL, country VARCHAR(255) NULL, coordinates TEXT NULL, CONSTRAINT PK_JJWG_AREAS PRIMARY KEY (id));

-- changeset djay:1719192563573-138
CREATE TABLE jjwg_areas_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_JJWG_AREAS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-139
CREATE TABLE jjwg_maps (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, distance FLOAT DEFAULT NULL NULL, unit_type VARCHAR(100) DEFAULT 'mi' NULL, module_type VARCHAR(100) DEFAULT 'Accounts' NULL, parent_type VARCHAR(255) NULL, parent_id CHAR(36) NULL, CONSTRAINT PK_JJWG_MAPS PRIMARY KEY (id));

-- changeset djay:1719192563573-140
CREATE TABLE jjwg_maps_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_JJWG_MAPS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-141
CREATE TABLE jjwg_maps_jjwg_areas_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, jjwg_maps_5304wg_maps_ida VARCHAR(36) NULL, jjwg_maps_41f2g_areas_idb VARCHAR(36) NULL, CONSTRAINT PK_JJWG_MAPS_JJWG_AREAS_C PRIMARY KEY (id));

-- changeset djay:1719192563573-142
CREATE TABLE jjwg_maps_jjwg_markers_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, jjwg_maps_b229wg_maps_ida VARCHAR(36) NULL, jjwg_maps_2e31markers_idb VARCHAR(36) NULL, CONSTRAINT PK_JJWG_MAPS_JJWG_MARKERS_C PRIMARY KEY (id));

-- changeset djay:1719192563573-143
CREATE TABLE jjwg_markers (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, city VARCHAR(255) NULL, state VARCHAR(255) NULL, country VARCHAR(255) NULL, jjwg_maps_lat FLOAT DEFAULT 0 NULL, jjwg_maps_lng FLOAT DEFAULT 0 NULL, marker_image VARCHAR(100) DEFAULT 'company' NULL, CONSTRAINT PK_JJWG_MARKERS PRIMARY KEY (id));

-- changeset djay:1719192563573-144
CREATE TABLE jjwg_markers_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_JJWG_MARKERS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-145
CREATE TABLE job_queue (assigned_user_id CHAR(36) NULL, id CHAR(36) NOT NULL, name VARCHAR(255) NULL, deleted TINYINT(1) DEFAULT 0 NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, scheduler_id CHAR(36) NULL, execute_time datetime DEFAULT NULL NULL, status VARCHAR(20) NULL, resolution VARCHAR(20) NULL, message TEXT NULL, target VARCHAR(255) NULL, data TEXT NULL, requeue TINYINT(1) DEFAULT 0 NULL, retry_count TINYINT DEFAULT NULL NULL, failure_count TINYINT DEFAULT NULL NULL, job_delay INT DEFAULT NULL NULL, client VARCHAR(255) NULL, percent_complete INT DEFAULT NULL NULL, CONSTRAINT PK_JOB_QUEUE PRIMARY KEY (id));

-- changeset djay:1719192563573-146
CREATE TABLE leads (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, salutation VARCHAR(255) NULL, first_name VARCHAR(100) NULL, last_name VARCHAR(100) NULL, title VARCHAR(100) NULL, photo VARCHAR(255) NULL, department VARCHAR(100) NULL, do_not_call TINYINT(1) DEFAULT 0 NULL, phone_home VARCHAR(100) NULL, phone_mobile VARCHAR(100) NULL, phone_work VARCHAR(100) NULL, phone_other VARCHAR(100) NULL, phone_fax VARCHAR(100) NULL, lawful_basis TEXT NULL, date_reviewed date DEFAULT NULL NULL, lawful_basis_source VARCHAR(100) NULL, primary_address_street VARCHAR(150) NULL, primary_address_city VARCHAR(100) NULL, primary_address_state VARCHAR(100) NULL, primary_address_postalcode VARCHAR(20) NULL, primary_address_country VARCHAR(255) NULL, alt_address_street VARCHAR(150) NULL, alt_address_city VARCHAR(100) NULL, alt_address_state VARCHAR(100) NULL, alt_address_postalcode VARCHAR(20) NULL, alt_address_country VARCHAR(255) NULL, assistant VARCHAR(75) NULL, assistant_phone VARCHAR(100) NULL, converted TINYINT(1) DEFAULT 0 NULL, refered_by VARCHAR(100) NULL, lead_source VARCHAR(100) NULL, lead_source_description TEXT NULL, status VARCHAR(100) NULL, status_description TEXT NULL, reports_to_id CHAR(36) NULL, account_name VARCHAR(255) NULL, account_description TEXT NULL, contact_id CHAR(36) NULL, account_id CHAR(36) NULL, opportunity_id CHAR(36) NULL, opportunity_name VARCHAR(255) NULL, opportunity_amount VARCHAR(50) NULL, campaign_id CHAR(36) NULL, birthdate date DEFAULT NULL NULL, portal_name VARCHAR(255) NULL, portal_app VARCHAR(255) NULL, website VARCHAR(255) NULL, CONSTRAINT PK_LEADS PRIMARY KEY (id));

-- changeset djay:1719192563573-147
CREATE TABLE leads_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_LEADS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-148
CREATE TABLE leads_cstm (id_c CHAR(36) NOT NULL, jjwg_maps_lng_c FLOAT DEFAULT 0 NULL, jjwg_maps_lat_c FLOAT DEFAULT 0 NULL, jjwg_maps_geocode_status_c VARCHAR(255) NULL, jjwg_maps_address_c VARCHAR(255) NULL, CONSTRAINT PK_LEADS_CSTM PRIMARY KEY (id_c));

-- changeset djay:1719192563573-149
CREATE TABLE linked_documents (id VARCHAR(36) NOT NULL, parent_id VARCHAR(36) NULL, parent_type VARCHAR(25) NULL, document_id VARCHAR(36) NULL, document_revision_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_LINKED_DOCUMENTS PRIMARY KEY (id));

-- changeset djay:1719192563573-150
CREATE TABLE meetings (id CHAR(36) NOT NULL, name VARCHAR(50) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, location VARCHAR(50) NULL, password VARCHAR(50) NULL, join_url VARCHAR(200) NULL, host_url VARCHAR(400) NULL, displayed_url VARCHAR(400) NULL, creator VARCHAR(50) NULL, external_id VARCHAR(50) NULL, duration_hours INT DEFAULT NULL NULL, duration_minutes INT DEFAULT NULL NULL, date_start datetime DEFAULT NULL NULL, date_end datetime DEFAULT NULL NULL, parent_type VARCHAR(100) NULL, status VARCHAR(100) DEFAULT 'Planned' NULL, type VARCHAR(255) DEFAULT 'Sugar' NULL, parent_id CHAR(36) NULL, reminder_time INT DEFAULT -1 NULL, email_reminder_time INT DEFAULT -1 NULL, email_reminder_sent TINYINT(1) DEFAULT 0 NULL, outlook_id VARCHAR(255) NULL, sequence INT DEFAULT 0 NULL, repeat_type VARCHAR(36) NULL, repeat_interval INT DEFAULT 1 NULL, repeat_dow VARCHAR(7) NULL, repeat_until date DEFAULT NULL NULL, repeat_count INT DEFAULT NULL NULL, repeat_parent_id CHAR(36) NULL, recurring_source VARCHAR(36) NULL, gsync_id VARCHAR(1024) NULL, gsync_lastsync INT DEFAULT NULL NULL, CONSTRAINT PK_MEETINGS PRIMARY KEY (id));

-- changeset djay:1719192563573-151
CREATE TABLE meetings_contacts (id VARCHAR(36) NOT NULL, meeting_id VARCHAR(36) NULL, contact_id VARCHAR(36) NULL, required VARCHAR(1) DEFAULT '1' NULL, accept_status VARCHAR(25) DEFAULT 'none' NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_MEETINGS_CONTACTS PRIMARY KEY (id));

-- changeset djay:1719192563573-152
CREATE TABLE meetings_cstm (id_c CHAR(36) NOT NULL, jjwg_maps_lng_c FLOAT DEFAULT 0 NULL, jjwg_maps_lat_c FLOAT DEFAULT 0 NULL, jjwg_maps_geocode_status_c VARCHAR(255) NULL, jjwg_maps_address_c VARCHAR(255) NULL, CONSTRAINT PK_MEETINGS_CSTM PRIMARY KEY (id_c));

-- changeset djay:1719192563573-153
CREATE TABLE meetings_leads (id VARCHAR(36) NOT NULL, meeting_id VARCHAR(36) NULL, lead_id VARCHAR(36) NULL, required VARCHAR(1) DEFAULT '1' NULL, accept_status VARCHAR(25) DEFAULT 'none' NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_MEETINGS_LEADS PRIMARY KEY (id));

-- changeset djay:1719192563573-154
CREATE TABLE meetings_users (id VARCHAR(36) NOT NULL, meeting_id VARCHAR(36) NULL, user_id VARCHAR(36) NULL, required VARCHAR(1) DEFAULT '1' NULL, accept_status VARCHAR(25) DEFAULT 'none' NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_MEETINGS_USERS PRIMARY KEY (id));

-- changeset djay:1719192563573-155
CREATE TABLE notes (assigned_user_id CHAR(36) NULL, id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, name VARCHAR(255) NULL, file_mime_type VARCHAR(100) NULL, filename VARCHAR(255) NULL, parent_type VARCHAR(255) NULL, parent_id CHAR(36) NULL, contact_id CHAR(36) NULL, portal_flag TINYINT(1) DEFAULT NULL NULL, embed_flag TINYINT(1) DEFAULT 0 NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_NOTES PRIMARY KEY (id));

-- changeset djay:1719192563573-156
CREATE TABLE oauth2clients (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, secret VARCHAR(4000) NULL, redirect_url VARCHAR(255) NULL, is_confidential TINYINT(1) DEFAULT 1 NULL, allowed_grant_type VARCHAR(255) DEFAULT 'password' NULL, duration_value INT DEFAULT NULL NULL, duration_amount INT DEFAULT NULL NULL, duration_unit VARCHAR(255) DEFAULT 'Duration Unit' NULL, assigned_user_id CHAR(36) NULL, CONSTRAINT PK_OAUTH2CLIENTS PRIMARY KEY (id));

-- changeset djay:1719192563573-157
CREATE TABLE oauth2tokens (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, token_is_revoked TINYINT(1) DEFAULT NULL NULL, token_type VARCHAR(255) NULL, access_token_expires datetime DEFAULT NULL NULL, access_token VARCHAR(4000) NULL, refresh_token VARCHAR(4000) NULL, refresh_token_expires datetime DEFAULT NULL NULL, grant_type VARCHAR(255) NULL, state VARCHAR(1024) NULL, client CHAR(36) NULL, assigned_user_id CHAR(36) NULL, CONSTRAINT PK_OAUTH2TOKENS PRIMARY KEY (id));

-- changeset djay:1719192563573-158
CREATE TABLE oauth_consumer (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, c_key VARCHAR(255) NULL, c_secret VARCHAR(255) NULL, CONSTRAINT PK_OAUTH_CONSUMER PRIMARY KEY (id), UNIQUE (c_key));

-- changeset djay:1719192563573-159
CREATE TABLE oauth_nonce (conskey VARCHAR(32) NOT NULL, nonce VARCHAR(32) NOT NULL, nonce_ts BIGINT DEFAULT NULL NULL, CONSTRAINT PK_OAUTH_NONCE PRIMARY KEY (conskey, nonce));

-- changeset djay:1719192563573-160
CREATE TABLE oauth_tokens (id CHAR(36) NOT NULL, secret VARCHAR(32) NULL, tstate VARCHAR(1) NULL, consumer CHAR(36) NOT NULL, token_ts BIGINT DEFAULT NULL NULL, verify VARCHAR(32) NULL, deleted TINYINT(1) DEFAULT 0 NOT NULL, callback_url VARCHAR(255) NULL, assigned_user_id CHAR(36) NULL, CONSTRAINT PK_OAUTH_TOKENS PRIMARY KEY (id, deleted));

-- changeset djay:1719192563573-161
CREATE TABLE opportunities (id CHAR(36) NOT NULL, name VARCHAR(50) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, opportunity_type VARCHAR(255) NULL, campaign_id CHAR(36) NULL, lead_source VARCHAR(50) NULL, amount DOUBLE DEFAULT NULL NULL, amount_usdollar DOUBLE DEFAULT NULL NULL, currency_id CHAR(36) NULL, date_closed date DEFAULT NULL NULL, next_step VARCHAR(100) NULL, sales_stage VARCHAR(255) NULL, probability DOUBLE DEFAULT NULL NULL, CONSTRAINT PK_OPPORTUNITIES PRIMARY KEY (id));

-- changeset djay:1719192563573-162
CREATE TABLE opportunities_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_OPPORTUNITIES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-163
CREATE TABLE opportunities_contacts (id VARCHAR(36) NOT NULL, contact_id VARCHAR(36) NULL, opportunity_id VARCHAR(36) NULL, contact_role VARCHAR(50) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_OPPORTUNITIES_CONTACTS PRIMARY KEY (id));

-- changeset djay:1719192563573-164
CREATE TABLE opportunities_cstm (id_c CHAR(36) NOT NULL, jjwg_maps_lng_c FLOAT DEFAULT 0 NULL, jjwg_maps_lat_c FLOAT DEFAULT 0 NULL, jjwg_maps_geocode_status_c VARCHAR(255) NULL, jjwg_maps_address_c VARCHAR(255) NULL, CONSTRAINT PK_OPPORTUNITIES_CSTM PRIMARY KEY (id_c));

-- changeset djay:1719192563573-165
CREATE TABLE outbound_email (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, type VARCHAR(15) DEFAULT 'user' NULL, user_id CHAR(36) NULL, smtp_from_name VARCHAR(255) NULL, smtp_from_addr VARCHAR(255) NULL, reply_to_name VARCHAR(255) NULL, reply_to_addr VARCHAR(255) NULL, signature TEXT NULL, mail_sendtype VARCHAR(8) DEFAULT 'SMTP' NULL, mail_smtptype VARCHAR(20) DEFAULT 'other' NULL, mail_smtpserver VARCHAR(100) NULL, mail_smtpport VARCHAR(5) DEFAULT '25' NULL, mail_smtpuser VARCHAR(100) NULL, mail_smtppass VARCHAR(100) NULL, mail_smtpauth_req TINYINT(1) DEFAULT 0 NULL, mail_smtpssl VARCHAR(1) DEFAULT '0' NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, CONSTRAINT PK_OUTBOUND_EMAIL PRIMARY KEY (id));

-- changeset djay:1719192563573-166
CREATE TABLE outbound_email_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_OUTBOUND_EMAIL_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-167
CREATE TABLE project (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, assigned_user_id CHAR(36) NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, name VARCHAR(50) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, estimated_start_date date DEFAULT NULL NULL, estimated_end_date date DEFAULT NULL NULL, status VARCHAR(255) NULL, priority VARCHAR(255) NULL, override_business_hours TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_PROJECT PRIMARY KEY (id));

-- changeset djay:1719192563573-168
CREATE TABLE project_contacts_1_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, project_contacts_1project_ida VARCHAR(36) NULL, project_contacts_1contacts_idb VARCHAR(36) NULL, CONSTRAINT PK_PROJECT_CONTACTS_1_C PRIMARY KEY (id));

-- changeset djay:1719192563573-169
CREATE TABLE project_cstm (id_c CHAR(36) NOT NULL, jjwg_maps_lng_c FLOAT DEFAULT 0 NULL, jjwg_maps_lat_c FLOAT DEFAULT 0 NULL, jjwg_maps_geocode_status_c VARCHAR(255) NULL, jjwg_maps_address_c VARCHAR(255) NULL, CONSTRAINT PK_PROJECT_CSTM PRIMARY KEY (id_c));

-- changeset djay:1719192563573-170
CREATE TABLE project_task (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, project_id CHAR(36) NOT NULL, project_task_id INT DEFAULT NULL NULL, name VARCHAR(50) NULL, status VARCHAR(255) NULL, relationship_type VARCHAR(255) NULL, `description` TEXT NULL, predecessors TEXT NULL, date_start date DEFAULT NULL NULL, time_start INT DEFAULT NULL NULL, time_finish INT DEFAULT NULL NULL, date_finish date DEFAULT NULL NULL, duration INT DEFAULT NULL NULL, duration_unit TEXT NULL, actual_duration INT DEFAULT NULL NULL, percent_complete INT DEFAULT NULL NULL, date_due date DEFAULT NULL NULL, time_due time DEFAULT NULL NULL, parent_task_id INT DEFAULT NULL NULL, assigned_user_id CHAR(36) NULL, modified_user_id CHAR(36) NULL, priority VARCHAR(255) NULL, created_by CHAR(36) NULL, milestone_flag TINYINT(1) DEFAULT NULL NULL, order_number INT DEFAULT 1 NULL, task_number INT DEFAULT NULL NULL, estimated_effort INT DEFAULT NULL NULL, actual_effort INT DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, utilization INT DEFAULT 100 NULL, CONSTRAINT PK_PROJECT_TASK PRIMARY KEY (id));

-- changeset djay:1719192563573-171
CREATE TABLE project_task_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_PROJECT_TASK_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-172
CREATE TABLE project_users_1_c (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, project_users_1project_ida VARCHAR(36) NULL, project_users_1users_idb VARCHAR(36) NULL, CONSTRAINT PK_PROJECT_USERS_1_C PRIMARY KEY (id));

-- changeset djay:1719192563573-173
CREATE TABLE projects_accounts (id VARCHAR(36) NOT NULL, account_id VARCHAR(36) NULL, project_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_PROJECTS_ACCOUNTS PRIMARY KEY (id));

-- changeset djay:1719192563573-174
CREATE TABLE projects_bugs (id VARCHAR(36) NOT NULL, bug_id VARCHAR(36) NULL, project_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_PROJECTS_BUGS PRIMARY KEY (id));

-- changeset djay:1719192563573-175
CREATE TABLE projects_cases (id VARCHAR(36) NOT NULL, case_id VARCHAR(36) NULL, project_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_PROJECTS_CASES PRIMARY KEY (id));

-- changeset djay:1719192563573-176
CREATE TABLE projects_contacts (id VARCHAR(36) NOT NULL, contact_id VARCHAR(36) NULL, project_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_PROJECTS_CONTACTS PRIMARY KEY (id));

-- changeset djay:1719192563573-177
CREATE TABLE projects_opportunities (id VARCHAR(36) NOT NULL, opportunity_id VARCHAR(36) NULL, project_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_PROJECTS_OPPORTUNITIES PRIMARY KEY (id));

-- changeset djay:1719192563573-178
CREATE TABLE projects_products (id VARCHAR(36) NOT NULL, product_id VARCHAR(36) NULL, project_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_PROJECTS_PRODUCTS PRIMARY KEY (id));

-- changeset djay:1719192563573-179
CREATE TABLE prospect_list_campaigns (id VARCHAR(36) NOT NULL, prospect_list_id VARCHAR(36) NULL, campaign_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_PROSPECT_LIST_CAMPAIGNS PRIMARY KEY (id));

-- changeset djay:1719192563573-180
CREATE TABLE prospect_lists (assigned_user_id CHAR(36) NULL, id CHAR(36) NOT NULL, name VARCHAR(255) NULL, list_type VARCHAR(100) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, deleted TINYINT(1) DEFAULT NULL NULL, `description` TEXT NULL, domain_name VARCHAR(255) NULL, CONSTRAINT PK_PROSPECT_LISTS PRIMARY KEY (id));

-- changeset djay:1719192563573-181
CREATE TABLE prospect_lists_prospects (id VARCHAR(36) NOT NULL, prospect_list_id VARCHAR(36) NULL, related_id VARCHAR(36) NULL, related_type VARCHAR(25) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_PROSPECT_LISTS_PROSPECTS PRIMARY KEY (id));

-- changeset djay:1719192563573-182
CREATE TABLE prospects (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, salutation VARCHAR(255) NULL, first_name VARCHAR(100) NULL, last_name VARCHAR(100) NULL, title VARCHAR(100) NULL, photo VARCHAR(255) NULL, department VARCHAR(255) NULL, do_not_call TINYINT(1) DEFAULT 0 NULL, phone_home VARCHAR(100) NULL, phone_mobile VARCHAR(100) NULL, phone_work VARCHAR(100) NULL, phone_other VARCHAR(100) NULL, phone_fax VARCHAR(100) NULL, lawful_basis TEXT NULL, date_reviewed date DEFAULT NULL NULL, lawful_basis_source VARCHAR(100) NULL, primary_address_street VARCHAR(150) NULL, primary_address_city VARCHAR(100) NULL, primary_address_state VARCHAR(100) NULL, primary_address_postalcode VARCHAR(20) NULL, primary_address_country VARCHAR(255) NULL, alt_address_street VARCHAR(150) NULL, alt_address_city VARCHAR(100) NULL, alt_address_state VARCHAR(100) NULL, alt_address_postalcode VARCHAR(20) NULL, alt_address_country VARCHAR(255) NULL, assistant VARCHAR(75) NULL, assistant_phone VARCHAR(100) NULL, tracker_key INT AUTO_INCREMENT NOT NULL, birthdate date DEFAULT NULL NULL, lead_id CHAR(36) NULL, account_name VARCHAR(150) NULL, campaign_id CHAR(36) NULL, CONSTRAINT PK_PROSPECTS PRIMARY KEY (id));

-- changeset djay:1719192563573-183
CREATE TABLE prospects_cstm (id_c CHAR(36) NOT NULL, jjwg_maps_lng_c FLOAT DEFAULT 0 NULL, jjwg_maps_lat_c FLOAT DEFAULT 0 NULL, jjwg_maps_geocode_status_c VARCHAR(255) NULL, jjwg_maps_address_c VARCHAR(255) NULL, CONSTRAINT PK_PROSPECTS_CSTM PRIMARY KEY (id_c));

-- changeset djay:1719192563573-184
CREATE TABLE relationships (id CHAR(36) NOT NULL, relationship_name VARCHAR(150) NULL, lhs_module VARCHAR(100) NULL, lhs_table VARCHAR(64) NULL, lhs_key VARCHAR(64) NULL, rhs_module VARCHAR(100) NULL, rhs_table VARCHAR(64) NULL, rhs_key VARCHAR(64) NULL, join_table VARCHAR(64) NULL, join_key_lhs VARCHAR(64) NULL, join_key_rhs VARCHAR(64) NULL, relationship_type VARCHAR(64) NULL, relationship_role_column VARCHAR(64) NULL, relationship_role_column_value VARCHAR(50) NULL, reverse TINYINT(1) DEFAULT 0 NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_RELATIONSHIPS PRIMARY KEY (id));

-- changeset djay:1719192563573-185
CREATE TABLE releases (id CHAR(36) NOT NULL, deleted TINYINT(1) DEFAULT NULL NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, name VARCHAR(50) NULL, list_order INT DEFAULT NULL NULL, status VARCHAR(100) NULL, CONSTRAINT PK_RELEASES PRIMARY KEY (id));

-- changeset djay:1719192563573-186
CREATE TABLE reminders (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, popup TINYINT(1) DEFAULT NULL NULL, email TINYINT(1) DEFAULT NULL NULL, email_sent TINYINT(1) DEFAULT NULL NULL, timer_popup VARCHAR(32) NULL, timer_email VARCHAR(32) NULL, related_event_module VARCHAR(32) NULL, related_event_module_id CHAR(36) NOT NULL, date_willexecute INT DEFAULT -1 NULL, popup_viewed TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_REMINDERS PRIMARY KEY (id));

-- changeset djay:1719192563573-187
CREATE TABLE reminders_invitees (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, reminder_id CHAR(36) NOT NULL, related_invitee_module VARCHAR(32) NULL, related_invitee_module_id CHAR(36) NOT NULL, CONSTRAINT PK_REMINDERS_INVITEES PRIMARY KEY (id));

-- changeset djay:1719192563573-188
CREATE TABLE roles (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, name VARCHAR(150) NULL, `description` TEXT NULL, modules TEXT NULL, deleted TINYINT(1) DEFAULT NULL NULL, CONSTRAINT PK_ROLES PRIMARY KEY (id));

-- changeset djay:1719192563573-189
CREATE TABLE roles_modules (id VARCHAR(36) NOT NULL, role_id VARCHAR(36) NULL, module_id VARCHAR(36) NULL, allow TINYINT(1) DEFAULT 0 NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_ROLES_MODULES PRIMARY KEY (id));

-- changeset djay:1719192563573-190
CREATE TABLE roles_users (id VARCHAR(36) NOT NULL, role_id VARCHAR(36) NULL, user_id VARCHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_ROLES_USERS PRIMARY KEY (id));

-- changeset djay:1719192563573-191
CREATE TABLE saved_search (id CHAR(36) NOT NULL, name VARCHAR(150) NULL, search_module VARCHAR(150) NULL, deleted TINYINT(1) DEFAULT NULL NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, assigned_user_id CHAR(36) NULL, contents TEXT NULL, `description` TEXT NULL, CONSTRAINT PK_SAVED_SEARCH PRIMARY KEY (id));

-- changeset djay:1719192563573-192
CREATE TABLE schedulers (id VARCHAR(36) NOT NULL, deleted TINYINT(1) DEFAULT 0 NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, created_by CHAR(36) NULL, modified_user_id CHAR(36) NULL, name VARCHAR(255) NULL, job VARCHAR(255) NULL, date_time_start datetime DEFAULT NULL NULL, date_time_end datetime DEFAULT NULL NULL, job_interval VARCHAR(100) NULL, time_from time DEFAULT NULL NULL, time_to time DEFAULT NULL NULL, last_run datetime DEFAULT NULL NULL, status VARCHAR(100) NULL, catch_up TINYINT(1) DEFAULT 1 NULL, CONSTRAINT PK_SCHEDULERS PRIMARY KEY (id));

-- changeset djay:1719192563573-193
CREATE TABLE securitygroups (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, noninheritable TINYINT(1) DEFAULT NULL NULL, CONSTRAINT PK_SECURITYGROUPS PRIMARY KEY (id));

-- changeset djay:1719192563573-194
CREATE TABLE securitygroups_acl_roles (id CHAR(36) NOT NULL, securitygroup_id CHAR(36) NULL, role_id CHAR(36) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_SECURITYGROUPS_ACL_ROLES PRIMARY KEY (id));

-- changeset djay:1719192563573-195
CREATE TABLE securitygroups_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_SECURITYGROUPS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-196
CREATE TABLE securitygroups_default (id CHAR(36) NOT NULL, securitygroup_id CHAR(36) NULL, module VARCHAR(50) NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_SECURITYGROUPS_DEFAULT PRIMARY KEY (id));

-- changeset djay:1719192563573-197
CREATE TABLE securitygroups_records (id CHAR(36) NOT NULL, securitygroup_id CHAR(36) NULL, record_id CHAR(36) NULL, module VARCHAR(100) NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_SECURITYGROUPS_RECORDS PRIMARY KEY (id));

-- changeset djay:1719192563573-198
CREATE TABLE securitygroups_users (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, securitygroup_id VARCHAR(36) NULL, user_id VARCHAR(36) NULL, primary_group TINYINT(1) DEFAULT NULL NULL, noninheritable TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_SECURITYGROUPS_USERS PRIMARY KEY (id));

-- changeset djay:1719192563573-199
CREATE TABLE spots (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, config LONGTEXT NULL, type VARCHAR(255) NULL, CONSTRAINT PK_SPOTS PRIMARY KEY (id));

-- changeset djay:1719192563573-200
CREATE TABLE sugarfeed (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, related_module VARCHAR(100) NULL, related_id CHAR(36) NULL, link_url VARCHAR(255) NULL, link_type VARCHAR(30) NULL, CONSTRAINT PK_SUGARFEED PRIMARY KEY (id));

-- changeset djay:1719192563573-201
CREATE TABLE surveyquestionoptions (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, sort_order INT DEFAULT NULL NULL, survey_question_id CHAR(36) NULL, CONSTRAINT PK_SURVEYQUESTIONOPTIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-202
CREATE TABLE surveyquestionoptions_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_SURVEYQUESTIONOPTIONS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-203
CREATE TABLE surveyquestionoptions_surveyquestionresponses (id VARCHAR(36) NOT NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL, surveyq72c7options_ida VARCHAR(36) NULL, surveyq10d4sponses_idb VARCHAR(36) NULL, CONSTRAINT PK_SURVEYQUESTIONOPTIONS_SURVEYQUESTIONRESPONSES PRIMARY KEY (id));

-- changeset djay:1719192563573-204
CREATE TABLE surveyquestionresponses (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, answer TEXT NULL, answer_bool TINYINT(1) DEFAULT NULL NULL, answer_datetime datetime DEFAULT NULL NULL, surveyquestion_id CHAR(36) NULL, surveyresponse_id CHAR(36) NULL, CONSTRAINT PK_SURVEYQUESTIONRESPONSES PRIMARY KEY (id));

-- changeset djay:1719192563573-205
CREATE TABLE surveyquestionresponses_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_SURVEYQUESTIONRESPONSES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-206
CREATE TABLE surveyquestions (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, sort_order INT DEFAULT NULL NULL, type VARCHAR(100) NULL, happiness_question TINYINT(1) DEFAULT NULL NULL, survey_id CHAR(36) NULL, CONSTRAINT PK_SURVEYQUESTIONS PRIMARY KEY (id));

-- changeset djay:1719192563573-207
CREATE TABLE surveyquestions_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_SURVEYQUESTIONS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-208
CREATE TABLE surveyresponses (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, happiness INT DEFAULT NULL NULL, email_response_sent TINYINT(1) DEFAULT NULL NULL, account_id CHAR(36) NULL, campaign_id CHAR(36) NULL, contact_id CHAR(36) NULL, survey_id CHAR(36) NULL, CONSTRAINT PK_SURVEYRESPONSES PRIMARY KEY (id));

-- changeset djay:1719192563573-209
CREATE TABLE surveyresponses_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_SURVEYRESPONSES_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-210
CREATE TABLE surveys (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, status VARCHAR(100) DEFAULT 'LBL_DRAFT' NULL, submit_text VARCHAR(255) DEFAULT 'Submit' NULL, satisfied_text VARCHAR(255) DEFAULT 'Satisfied' NULL, neither_text VARCHAR(255) DEFAULT 'Neither Satisfied nor Dissatisfied' NULL, dissatisfied_text VARCHAR(255) DEFAULT 'Dissatisfied' NULL, CONSTRAINT PK_SURVEYS PRIMARY KEY (id));

-- changeset djay:1719192563573-211
CREATE TABLE surveys_audit (id CHAR(36) NOT NULL, parent_id CHAR(36) NOT NULL, date_created datetime DEFAULT NULL NULL, created_by VARCHAR(36) NULL, field_name VARCHAR(100) NULL, data_type VARCHAR(100) NULL, before_value_string VARCHAR(255) NULL, after_value_string VARCHAR(255) NULL, before_value_text TEXT NULL, after_value_text TEXT NULL, CONSTRAINT PK_SURVEYS_AUDIT PRIMARY KEY (id));

-- changeset djay:1719192563573-212
CREATE TABLE tasks (id CHAR(36) NOT NULL, name VARCHAR(50) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, assigned_user_id CHAR(36) NULL, status VARCHAR(100) DEFAULT 'Not Started' NULL, date_due_flag TINYINT(1) DEFAULT 0 NULL, date_due datetime DEFAULT NULL NULL, date_start_flag TINYINT(1) DEFAULT 0 NULL, date_start datetime DEFAULT NULL NULL, parent_type VARCHAR(255) NULL, parent_id CHAR(36) NULL, contact_id CHAR(36) NULL, priority VARCHAR(100) NULL, CONSTRAINT PK_TASKS PRIMARY KEY (id));

-- changeset djay:1719192563573-213
CREATE TABLE templatesectionline (id CHAR(36) NOT NULL, name VARCHAR(255) NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, `description` TEXT NULL, deleted TINYINT(1) DEFAULT 0 NULL, thumbnail VARCHAR(255) NULL, grp VARCHAR(255) NULL, ord INT DEFAULT NULL NULL, CONSTRAINT PK_TEMPLATESECTIONLINE PRIMARY KEY (id));

-- changeset djay:1719192563573-214
CREATE TABLE tracker (id INT AUTO_INCREMENT NOT NULL, monitor_id CHAR(36) NOT NULL, user_id VARCHAR(36) NULL, module_name VARCHAR(255) NULL, item_id VARCHAR(36) NULL, item_summary VARCHAR(255) NULL, date_modified datetime DEFAULT NULL NULL, action VARCHAR(255) NULL, session_id VARCHAR(36) NULL, `visible` TINYINT(1) DEFAULT 0 NULL, deleted TINYINT(1) DEFAULT 0 NULL, CONSTRAINT PK_TRACKER PRIMARY KEY (id));

-- changeset djay:1719192563573-215
CREATE TABLE upgrade_history (id CHAR(36) NOT NULL, filename VARCHAR(255) NULL, md5sum VARCHAR(32) NULL, type VARCHAR(30) NULL, status VARCHAR(50) NULL, version VARCHAR(64) NULL, name VARCHAR(255) NULL, `description` TEXT NULL, id_name VARCHAR(255) NULL, manifest LONGTEXT NULL, date_entered datetime DEFAULT NULL NULL, enabled TINYINT(1) DEFAULT 1 NULL, CONSTRAINT PK_UPGRADE_HISTORY PRIMARY KEY (id), UNIQUE (md5sum));

-- changeset djay:1719192563573-216
CREATE TABLE user_preferences (id CHAR(36) NOT NULL, category VARCHAR(50) NULL, deleted TINYINT(1) DEFAULT 0 NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, assigned_user_id CHAR(36) NULL, contents LONGTEXT NULL, CONSTRAINT PK_USER_PREFERENCES PRIMARY KEY (id));

-- changeset djay:1719192563573-217
CREATE TABLE users (id CHAR(36) NOT NULL, user_name VARCHAR(60) NULL, user_hash VARCHAR(255) NULL, system_generated_password TINYINT(1) DEFAULT NULL NULL, pwd_last_changed datetime DEFAULT NULL NULL, authenticate_id VARCHAR(100) NULL, sugar_login TINYINT(1) DEFAULT 1 NULL, first_name VARCHAR(255) NULL, last_name VARCHAR(255) NULL, is_admin TINYINT(1) DEFAULT 0 NULL, external_auth_only TINYINT(1) DEFAULT 0 NULL, receive_notifications TINYINT(1) DEFAULT 1 NULL, `description` TEXT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, modified_user_id CHAR(36) NULL, created_by CHAR(36) NULL, title VARCHAR(50) NULL, photo VARCHAR(255) NULL, department VARCHAR(50) NULL, phone_home VARCHAR(50) NULL, phone_mobile VARCHAR(50) NULL, phone_work VARCHAR(50) NULL, phone_other VARCHAR(50) NULL, phone_fax VARCHAR(50) NULL, status VARCHAR(100) NULL, address_street VARCHAR(150) NULL, address_city VARCHAR(100) NULL, address_state VARCHAR(100) NULL, address_country VARCHAR(100) NULL, address_postalcode VARCHAR(20) NULL, deleted TINYINT(1) DEFAULT NULL NULL, portal_only TINYINT(1) DEFAULT 0 NULL, show_on_employees TINYINT(1) DEFAULT 1 NULL, employee_status VARCHAR(100) NULL, messenger_id VARCHAR(100) NULL, messenger_type VARCHAR(100) NULL, reports_to_id CHAR(36) NULL, is_group TINYINT(1) DEFAULT NULL NULL, factor_auth TINYINT(1) DEFAULT NULL NULL, factor_auth_interface VARCHAR(255) NULL, CONSTRAINT PK_USERS PRIMARY KEY (id));

-- changeset djay:1719192563573-218
CREATE TABLE users_feeds (user_id VARCHAR(36) NULL, feed_id VARCHAR(36) NULL, `rank` INT DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT 0 NULL);

-- changeset djay:1719192563573-219
CREATE TABLE users_last_import (id CHAR(36) NOT NULL, assigned_user_id CHAR(36) NULL, import_module VARCHAR(36) NULL, bean_type VARCHAR(36) NULL, bean_id CHAR(36) NULL, deleted TINYINT(1) DEFAULT NULL NULL, CONSTRAINT PK_USERS_LAST_IMPORT PRIMARY KEY (id));

-- changeset djay:1719192563573-220
CREATE TABLE users_password_link (id CHAR(36) NOT NULL, keyhash VARCHAR(255) NULL, user_id VARCHAR(36) NULL, username VARCHAR(36) NULL, date_generated datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT NULL NULL, CONSTRAINT PK_USERS_PASSWORD_LINK PRIMARY KEY (id));

-- changeset djay:1719192563573-221
CREATE TABLE users_signatures (id CHAR(36) NOT NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, deleted TINYINT(1) DEFAULT NULL NULL, user_id VARCHAR(36) NULL, name VARCHAR(255) NULL, signature TEXT NULL, signature_html TEXT NULL, CONSTRAINT PK_USERS_SIGNATURES PRIMARY KEY (id));

-- changeset djay:1719192563573-222
CREATE TABLE vcals (id CHAR(36) NOT NULL, deleted TINYINT(1) DEFAULT NULL NULL, date_entered datetime DEFAULT NULL NULL, date_modified datetime DEFAULT NULL NULL, user_id CHAR(36) NOT NULL, type VARCHAR(100) NULL, source VARCHAR(100) NULL, content TEXT NULL, CONSTRAINT PK_VCALS PRIMARY KEY (id));

-- changeset djay:1719192563573-223
CREATE INDEX ab_user_bean_idx ON address_book(assigned_user_id, bean);

-- changeset djay:1719192563573-224
CREATE INDEX am_projecttemplates_contacts_1_alt ON am_projecttemplates_contacts_1_c(am_projecttemplates_ida, contacts_idb);

-- changeset djay:1719192563573-225
CREATE INDEX am_projecttemplates_project_1_alt ON am_projecttemplates_project_1_c(am_projecttemplates_project_1project_idb);

-- changeset djay:1719192563573-226
CREATE INDEX am_projecttemplates_project_1_ida1 ON am_projecttemplates_project_1_c(am_projecttemplates_project_1am_projecttemplates_ida);

-- changeset djay:1719192563573-227
CREATE INDEX am_projecttemplates_users_1_alt ON am_projecttemplates_users_1_c(am_projecttemplates_ida, users_idb);

-- changeset djay:1719192563573-228
CREATE INDEX am_tasktemplates_am_projecttemplates_alt ON am_tasktemplates_am_projecttemplates_c(am_tasktemplates_am_projecttemplatesam_tasktemplates_idb);

-- changeset djay:1719192563573-229
CREATE INDEX am_tasktemplates_am_projecttemplates_ida1 ON am_tasktemplates_am_projecttemplates_c(am_tasktemplates_am_projecttemplatesam_projecttemplates_ida);

-- changeset djay:1719192563573-230
CREATE INDEX aok_knowledgebase_categories_alt ON aok_knowledgebase_categories(aok_knowledgebase_id, aok_knowledge_base_categories_id);

-- changeset djay:1719192563573-231
CREATE INDEX aor_conditions_index_report_id ON aor_conditions(aor_report_id);

-- changeset djay:1719192563573-232
CREATE INDEX aor_fields_index_report_id ON aor_fields(aor_report_id);

-- changeset djay:1719192563573-233
CREATE INDEX aos_contracts_documents_alt ON aos_contracts_documents(aos_contracts_id, documents_id);

-- changeset djay:1719192563573-234
CREATE INDEX aos_quotes_aos_contracts_alt ON aos_quotes_os_contracts_c(aos_quotese81e_quotes_ida, aos_quotes4dc0ntracts_idb);

-- changeset djay:1719192563573-235
CREATE INDEX aos_quotes_aos_invoices_alt ON aos_quotes_aos_invoices_c(aos_quotes77d9_quotes_ida, aos_quotes6b83nvoices_idb);

-- changeset djay:1719192563573-236
CREATE INDEX aos_quotes_project_alt ON aos_quotes_project_c(aos_quotes1112_quotes_ida, aos_quotes7207project_idb);

-- changeset djay:1719192563573-237
CREATE INDEX aow_action_index_workflow_id ON aow_actions(aow_workflow_id);

-- changeset djay:1719192563573-238
CREATE INDEX aow_conditions_index_workflow_id ON aow_conditions(aow_workflow_id);

-- changeset djay:1719192563573-239
CREATE INDEX aow_processed_index_status ON aow_processed(status);

-- changeset djay:1719192563573-240
CREATE INDEX aow_processed_index_workflow ON aow_processed(aow_workflow_id, status, parent_id, deleted);

-- changeset djay:1719192563573-241
CREATE INDEX aow_processed_index_workflow_id ON aow_processed(aow_workflow_id);

-- changeset djay:1719192563573-242
CREATE INDEX aow_workflow_index_status ON aow_workflow(status);

-- changeset djay:1719192563573-243
CREATE INDEX camp_auto_tracker_key ON campaigns(tracker_key);

-- changeset djay:1719192563573-244
CREATE INDEX campaign_tracker_key_idx ON campaign_trkrs(tracker_key);

-- changeset djay:1719192563573-245
CREATE INDEX constoken_key ON oauth_tokens(consumer);

-- changeset djay:1719192563573-246
CREATE INDEX documentrevision_mimetype ON document_revisions(file_mime_type);

-- changeset djay:1719192563573-247
CREATE INDEX documents_accounts_account_id ON documents_accounts(account_id, document_id);

-- changeset djay:1719192563573-248
CREATE INDEX documents_accounts_document_id ON documents_accounts(document_id, account_id);

-- changeset djay:1719192563573-249
CREATE INDEX documents_bugs_bug_id ON documents_bugs(bug_id, document_id);

-- changeset djay:1719192563573-250
CREATE INDEX documents_bugs_document_id ON documents_bugs(document_id, bug_id);

-- changeset djay:1719192563573-251
CREATE INDEX documents_cases_case_id ON documents_cases(case_id, document_id);

-- changeset djay:1719192563573-252
CREATE INDEX documents_cases_document_id ON documents_cases(document_id, case_id);

-- changeset djay:1719192563573-253
CREATE INDEX documents_contacts_contact_id ON documents_contacts(contact_id, document_id);

-- changeset djay:1719192563573-254
CREATE INDEX documents_contacts_document_id ON documents_contacts(document_id, contact_id);

-- changeset djay:1719192563573-255
CREATE INDEX email_mp_prospects ON email_marketing_prospect_lists(email_marketing_id, prospect_list_id);

-- changeset djay:1719192563573-256
CREATE INDEX emails_textfromaddr ON emails_text(from_addr);

-- changeset djay:1719192563573-257
CREATE INDEX fp_event_locations_fp_events_1_alt ON fp_event_locations_fp_events_1_c(fp_event_locations_fp_events_1fp_events_idb);

-- changeset djay:1719192563573-258
CREATE INDEX fp_event_locations_fp_events_1_ida1 ON fp_event_locations_fp_events_1_c(fp_event_locations_fp_events_1fp_event_locations_ida);

-- changeset djay:1719192563573-259
CREATE INDEX fp_events_contacts_alt ON fp_events_contacts_c(fp_events_contactsfp_events_ida, fp_events_contactscontacts_idb);

-- changeset djay:1719192563573-260
CREATE INDEX fp_events_fp_event_delegates_1_alt ON fp_events_fp_event_delegates_1_c(fp_events_fp_event_delegates_1fp_event_delegates_idb);

-- changeset djay:1719192563573-261
CREATE INDEX fp_events_fp_event_delegates_1_ida1 ON fp_events_fp_event_delegates_1_c(fp_events_fp_event_delegates_1fp_events_ida);

-- changeset djay:1719192563573-262
CREATE INDEX fp_events_fp_event_locations_1_alt ON fp_events_fp_event_locations_1_c(fp_events_fp_event_locations_1fp_events_ida, fp_events_fp_event_locations_1fp_event_locations_idb);

-- changeset djay:1719192563573-263
CREATE INDEX fp_events_leads_1_alt ON fp_events_leads_1_c(fp_events_leads_1fp_events_ida, fp_events_leads_1leads_idb);

-- changeset djay:1719192563573-264
CREATE INDEX fp_events_prospects_1_alt ON fp_events_prospects_1_c(fp_events_prospects_1fp_events_ida, fp_events_prospects_1prospects_idb);

-- changeset djay:1719192563573-265
CREATE INDEX idx_acc_acc_case ON accounts_cases(case_id);

-- changeset djay:1719192563573-266
CREATE INDEX idx_acc_bug_acc ON accounts_bugs(account_id);

-- changeset djay:1719192563573-267
CREATE INDEX idx_acc_bug_bug ON accounts_bugs(bug_id);

-- changeset djay:1719192563573-268
CREATE INDEX idx_acc_case_acc ON accounts_cases(account_id);

-- changeset djay:1719192563573-269
CREATE INDEX idx_accnt_assigned_del ON accounts(deleted, assigned_user_id);

-- changeset djay:1719192563573-270
CREATE INDEX idx_accnt_id_del ON accounts(id, deleted);

-- changeset djay:1719192563573-271
CREATE INDEX idx_accnt_name_del ON accounts(name, deleted);

-- changeset djay:1719192563573-272
CREATE INDEX idx_accnt_parent_id ON accounts(parent_id);

-- changeset djay:1719192563573-273
CREATE INDEX idx_account_bug ON accounts_bugs(account_id, bug_id);

-- changeset djay:1719192563573-274
CREATE INDEX idx_account_contact ON accounts_contacts(account_id, contact_id);

-- changeset djay:1719192563573-275
CREATE INDEX idx_account_id ON cases(account_id);

-- changeset djay:1719192563573-276
CREATE INDEX idx_account_opportunity ON accounts_opportunities(account_id, opportunity_id);

-- changeset djay:1719192563573-277
CREATE INDEX idx_accounts_parent_id ON accounts_audit(parent_id);

-- changeset djay:1719192563573-278
CREATE INDEX idx_acl_action_id ON acl_roles_actions(action_id);

-- changeset djay:1719192563573-279
CREATE INDEX idx_acl_role_id ON acl_roles_actions(role_id);

-- changeset djay:1719192563573-280
CREATE INDEX idx_aclaction_id_del ON acl_actions(id, deleted);

-- changeset djay:1719192563573-281
CREATE INDEX idx_aclrole_action ON acl_roles_actions(role_id, action_id);

-- changeset djay:1719192563573-282
CREATE INDEX idx_aclrole_id ON acl_roles_users(role_id);

-- changeset djay:1719192563573-283
CREATE INDEX idx_aclrole_id_del ON acl_roles(id, deleted);

-- changeset djay:1719192563573-284
CREATE INDEX idx_aclrole_user ON acl_roles_users(role_id, user_id);

-- changeset djay:1719192563573-285
CREATE INDEX idx_acluser_id ON acl_roles_users(user_id);

-- changeset djay:1719192563573-286
CREATE INDEX idx_actid_del_freid ON aow_processed_aow_actions(aow_action_id, deleted, aow_processed_id);

-- changeset djay:1719192563573-287
CREATE INDEX idx_am_projecttemplates_parent_id ON am_projecttemplates_audit(parent_id);

-- changeset djay:1719192563573-288
CREATE INDEX idx_am_tasktemplates_parent_id ON am_tasktemplates_audit(parent_id);

-- changeset djay:1719192563573-289
CREATE INDEX idx_aod_index_parent_id ON aod_index_audit(parent_id);

-- changeset djay:1719192563573-290
CREATE INDEX idx_aod_indexevent_parent_id ON aod_indexevent_audit(parent_id);

-- changeset djay:1719192563573-291
CREATE INDEX idx_aok_knowledge_base_categories_parent_id ON aok_knowledge_base_categories_audit(parent_id);

-- changeset djay:1719192563573-292
CREATE INDEX idx_aok_knowledgebase_parent_id ON aok_knowledgebase_audit(parent_id);

-- changeset djay:1719192563573-293
CREATE INDEX idx_aop_case_events_parent_id ON aop_case_events_audit(parent_id);

-- changeset djay:1719192563573-294
CREATE INDEX idx_aop_case_updates_parent_id ON aop_case_updates_audit(parent_id);

-- changeset djay:1719192563573-295
CREATE INDEX idx_aor_reports_parent_id ON aor_reports_audit(parent_id);

-- changeset djay:1719192563573-296
CREATE INDEX idx_aos_contracts_parent_id ON aos_contracts_audit(parent_id);

-- changeset djay:1719192563573-297
CREATE INDEX idx_aos_invoices_parent_id ON aos_invoices_audit(parent_id);

-- changeset djay:1719192563573-298
CREATE INDEX idx_aos_line_item_groups_parent_id ON aos_line_item_groups_audit(parent_id);

-- changeset djay:1719192563573-299
CREATE INDEX idx_aos_pdf_templates_parent_id ON aos_pdf_templates_audit(parent_id);

-- changeset djay:1719192563573-300
CREATE INDEX idx_aos_product_categories_parent_id ON aos_product_categories_audit(parent_id);

-- changeset djay:1719192563573-301
CREATE INDEX idx_aos_products_parent_id ON aos_products_audit(parent_id);

-- changeset djay:1719192563573-302
CREATE INDEX idx_aos_products_quotes_parent_id ON aos_products_quotes_audit(parent_id);

-- changeset djay:1719192563573-303
CREATE INDEX idx_aos_quotes_parent_id ON aos_quotes_audit(parent_id);

-- changeset djay:1719192563573-304
CREATE INDEX idx_aospq_par_del ON aos_products_quotes(parent_id, parent_type, deleted);

-- changeset djay:1719192563573-305
CREATE INDEX idx_aow_processed_aow_actions ON aow_processed_aow_actions(aow_processed_id, aow_action_id);

-- changeset djay:1719192563573-306
CREATE INDEX idx_aow_workflow_parent_id ON aow_workflow_audit(parent_id);

-- changeset djay:1719192563573-307
CREATE INDEX idx_app_active ON eapm(assigned_user_id, application, validated);

-- changeset djay:1719192563573-308
CREATE INDEX idx_bean_id ON email_addr_bean_rel(bean_id, bean_module);

-- changeset djay:1719192563573-309
CREATE INDEX idx_beanid_set_num ON custom_fields(bean_id, set_num);

-- changeset djay:1719192563573-310
CREATE INDEX idx_bug_name ON bugs(name);

-- changeset djay:1719192563573-311
CREATE INDEX idx_bugs_assigned_user ON bugs(assigned_user_id);

-- changeset djay:1719192563573-312
CREATE INDEX idx_bugs_parent_id ON bugs_audit(parent_id);

-- changeset djay:1719192563573-313
CREATE INDEX idx_call_contact ON calls_contacts(call_id, contact_id);

-- changeset djay:1719192563573-314
CREATE INDEX idx_call_lead ON calls_leads(call_id, lead_id);

-- changeset djay:1719192563573-315
CREATE INDEX idx_call_name ON calls(name);

-- changeset djay:1719192563573-316
CREATE INDEX idx_call_users ON calls_users(call_id, user_id);

-- changeset djay:1719192563573-317
CREATE INDEX idx_calls_assigned_del ON calls(deleted, assigned_user_id);

-- changeset djay:1719192563573-318
CREATE INDEX idx_calls_date_start ON calls(date_start);

-- changeset djay:1719192563573-319
CREATE INDEX idx_calls_par_del ON calls(parent_id, parent_type, deleted);

-- changeset djay:1719192563573-320
CREATE INDEX idx_calls_reschedule_parent_id ON calls_reschedule_audit(parent_id);

-- changeset djay:1719192563573-321
CREATE INDEX idx_cam_id ON prospect_list_campaigns(campaign_id);

-- changeset djay:1719192563573-322
CREATE INDEX idx_camp_campaign_id ON campaign_log(campaign_id);

-- changeset djay:1719192563573-323
CREATE INDEX idx_camp_more_info ON campaign_log(more_information);

-- changeset djay:1719192563573-324
CREATE INDEX idx_camp_tracker ON campaign_log(target_tracker_key);

-- changeset djay:1719192563573-325
CREATE INDEX idx_campaign_name ON campaigns(name);

-- changeset djay:1719192563573-326
CREATE INDEX idx_campaigns_parent_id ON campaigns_audit(parent_id);

-- changeset djay:1719192563573-327
CREATE INDEX idx_cas_bug_bug ON cases_bugs(bug_id);

-- changeset djay:1719192563573-328
CREATE INDEX idx_cas_bug_cas ON cases_bugs(case_id);

-- changeset djay:1719192563573-329
CREATE INDEX idx_case_bug ON cases_bugs(case_id, bug_id);

-- changeset djay:1719192563573-330
CREATE INDEX idx_case_name ON cases(name);

-- changeset djay:1719192563573-331
CREATE INDEX idx_cases_parent_id ON cases_audit(parent_id);

-- changeset djay:1719192563573-332
CREATE INDEX idx_cases_stat_del ON cases(assigned_user_id, status, deleted);

-- changeset djay:1719192563573-333
CREATE INDEX idx_category_name ON acl_actions(category, name);

-- changeset djay:1719192563573-334
CREATE INDEX idx_con_bug_bug ON contacts_bugs(bug_id);

-- changeset djay:1719192563573-335
CREATE INDEX idx_con_bug_con ON contacts_bugs(contact_id);

-- changeset djay:1719192563573-336
CREATE INDEX idx_con_call_call ON calls_contacts(call_id);

-- changeset djay:1719192563573-337
CREATE INDEX idx_con_call_con ON calls_contacts(contact_id);

-- changeset djay:1719192563573-338
CREATE INDEX idx_con_case_case ON contacts_cases(case_id);

-- changeset djay:1719192563573-339
CREATE INDEX idx_con_case_con ON contacts_cases(contact_id);

-- changeset djay:1719192563573-340
CREATE INDEX idx_con_mtg_con ON meetings_contacts(contact_id);

-- changeset djay:1719192563573-341
CREATE INDEX idx_con_mtg_mtg ON meetings_contacts(meeting_id);

-- changeset djay:1719192563573-342
CREATE INDEX idx_con_opp_con ON opportunities_contacts(contact_id);

-- changeset djay:1719192563573-343
CREATE INDEX idx_con_opp_opp ON opportunities_contacts(opportunity_id);

-- changeset djay:1719192563573-344
CREATE INDEX idx_con_users_con ON contacts_users(contact_id);

-- changeset djay:1719192563573-345
CREATE INDEX idx_con_users_user ON contacts_users(user_id);

-- changeset djay:1719192563573-346
CREATE INDEX idx_config_cat ON config(category);

-- changeset djay:1719192563573-347
CREATE INDEX idx_cont_assigned ON contacts(assigned_user_id);

-- changeset djay:1719192563573-348
CREATE INDEX idx_cont_del_reports ON contacts(deleted, reports_to_id, last_name);

-- changeset djay:1719192563573-349
CREATE INDEX idx_cont_last_first ON contacts(last_name, first_name, deleted);

-- changeset djay:1719192563573-350
CREATE INDEX idx_contact_bug ON contacts_bugs(contact_id, bug_id);

-- changeset djay:1719192563573-351
CREATE INDEX idx_contacts_cases ON contacts_cases(contact_id, case_id);

-- changeset djay:1719192563573-352
CREATE INDEX idx_contacts_del_last ON contacts(deleted, last_name);

-- changeset djay:1719192563573-353
CREATE INDEX idx_contacts_parent_id ON contacts_audit(parent_id);

-- changeset djay:1719192563573-354
CREATE INDEX idx_contacts_users ON contacts_users(contact_id, user_id);

-- changeset djay:1719192563573-355
CREATE INDEX idx_contid_del_accid ON accounts_contacts(contact_id, deleted, account_id);

-- changeset djay:1719192563573-356
CREATE INDEX idx_cron_remove_document_bean_id ON cron_remove_documents(bean_id);

-- changeset djay:1719192563573-357
CREATE INDEX idx_cron_remove_document_stamp ON cron_remove_documents(date_modified);

-- changeset djay:1719192563573-358
CREATE INDEX idx_currency_name ON currencies(name, deleted);

-- changeset djay:1719192563573-359
CREATE INDEX idx_del_id_user ON contacts(deleted, id, assigned_user_id);

-- changeset djay:1719192563573-360
CREATE INDEX idx_del_user ON leads(deleted, assigned_user_id);

-- changeset djay:1719192563573-361
CREATE INDEX idx_desc ON saved_search(name, deleted);

-- changeset djay:1719192563573-362
CREATE INDEX idx_doc_cat ON documents(category_id, subcategory_id);

-- changeset djay:1719192563573-363
CREATE INDEX idx_docu_oppo_docu_id ON documents_opportunities(document_id, opportunity_id);

-- changeset djay:1719192563573-364
CREATE INDEX idx_docu_opps_oppo_id ON documents_opportunities(opportunity_id, document_id);

-- changeset djay:1719192563573-365
CREATE INDEX idx_ea_caps_opt_out_invalid ON email_addresses(email_address_caps, opt_out, invalid_email);

-- changeset djay:1719192563573-366
CREATE INDEX idx_ea_opt_out_invalid ON email_addresses(email_address, opt_out, invalid_email);

-- changeset djay:1719192563573-367
CREATE INDEX idx_eearl_address_id ON emails_email_addr_rel(email_address_id);

-- changeset djay:1719192563573-368
CREATE INDEX idx_eearl_email_id ON emails_email_addr_rel(email_id, address_type);

-- changeset djay:1719192563573-369
CREATE INDEX idx_email_address_id ON email_addr_bean_rel(email_address_id);

-- changeset djay:1719192563573-370
CREATE INDEX idx_email_addresses_parent_id ON email_addresses_audit(parent_id);

-- changeset djay:1719192563573-371
CREATE INDEX idx_email_assigned ON emails(assigned_user_id, type, status);

-- changeset djay:1719192563573-372
CREATE INDEX idx_email_cat ON emails(category_id);

-- changeset djay:1719192563573-373
CREATE INDEX idx_email_name ON emails(name);

-- changeset djay:1719192563573-374
CREATE INDEX idx_email_parent_id ON emails(parent_id);

-- changeset djay:1719192563573-375
CREATE INDEX idx_email_template_name ON email_templates(name);

-- changeset djay:1719192563573-376
CREATE INDEX idx_email_uid ON emails(uid);

-- changeset djay:1719192563573-377
CREATE INDEX idx_emails_beans_bean_id ON emails_beans(bean_id);

-- changeset djay:1719192563573-378
CREATE INDEX idx_emails_beans_email_bean ON emails_beans(email_id, bean_id, deleted);

-- changeset djay:1719192563573-379
CREATE INDEX idx_eman_campaign_id ON emailman(campaign_id);

-- changeset djay:1719192563573-380
CREATE INDEX idx_eman_list ON emailman(list_id, user_id, deleted);

-- changeset djay:1719192563573-381
CREATE INDEX idx_eman_relid_reltype_id ON emailman(related_id, related_type, campaign_id);

-- changeset djay:1719192563573-382
CREATE INDEX idx_emmkit_del ON email_marketing(deleted);

-- changeset djay:1719192563573-383
CREATE INDEX idx_emmkt_name ON email_marketing(name);

-- changeset djay:1719192563573-384
CREATE INDEX idx_folder_id_assigned_user_id ON folders_subscriptions(folder_id, assigned_user_id);

-- changeset djay:1719192563573-385
CREATE INDEX idx_fp_event_locations_parent_id ON fp_event_locations_audit(parent_id);

-- changeset djay:1719192563573-386
CREATE INDEX idx_fp_events_parent_id ON fp_events_audit(parent_id);

-- changeset djay:1719192563573-387
CREATE INDEX idx_fr_id_deleted_poly ON folders_rel(folder_id, deleted, polymorphic_id);

-- changeset djay:1719192563573-388
CREATE INDEX idx_ie_autoreplied_to ON inbound_email_autoreply(autoreplied_to);

-- changeset djay:1719192563573-389
CREATE INDEX idx_ie_id ON email_cache(ie_id);

-- changeset djay:1719192563573-390
CREATE INDEX idx_jjwg_address_cache_parent_id ON jjwg_address_cache_audit(parent_id);

-- changeset djay:1719192563573-391
CREATE INDEX idx_jjwg_areas_parent_id ON jjwg_areas_audit(parent_id);

-- changeset djay:1719192563573-392
CREATE INDEX idx_jjwg_maps_parent_id ON jjwg_maps_audit(parent_id);

-- changeset djay:1719192563573-393
CREATE INDEX idx_jjwg_markers_parent_id ON jjwg_markers_audit(parent_id);

-- changeset djay:1719192563573-394
CREATE INDEX idx_lead_acct_name_first ON leads(account_name, deleted);

-- changeset djay:1719192563573-395
CREATE INDEX idx_lead_assigned ON leads(assigned_user_id);

-- changeset djay:1719192563573-396
CREATE INDEX idx_lead_call_call ON calls_leads(call_id);

-- changeset djay:1719192563573-397
CREATE INDEX idx_lead_call_lead ON calls_leads(lead_id);

-- changeset djay:1719192563573-398
CREATE INDEX idx_lead_contact ON leads(contact_id);

-- changeset djay:1719192563573-399
CREATE INDEX idx_lead_del_stat ON leads(last_name, status, deleted, first_name);

-- changeset djay:1719192563573-400
CREATE INDEX idx_lead_last_first ON leads(last_name, first_name, deleted);

-- changeset djay:1719192563573-401
CREATE INDEX idx_lead_meeting_lead ON meetings_leads(lead_id);

-- changeset djay:1719192563573-402
CREATE INDEX idx_lead_meeting_meeting ON meetings_leads(meeting_id);

-- changeset djay:1719192563573-403
CREATE INDEX idx_lead_opp_del ON leads(opportunity_id, deleted);

-- changeset djay:1719192563573-404
CREATE INDEX idx_lead_phone_work ON leads(phone_work);

-- changeset djay:1719192563573-405
CREATE INDEX idx_leads_acct_del ON leads(account_id, deleted);

-- changeset djay:1719192563573-406
CREATE INDEX idx_leads_id_del ON leads(id, deleted);

-- changeset djay:1719192563573-407
CREATE INDEX idx_leads_parent_id ON leads_audit(parent_id);

-- changeset djay:1719192563573-408
CREATE INDEX idx_mail_date ON email_cache(ie_id, mbox, senddate);

-- changeset djay:1719192563573-409
CREATE INDEX idx_mail_from ON email_cache(ie_id, mbox, fromaddr);

-- changeset djay:1719192563573-410
CREATE INDEX idx_mail_subj ON email_cache(subject);

-- changeset djay:1719192563573-411
CREATE INDEX idx_mail_to ON email_cache(toaddr);

-- changeset djay:1719192563573-412
CREATE INDEX idx_meet_date_start ON meetings(date_start);

-- changeset djay:1719192563573-413
CREATE INDEX idx_meet_par_del ON meetings(parent_id, parent_type, deleted);

-- changeset djay:1719192563573-414
CREATE INDEX idx_meet_stat_del ON meetings(assigned_user_id, status, deleted);

-- changeset djay:1719192563573-415
CREATE INDEX idx_meeting_contact ON meetings_contacts(meeting_id, contact_id);

-- changeset djay:1719192563573-416
CREATE INDEX idx_meeting_lead ON meetings_leads(meeting_id, lead_id);

-- changeset djay:1719192563573-417
CREATE INDEX idx_meeting_users ON meetings_users(meeting_id, user_id);

-- changeset djay:1719192563573-418
CREATE INDEX idx_message_id ON emails(message_id);

-- changeset djay:1719192563573-419
CREATE INDEX idx_meta_cm_del ON fields_meta_data(custom_module, deleted);

-- changeset djay:1719192563573-420
CREATE INDEX idx_meta_id_del ON fields_meta_data(id, deleted);

-- changeset djay:1719192563573-421
CREATE INDEX idx_module_id ON roles_modules(module_id);

-- changeset djay:1719192563573-422
CREATE INDEX idx_mtg_name ON meetings(name);

-- changeset djay:1719192563573-423
CREATE INDEX idx_note_contact ON notes(contact_id);

-- changeset djay:1719192563573-424
CREATE INDEX idx_note_name ON notes(name);

-- changeset djay:1719192563573-425
CREATE INDEX idx_notes_assigned_del ON notes(deleted, assigned_user_id);

-- changeset djay:1719192563573-426
CREATE INDEX idx_notes_parent ON notes(parent_id, parent_type);

-- changeset djay:1719192563573-427
CREATE INDEX idx_opp_assigned ON opportunities(assigned_user_id);

-- changeset djay:1719192563573-428
CREATE INDEX idx_opp_id_deleted ON opportunities(id, deleted);

-- changeset djay:1719192563573-429
CREATE INDEX idx_opp_name ON opportunities(name);

-- changeset djay:1719192563573-430
CREATE INDEX idx_oppid_del_accid ON accounts_opportunities(opportunity_id, deleted, account_id);

-- changeset djay:1719192563573-431
CREATE INDEX idx_opportunities_contacts ON opportunities_contacts(opportunity_id, contact_id);

-- changeset djay:1719192563573-432
CREATE INDEX idx_opportunities_parent_id ON opportunities_audit(parent_id);

-- changeset djay:1719192563573-433
CREATE INDEX idx_outbound_email_parent_id ON outbound_email_audit(parent_id);

-- changeset djay:1719192563573-434
CREATE INDEX idx_owner_module_name ON import_maps(assigned_user_id, module, name, deleted);

-- changeset djay:1719192563573-435
CREATE INDEX idx_parent_document ON linked_documents(parent_type, parent_id, document_id);

-- changeset djay:1719192563573-436
CREATE INDEX idx_parent_folder ON folders(parent_folder);

-- changeset djay:1719192563573-437
CREATE INDEX idx_plp_pro_id ON prospect_lists_prospects(prospect_list_id, deleted);

-- changeset djay:1719192563573-438
CREATE INDEX idx_plp_rel_id ON prospect_lists_prospects(related_id, related_type, prospect_list_id);

-- changeset djay:1719192563573-439
CREATE INDEX idx_poly_module_poly_id ON folders_rel(polymorphic_module, polymorphic_id);

-- changeset djay:1719192563573-440
CREATE INDEX idx_pro_id ON prospect_list_campaigns(prospect_list_id);

-- changeset djay:1719192563573-441
CREATE INDEX idx_proj_acct_acct ON projects_accounts(account_id);

-- changeset djay:1719192563573-442
CREATE INDEX idx_proj_acct_proj ON projects_accounts(project_id);

-- changeset djay:1719192563573-443
CREATE INDEX idx_proj_bug_bug ON projects_bugs(bug_id);

-- changeset djay:1719192563573-444
CREATE INDEX idx_proj_bug_proj ON projects_bugs(project_id);

-- changeset djay:1719192563573-445
CREATE INDEX idx_proj_case_case ON projects_cases(case_id);

-- changeset djay:1719192563573-446
CREATE INDEX idx_proj_case_proj ON projects_cases(project_id);

-- changeset djay:1719192563573-447
CREATE INDEX idx_proj_con_con ON projects_contacts(contact_id);

-- changeset djay:1719192563573-448
CREATE INDEX idx_proj_con_proj ON projects_contacts(project_id);

-- changeset djay:1719192563573-449
CREATE INDEX idx_proj_opp_opp ON projects_opportunities(opportunity_id);

-- changeset djay:1719192563573-450
CREATE INDEX idx_proj_opp_proj ON projects_opportunities(project_id);

-- changeset djay:1719192563573-451
CREATE INDEX idx_proj_prod_product ON projects_products(product_id);

-- changeset djay:1719192563573-452
CREATE INDEX idx_proj_prod_project ON projects_products(project_id);

-- changeset djay:1719192563573-453
CREATE INDEX idx_project_task_parent_id ON project_task_audit(parent_id);

-- changeset djay:1719192563573-454
CREATE INDEX idx_prospecs_del_last ON prospects(last_name, deleted);

-- changeset djay:1719192563573-455
CREATE INDEX idx_prospect_list_campaigns ON prospect_list_campaigns(prospect_list_id, campaign_id);

-- changeset djay:1719192563573-456
CREATE INDEX idx_prospect_list_name ON prospect_lists(name);

-- changeset djay:1719192563573-457
CREATE INDEX idx_prospects_assigned ON prospects(assigned_user_id);

-- changeset djay:1719192563573-458
CREATE INDEX idx_prospects_id_del ON prospects(id, deleted);

-- changeset djay:1719192563573-459
CREATE INDEX idx_prospects_last_first ON prospects(last_name, first_name, deleted);

-- changeset djay:1719192563573-460
CREATE INDEX idx_record_id ON aod_indexevent(record_id);

-- changeset djay:1719192563573-461
CREATE INDEX idx_record_module ON aod_indexevent(record_module);

-- changeset djay:1719192563573-462
CREATE INDEX idx_rel_name ON relationships(relationship_name);

-- changeset djay:1719192563573-463
CREATE INDEX idx_releases ON releases(name, deleted);

-- changeset djay:1719192563573-464
CREATE INDEX idx_reminder_deleted ON reminders(deleted);

-- changeset djay:1719192563573-465
CREATE INDEX idx_reminder_invitee_assigned_user_id ON reminders_invitees(assigned_user_id);

-- changeset djay:1719192563573-466
CREATE INDEX idx_reminder_invitee_name ON reminders_invitees(name);

-- changeset djay:1719192563573-467
CREATE INDEX idx_reminder_invitee_related_invitee_module ON reminders_invitees(related_invitee_module);

-- changeset djay:1719192563573-468
CREATE INDEX idx_reminder_invitee_related_invitee_module_id ON reminders_invitees(related_invitee_module_id);

-- changeset djay:1719192563573-469
CREATE INDEX idx_reminder_invitee_reminder_id ON reminders_invitees(reminder_id);

-- changeset djay:1719192563573-470
CREATE INDEX idx_reminder_name ON reminders(name);

-- changeset djay:1719192563573-471
CREATE INDEX idx_reminder_related_event_module ON reminders(related_event_module);

-- changeset djay:1719192563573-472
CREATE INDEX idx_reminder_related_event_module_id ON reminders(related_event_module_id);

-- changeset djay:1719192563573-473
CREATE INDEX idx_reports_to ON leads(reports_to_id);

-- changeset djay:1719192563573-474
CREATE INDEX idx_reports_to_id ON contacts(reports_to_id);

-- changeset djay:1719192563573-475
CREATE INDEX idx_role_id ON roles_modules(role_id);

-- changeset djay:1719192563573-476
CREATE INDEX idx_role_id_del ON roles(id, deleted);

-- changeset djay:1719192563573-477
CREATE INDEX idx_ru_role_id ON roles_users(role_id);

-- changeset djay:1719192563573-478
CREATE INDEX idx_ru_user_id ON roles_users(user_id);

-- changeset djay:1719192563573-479
CREATE INDEX idx_schedule ON schedulers(date_time_start, deleted);

-- changeset djay:1719192563573-480
CREATE INDEX idx_securitygroups_parent_id ON securitygroups_audit(parent_id);

-- changeset djay:1719192563573-481
CREATE INDEX idx_securitygroups_records_del ON securitygroups_records(deleted, record_id, module, securitygroup_id);

-- changeset djay:1719192563573-482
CREATE INDEX idx_securitygroups_records_mod ON securitygroups_records(module, deleted, record_id, securitygroup_id);

-- changeset djay:1719192563573-483
CREATE INDEX idx_status ON calls(status);

-- changeset djay:1719192563573-484
CREATE INDEX idx_status_entered ON job_queue(status, date_entered);

-- changeset djay:1719192563573-485
CREATE INDEX idx_status_modified ON job_queue(status, date_modified);

-- changeset djay:1719192563573-486
CREATE INDEX idx_status_scheduler ON job_queue(status, scheduler_id);

-- changeset djay:1719192563573-487
CREATE INDEX idx_status_time ON job_queue(status, execute_time, date_entered);

-- changeset djay:1719192563573-488
CREATE INDEX idx_survey_id ON campaigns(survey_id);

-- changeset djay:1719192563573-489
CREATE INDEX idx_surveyquestionoptions_parent_id ON surveyquestionoptions_audit(parent_id);

-- changeset djay:1719192563573-490
CREATE INDEX idx_surveyquestionresponses_parent_id ON surveyquestionresponses_audit(parent_id);

-- changeset djay:1719192563573-491
CREATE INDEX idx_surveyquestions_parent_id ON surveyquestions_audit(parent_id);

-- changeset djay:1719192563573-492
CREATE INDEX idx_surveyresponses_parent_id ON surveyresponses_audit(parent_id);

-- changeset djay:1719192563573-493
CREATE INDEX idx_surveys_parent_id ON surveys_audit(parent_id);

-- changeset djay:1719192563573-494
CREATE INDEX idx_target_id ON campaign_log(target_id);

-- changeset djay:1719192563573-495
CREATE INDEX idx_target_id_deleted ON campaign_log(target_id, deleted);

-- changeset djay:1719192563573-496
CREATE INDEX idx_task_assigned ON tasks(assigned_user_id);

-- changeset djay:1719192563573-497
CREATE INDEX idx_task_con_del ON tasks(contact_id, deleted);

-- changeset djay:1719192563573-498
CREATE INDEX idx_task_par_del ON tasks(parent_id, parent_type, deleted);

-- changeset djay:1719192563573-499
CREATE INDEX idx_task_status ON tasks(status);

-- changeset djay:1719192563573-500
CREATE INDEX idx_tracker_date_modified ON tracker(date_modified);

-- changeset djay:1719192563573-501
CREATE INDEX idx_tracker_iid ON tracker(item_id);

-- changeset djay:1719192563573-502
CREATE INDEX idx_tracker_monitor_id ON tracker(monitor_id);

-- changeset djay:1719192563573-503
CREATE INDEX idx_tracker_userid_itemid_vis ON tracker(user_id, item_id, `visible`);

-- changeset djay:1719192563573-504
CREATE INDEX idx_tracker_userid_vis_id ON tracker(user_id, `visible`, id);

-- changeset djay:1719192563573-505
CREATE INDEX idx_tsk_name ON tasks(name);

-- changeset djay:1719192563573-506
CREATE INDEX idx_ud_user_id ON users_feeds(user_id, feed_id);

-- changeset djay:1719192563573-507
CREATE INDEX idx_user_id ON users_last_import(assigned_user_id);

-- changeset djay:1719192563573-508
CREATE INDEX idx_user_name ON users(user_name, is_group, status, last_name, first_name, id);

-- changeset djay:1719192563573-509
CREATE INDEX idx_username ON users_password_link(username);

-- changeset djay:1719192563573-510
CREATE INDEX idx_userprefnamecat ON user_preferences(assigned_user_id, category);

-- changeset djay:1719192563573-511
CREATE INDEX idx_usersig_uid ON users_signatures(user_id);

-- changeset djay:1719192563573-512
CREATE INDEX idx_usr_call_call ON calls_users(call_id);

-- changeset djay:1719192563573-513
CREATE INDEX idx_usr_call_usr ON calls_users(user_id);

-- changeset djay:1719192563573-514
CREATE INDEX idx_usr_mtg_mtg ON meetings_users(meeting_id);

-- changeset djay:1719192563573-515
CREATE INDEX idx_usr_mtg_usr ON meetings_users(user_id);

-- changeset djay:1719192563573-516
CREATE INDEX idx_vcal ON vcals(type, user_id);

-- changeset djay:1719192563573-517
CREATE INDEX jjwg_maps_jjwg_areas_alt ON jjwg_maps_jjwg_areas_c(jjwg_maps_5304wg_maps_ida, jjwg_maps_41f2g_areas_idb);

-- changeset djay:1719192563573-518
CREATE INDEX jjwg_maps_jjwg_markers_alt ON jjwg_maps_jjwg_markers_c(jjwg_maps_b229wg_maps_ida, jjwg_maps_2e31markers_idb);

-- changeset djay:1719192563573-519
CREATE INDEX oauth_nonce_keyts ON oauth_nonce(conskey, nonce_ts);

-- changeset djay:1719192563573-520
CREATE INDEX oauth_state_ts ON oauth_tokens(tstate, token_ts);

-- changeset djay:1719192563573-521
CREATE INDEX project_contacts_1_alt ON project_contacts_1_c(project_contacts_1project_ida, project_contacts_1contacts_idb);

-- changeset djay:1719192563573-522
CREATE INDEX project_users_1_alt ON project_users_1_c(project_users_1project_ida, project_users_1users_idb);

-- changeset djay:1719192563573-523
CREATE INDEX projects_accounts_alt ON projects_accounts(project_id, account_id);

-- changeset djay:1719192563573-524
CREATE INDEX projects_bugs_alt ON projects_bugs(project_id, bug_id);

-- changeset djay:1719192563573-525
CREATE INDEX projects_cases_alt ON projects_cases(project_id, case_id);

-- changeset djay:1719192563573-526
CREATE INDEX projects_contacts_alt ON projects_contacts(project_id, contact_id);

-- changeset djay:1719192563573-527
CREATE INDEX projects_opportunities_alt ON projects_opportunities(project_id, opportunity_id);

-- changeset djay:1719192563573-528
CREATE INDEX projects_products_alt ON projects_products(project_id, product_id);

-- changeset djay:1719192563573-529
CREATE INDEX prospect_auto_tracker_key ON prospects(tracker_key);

-- changeset djay:1719192563573-530
CREATE INDEX securitygroups_users_idxa ON securitygroups_users(securitygroup_id);

-- changeset djay:1719192563573-531
CREATE INDEX securitygroups_users_idxb ON securitygroups_users(user_id);

-- changeset djay:1719192563573-532
CREATE INDEX securitygroups_users_idxc ON securitygroups_users(user_id, deleted, securitygroup_id, id);

-- changeset djay:1719192563573-533
CREATE INDEX securitygroups_users_idxd ON securitygroups_users(user_id, deleted, securitygroup_id);

-- changeset djay:1719192563573-534
CREATE INDEX sgrfeed_date ON sugarfeed(date_entered, deleted);

-- changeset djay:1719192563573-535
CREATE INDEX surveyquestionoptions_surveyquestionresponses_alt ON surveyquestionoptions_surveyquestionresponses(surveyq72c7options_ida, surveyq10d4sponses_idb);

