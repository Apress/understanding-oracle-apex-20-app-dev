prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_200100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>27215571348226909931
,p_default_application_id=>84796
,p_default_id_offset=>26958554077681729309
,p_default_owner=>'UNDERSTANDINGAPEX'
);
end;
/
 
prompt APPLICATION 84796 - Understanding APEX Employee Demo
--
-- Application Export:
--   Application:     84796
--   Name:            Understanding APEX Employee Demo
--   Date and Time:   03:34 Thursday August 20, 2020
--   Exported By:     SCIORE@BC.EDU
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     51
--       Items:                  205
--       Computations:             4
--       Validations:             13
--       Processes:               70
--       Regions:                110
--       Buttons:                 83
--       Dynamic Actions:          4
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  4
--         Breadcrumbs:            1
--           Entries:              2
--       Security:
--         Authentication:         4
--         Authorization:          3
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              16
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              11
--         LOVs:                   1
--         Shortcuts:              1
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Excluded
--   Version:         20.1.0.00.13
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'UNDERSTANDINGAPEX')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Understanding APEX Employee Demo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'EMPLOYEE-DEMO84796')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'B1D6CB1BB4EDE128B368BA5536E975BAEEB299A951922EC64FB7BF973C632C30'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2020.03.15.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(27368345470575268612)
,p_application_tab_set=>1
,p_logo_type=>'I'
,p_logo=>'&APP_IMAGES.Logo.jpg'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Employee Demo'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200818210914'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>7
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(27368346242994268612)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27368494185396268733)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28437233957109634829)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Regions'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27427105940651976526)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Classic Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(28437233957109634829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27791750749732766200)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Charts'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(28437233957109634829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28263765601803091471)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Interactive Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(28437233957109634829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41336885838962089241)
,p_list_item_display_sequence=>55
,p_list_item_link_text=>'Fun With Regions'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(28437233957109634829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28437234915279636473)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Lists'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28424225151743674044)
,p_list_item_display_sequence=>65
,p_list_item_link_text=>'List Practice'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(28437234915279636473)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28494610023518456861)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Items'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28612250575079153583)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Item Sampler'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(28494610023518456861)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28820992864310943501)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Session State'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28820418076530938267)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Filter by Job and Department'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(28820992864310943501)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28823926268474087812)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Filter by Possible Department'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(28820992864310943501)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28826942680829181445)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Filter by Salary Range'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(28820992864310943501)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28833548893934557104)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Employees by Department'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(28820992864310943501)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28835368997338583318)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Employees by Job'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(28820992864310943501)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28849712349801198264)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Cascading Lists'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(28820992864310943501)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28869073988629796844)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Display Table'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(28820992864310943501)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28878159912904874424)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Select Region'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(28820992864310943501)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30276847425314891764)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Processes'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30950783905272255631)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Emp Data Entry'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(30276847425314891764)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31023182164648889318)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Sales Commission'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(30276847425314891764)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31047536544004358679)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Revised Emp Data Entry'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(30276847425314891764)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31681206579473654316)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Single Row View'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(30276847425314891764)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31710159656600235493)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Single Row Update'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(30276847425314891764)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31978091786496244172)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Branching'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34391384000241510482)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Filter and Branch'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(31978091786496244172)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34422120645788020429)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Preference Chooser'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(31978091786496244172)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34459363521981082969)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'New Employee Wizard'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(31978091786496244172)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34781106391928864755)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Forms'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34985958786717360344)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Form View'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(34781106391928864755)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34781758240345879227)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'Form Update'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(34781106391928864755)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(35153759574470692372)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'Report with Form'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(34781106391928864755)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31,32'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(35537590392669100846)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'Tree with Form'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(34781106391928864755)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(36164028538718605543)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'Master-Detail Report with Form'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(34781106391928864755)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35,37'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(36433498538405776938)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'Master-Detail Wizard Page'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(34781106391928864755)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(53759919645327494169)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'Grids'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(37872272372156688117)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'Interactive Grids'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(53759919645327494169)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'42'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(38990187061317340978)
,p_list_item_display_sequence=>410
,p_list_item_link_text=>'Dynamic SQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(38868112740988114734)
,p_list_item_display_sequence=>420
,p_list_item_link_text=>'Report Builder'
,p_list_item_link_target=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(38990187061317340978)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'43'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39025201161380318788)
,p_list_item_display_sequence=>430
,p_list_item_link_text=>'Count and Delete'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(38990187061317340978)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'44'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(53032074804474481130)
,p_list_item_display_sequence=>500
,p_list_item_link_text=>'Sortable Single Row View'
,p_list_item_link_target=>'f?p=&APP_ID.:45:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(38990187061317340978)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'45'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39413835471108474713)
,p_list_item_display_sequence=>450
,p_list_item_link_text=>'Security'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39413038852160512885)
,p_list_item_display_sequence=>460
,p_list_item_link_text=>'Manage Users'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(39413835471108474713)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'46'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39594800543912276488)
,p_list_item_display_sequence=>470
,p_list_item_link_text=>'Change Password'
,p_list_item_link_target=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(39413835471108474713)
,p_security_scheme=>'!'||wwv_flow_api.id(39589964255665149436)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'47'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39613237100434625177)
,p_list_item_display_sequence=>480
,p_list_item_link_text=>'SQL Injection'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(39413835471108474713)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'48'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39655042686838550711)
,p_list_item_display_sequence=>490
,p_list_item_link_text=>'Cross-Site Scripting'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(39413835471108474713)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'49'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(27368484033557268717)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27368495612606268736)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27368496116580268736)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(27368495612606268736)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27368496509392268737)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(27368495612606268736)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28374170254964598342)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Get the book'
,p_list_item_link_target=>'http://www.apress.com/9781484261651'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28374169030886596522)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Contact us'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/references
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(28390167259694791353)
,p_name=>'References'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28390167421516791354)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'APEX App Builder Guide'
,p_list_item_link_target=>'https://docs.oracle.com/en/database/oracle/application-express/20.1/htmdb/index.html'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28390167782798791356)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Ask Tom: An Oracle Help Site'
,p_list_item_link_target=>'http://asktom.oracle.com/pls/apex/f?p=100:1'
,p_list_item_current_for_pages=>'http://asktom.oracle.com/pls/apex/f?p=100:1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28390168199160791356)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'The Region Practice page'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/new_employee_wizard
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(34460521442322139632)
,p_name=>'New Employee Wizard'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34460521665123139632)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Enter Basic Info'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34460522076877139633)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Select Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34460522401575139634)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Select Hire Date'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34460522802930139635)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Confirm'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203634203634222077696474683D22363422206865696768743D223634223E3C726563742077696474683D2231303025';
wwv_flow_api.g_varchar2_table(2) := '22206865696768743D2231303025222066696C6C3D222333303946444222202F3E3C7061746820643D224D3233203234613420342030203120302D342D3420342E30303420342E303034203020302030203420347A6D302D37613320332030203120312D';
wwv_flow_api.g_varchar2_table(3) := '33203320332E30303320332E30303320302030203120332D337A6D392039613420342030203120302D342D3420342E30303420342E303034203020302030203420347A6D302D37613320332030203120312D33203320332E30303320332E303033203020';
wwv_flow_api.g_varchar2_table(4) := '30203120332D337A6D392039613420342030203120302D342D3420342E30303420342E303034203020302030203420347A6D302D37613320332030203120312D33203320332E30303320332E30303320302030203120332D337A22206F7061636974793D';
wwv_flow_api.g_varchar2_table(5) := '222E32222F3E3C7061746820643D224D3434203239682D36632D2E30363120302D2E3131382E3031342D2E3137392E30313841322E39393520322E393935203020302030203335203237682D36632D2E30363120302D2E3131382E3031342D2E3137392E';
wwv_flow_api.g_varchar2_table(6) := '30313841322E39393520322E393935203020302030203236203235682D3661332E30303320332E3030332030203020302D332033763661312E30303120312E303031203020302030203120316831763861312E30303120312E3030312030203020302031';
wwv_flow_api.g_varchar2_table(7) := '2031683661312E30303120312E30303120302030203020312D31762D366831763861312E30303120312E30303120302030203020312031683661312E30303120312E30303120302030203020312D31762D366831763861312E30303120312E3030312030';
wwv_flow_api.g_varchar2_table(8) := '2030203020312031683661312E30303120312E30303120302030203020312D31762D38683161312E30303120312E30303120302030203020312D31762D3661332E30303320332E3030332030203020302D332D337A6D2D31382031763133682D36762D39';
wwv_flow_api.g_varchar2_table(9) := '682D32762D3661322E30303220322E30303220302030203120322D32683661322E30303220322E30303220302030203120312E38343620312E323332632E3032322D2E30312E3034372D2E3031332E30372D2E30323241322E39393920322E3939392030';
wwv_flow_api.g_varchar2_table(10) := '203020302032362033307A6D392032763133682D36762D39682D32762D3661322E30303220322E30303220302030203120322D32683661322E30303220322E30303220302030203120312E38343620312E323332632E3032322D2E30312E3034372D2E30';
wwv_flow_api.g_varchar2_table(11) := '31332E30372D2E30323241322E39393920322E3939392030203020302033352033327A6D31312036682D327639682D36762D39682D32762D3661322E30303220322E30303220302030203120322D32683661322E30303220322E30303220302030203120';
wwv_flow_api.g_varchar2_table(12) := '3220327A22206F7061636974793D222E32222F3E3C7061746820643D224D3431203231613320332030203120312D33203320332E30303320332E30303320302030203120332D337A6D35203137682D327639682D36762D39682D32762D3661322E303032';
wwv_flow_api.g_varchar2_table(13) := '20322E30303220302030203120322D32683661322E30303220322E303032203020302031203220327A222066696C6C3D2223666366626661222F3E3C7061746820643D224D3332203139613320332030203120312D33203320332E30303320332E303033';
wwv_flow_api.g_varchar2_table(14) := '20302030203120332D337A6D33203133763133682D36762D39682D32762D3661322E30303220322E30303220302030203120322D32683661322E30303220322E30303220302030203120312E38343620312E323332632E3032322D2E30312E3034372D2E';
wwv_flow_api.g_varchar2_table(15) := '3031332E30372D2E30323241322E39393920322E3939392030203020302033352033327A222066696C6C3D222366636662666122206F7061636974793D222E36222F3E3C7061746820643D224D3233203137613320332030203120312D33203320332E30';
wwv_flow_api.g_varchar2_table(16) := '303320332E30303320302030203120332D337A6D33203133763133682D36762D39682D32762D3661322E30303220322E30303220302030203120322D32683661322E30303220322E30303220302030203120312E38343620312E323332632E3032322D2E';
wwv_flow_api.g_varchar2_table(17) := '30312E3034372D2E3031332E30372D2E30323241322E39393920322E3939392030203020302032362033307A222066696C6C3D222366636662666122206F7061636974793D222E34222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(27368485258861268721)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233330394644423B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(27368485552834268722)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/checkgreen_jpg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := 'FFD8FFE000104A46494600010101004800480000FFE20CDC4943435F50524F46494C4500010100000CCC6170706C021000006D6E74725247422058595A2007DF0004000A00090013000E616373704150504C000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(2) := '0000000000000000F6D6000100000000D32D6170706C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000116465736300000150000000626473636D000001B4000001B4637072740000';
wwv_flow_api.g_varchar2_table(3) := '036800000023777470740000038C000000147258595A000003A0000000146758595A000003B4000000146258595A000003C80000001472545243000003DC0000080C6161726700000BE8000000207663677400000C08000000306E64696E00000C380000';
wwv_flow_api.g_varchar2_table(4) := '003E6368616400000C780000002C6D6D6F6400000CA40000002862545243000003DC0000080C67545243000003DC0000080C6161626700000BE8000000206161676700000BE800000020646573630000000000000008446973706C617900000000000000';
wwv_flow_api.g_varchar2_table(5) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006D6C756300000000000000210000000C68724852000000180000';
wwv_flow_api.g_varchar2_table(6) := '019C6B6F4B52000000180000019C6E624E4F000000180000019C69640000000000180000019C68754855000000180000019C6373435A000000180000019C6461444B000000180000019C756B5541000000180000019C61720000000000180000019C6974';
wwv_flow_api.g_varchar2_table(7) := '4954000000180000019C726F524F000000180000019C6E6C4E4C000000180000019C6865494C000000180000019C65734553000000180000019C66694649000000180000019C7A685457000000180000019C7669564E000000180000019C736B534B0000';
wwv_flow_api.g_varchar2_table(8) := '00180000019C7A68434E000000180000019C72755255000000180000019C66724652000000180000019C6D730000000000180000019C63614553000000180000019C74685448000000180000019C64654445000000180000019C656E5553000000180000';
wwv_flow_api.g_varchar2_table(9) := '019C70744252000000180000019C706C504C000000180000019C656C4752000000180000019C73765345000000180000019C74725452000000180000019C6A614A50000000180000019C70745054000000180000019C00440045004C004C002000550032';
wwv_flow_api.g_varchar2_table(10) := '0037003100330048004D7465787400000000436F70797269676874204170706C6520496E632E2C2032303135000058595A20000000000000F3D8000100000001160858595A20000000000000766200003C410000013A58595A200000000000005C540000';
wwv_flow_api.g_varchar2_table(11) := 'B9900000104458595A20000000000000242000000A300000C1AF63757276000000000000040000000005000A000F00140019001E00230028002D00320036003B00400045004A004F00540059005E00630068006D00720077007C00810086008B00900095';
wwv_flow_api.g_varchar2_table(12) := '009A009F00A300A800AD00B200B700BC00C100C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119011F0125012B01320138013E0145014C0152015901600167016E0175017C0183018B0192019A01A101A901B101B901C101C9';
wwv_flow_api.g_varchar2_table(13) := '01D101D901E101E901F201FA0203020C0214021D0226022F02380241024B0254025D02670271027A0284028E029802A202AC02B602C102CB02D502E002EB02F50300030B03160321032D03380343034F035A03660372037E038A039603A203AE03BA03C7';
wwv_flow_api.g_varchar2_table(14) := '03D303E003EC03F9040604130420042D043B0448045504630471047E048C049A04A804B604C404D304E104F004FE050D051C052B053A05490558056705770586059605A605B505C505D505E505F6060606160627063706480659066A067B068C069D06AF';
wwv_flow_api.g_varchar2_table(15) := '06C006D106E306F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A98';
wwv_flow_api.g_varchar2_table(16) := '0AAE0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A0F96';
wwv_flow_api.g_varchar2_table(17) := '0FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F116D118C11AA11C911E81207122612451264128412A312C312E31303132313431363138313A413C513E5140614271449146A148B14AD14CE14F01512153415561578159B15BD';
wwv_flow_api.g_varchar2_table(18) := '15E0160316261649166C168F16B216D616FA171D17411765178917AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E';
wwv_flow_api.g_varchar2_table(19) := '1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A121CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C24AB24DA250925382568259725C7';
wwv_flow_api.g_varchar2_table(20) := '25F726272657268726B726E827182749277A27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F912FC7';
wwv_flow_api.g_varchar2_table(21) := '2FFE3035306C30A430DB3112314A318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D83513354D358735C235FD3637367236AE36E937243760379C37D738143850388C38C839053942397F39BC39F93A363A743AB23AEF3B2D';
wwv_flow_api.g_varchar2_table(22) := '3B6B3BAA3BE83C273C653CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE24023406440A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A44CE45124555459A45DE4622466746AB46F04735477B47C04805';
wwv_flow_api.g_varchar2_table(23) := '484B489148D7491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E65231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C';
wwv_flow_api.g_varchar2_table(24) := '56A956F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B955BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA60FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7663D';
wwv_flow_api.g_varchar2_table(25) := '669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0713A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B76F8775677B3';
wwv_flow_api.g_varchar2_table(26) := '7811786E78CC792A798979E77A467AA57B047B637BC27C217C817CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD8230829282F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE8933899989FE8A648ACA';
wwv_flow_api.g_varchar2_table(27) := '8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C99634969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F1D9F8B';
wwv_flow_api.g_varchar2_table(28) := '9FFAA069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58AB601';
wwv_flow_api.g_varchar2_table(29) := 'B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36';
wwv_flow_api.g_varchar2_table(30) := 'CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832';
wwv_flow_api.g_varchar2_table(31) := 'E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFF7061726100000000000300000002';
wwv_flow_api.g_varchar2_table(32) := '66660000F2A700000D59000013D000000A0E7663677400000000000000010001000000000000000100000001000000000000000100000001000000000000000100006E64696E00000000000000360000A7400000560000004B800000A3C0000025800000';
wwv_flow_api.g_varchar2_table(33) := '0AC000005040000054400002333300023333000233330000000000000000736633320000000000010BB700000596FFFFF357000007290000FDD7FFFFFBB7FFFFFDA6000003DA0000C0F66D6D6F6400000000000010AC00004080414B434CCECC0A000000';
wwv_flow_api.g_varchar2_table(34) := '0000000000000000000000000000FFE100804578696600004D4D002A000000080005011200030000000100010000011A0005000000010000004A011B0005000000010000005201280003000000010002000087690004000000010000005A000000000000';
wwv_flow_api.g_varchar2_table(35) := '00480000000100000048000000010002A00200040000000100000017A0030004000000010000001600000000FFDB00430002020202020102020202020202030306040303030307050504060807080808070808090A0D0B09090C0A08080B0F0B0C0D0E0E';
wwv_flow_api.g_varchar2_table(36) := '0E0E090B10110F0E110D0E0E0EFFDB004301020202030303060404060E0908090E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EFFC000110800160017030122000211010311';
wwv_flow_api.g_varchar2_table(37) := '01FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25';
wwv_flow_api.g_varchar2_table(38) := '262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3';
wwv_flow_api.g_varchar2_table(39) := 'E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C10923';
wwv_flow_api.g_varchar2_table(40) := '3352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4';
wwv_flow_api.g_varchar2_table(41) := 'C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDF57B9B78EE628649E24965CF968CE033E3AE0753F8561F8AFC57E1FF0004F80754F14789F53B6D2343D3E132DD5D4E70AA3B003A';
wwv_flow_api.g_varchar2_table(42) := 'B313C051C924015F943F1DFC777BE13FF82C8D878A75EB9BEBBD33C29A8E9F2DBDBA82E60B27B7C4AB127AB7992B1039620024E0635353D4FE217EDB7FB4D2E87A4FDBBC31F09342B9123BB2E56D53B4F28E564BD917FD5C7C8894EE3FED7C84F8A3DA7B';
wwv_flow_api.g_varchar2_table(43) := '4A5469DEAA938C577B7DA7D96FF76FBDBE36B7174554AB429D3BD552E58C7F9BCDF649DFEEFBBE9BF807F1D3E227C72FDA87C55AA5AE88344F833A5D83DB5B24D00F3E4BC2F1B466493AF9863DECD1AF118640492782BEA8F05782FC37F0FBE1A695E12F';
wwv_flow_api.g_varchar2_table(44) := '09E9B1697A1E9F16C8214E598F567763CBBB125998F2C49268AFA2CBE856A34146B4F9A5D5F9BEDE4B647D0E5786C451A096227CF37AB7D2EFA2F25D3EF3E55F8EFF00B21C3F187E3E5A78E74DF18B786A7B8B782D75B865B1171E64516EDB240770D92E';
wwv_flow_api.g_varchar2_table(45) := 'D62A77EE5E14E3820FD41E00F00F85BE1A7C30D3BC25E10D3534ED22D1491CEE92790F2F2CAE797918F258F268A2B2C265D86A35EA55A70B4A5BBFC7E5F2270D95E168E26A57842D396EFF00ADAFD6DBF53B4A28A2BD23D33FFFD9';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(27420965609896374196)
,p_file_name=>'checkgreen.jpg'
,p_mime_type=>'image/jpeg'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/checkred_jpg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := 'FFD8FFE000104A46494600010101004800480000FFE20CDC4943435F50524F46494C4500010100000CCC6170706C021000006D6E74725247422058595A2007DF0004000A00090013000E616373704150504C000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(2) := '0000000000000000F6D6000100000000D32D6170706C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000116465736300000150000000626473636D000001B4000001B4637072740000';
wwv_flow_api.g_varchar2_table(3) := '036800000023777470740000038C000000147258595A000003A0000000146758595A000003B4000000146258595A000003C80000001472545243000003DC0000080C6161726700000BE8000000207663677400000C08000000306E64696E00000C380000';
wwv_flow_api.g_varchar2_table(4) := '003E6368616400000C780000002C6D6D6F6400000CA40000002862545243000003DC0000080C67545243000003DC0000080C6161626700000BE8000000206161676700000BE800000020646573630000000000000008446973706C617900000000000000';
wwv_flow_api.g_varchar2_table(5) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006D6C756300000000000000210000000C68724852000000180000';
wwv_flow_api.g_varchar2_table(6) := '019C6B6F4B52000000180000019C6E624E4F000000180000019C69640000000000180000019C68754855000000180000019C6373435A000000180000019C6461444B000000180000019C756B5541000000180000019C61720000000000180000019C6974';
wwv_flow_api.g_varchar2_table(7) := '4954000000180000019C726F524F000000180000019C6E6C4E4C000000180000019C6865494C000000180000019C65734553000000180000019C66694649000000180000019C7A685457000000180000019C7669564E000000180000019C736B534B0000';
wwv_flow_api.g_varchar2_table(8) := '00180000019C7A68434E000000180000019C72755255000000180000019C66724652000000180000019C6D730000000000180000019C63614553000000180000019C74685448000000180000019C64654445000000180000019C656E5553000000180000';
wwv_flow_api.g_varchar2_table(9) := '019C70744252000000180000019C706C504C000000180000019C656C4752000000180000019C73765345000000180000019C74725452000000180000019C6A614A50000000180000019C70745054000000180000019C00440045004C004C002000550032';
wwv_flow_api.g_varchar2_table(10) := '0037003100330048004D7465787400000000436F70797269676874204170706C6520496E632E2C2032303135000058595A20000000000000F3D8000100000001160858595A20000000000000766200003C410000013A58595A200000000000005C540000';
wwv_flow_api.g_varchar2_table(11) := 'B9900000104458595A20000000000000242000000A300000C1AF63757276000000000000040000000005000A000F00140019001E00230028002D00320036003B00400045004A004F00540059005E00630068006D00720077007C00810086008B00900095';
wwv_flow_api.g_varchar2_table(12) := '009A009F00A300A800AD00B200B700BC00C100C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119011F0125012B01320138013E0145014C0152015901600167016E0175017C0183018B0192019A01A101A901B101B901C101C9';
wwv_flow_api.g_varchar2_table(13) := '01D101D901E101E901F201FA0203020C0214021D0226022F02380241024B0254025D02670271027A0284028E029802A202AC02B602C102CB02D502E002EB02F50300030B03160321032D03380343034F035A03660372037E038A039603A203AE03BA03C7';
wwv_flow_api.g_varchar2_table(14) := '03D303E003EC03F9040604130420042D043B0448045504630471047E048C049A04A804B604C404D304E104F004FE050D051C052B053A05490558056705770586059605A605B505C505D505E505F6060606160627063706480659066A067B068C069D06AF';
wwv_flow_api.g_varchar2_table(15) := '06C006D106E306F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A98';
wwv_flow_api.g_varchar2_table(16) := '0AAE0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A0F96';
wwv_flow_api.g_varchar2_table(17) := '0FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F116D118C11AA11C911E81207122612451264128412A312C312E31303132313431363138313A413C513E5140614271449146A148B14AD14CE14F01512153415561578159B15BD';
wwv_flow_api.g_varchar2_table(18) := '15E0160316261649166C168F16B216D616FA171D17411765178917AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E';
wwv_flow_api.g_varchar2_table(19) := '1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A121CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C24AB24DA250925382568259725C7';
wwv_flow_api.g_varchar2_table(20) := '25F726272657268726B726E827182749277A27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F912FC7';
wwv_flow_api.g_varchar2_table(21) := '2FFE3035306C30A430DB3112314A318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D83513354D358735C235FD3637367236AE36E937243760379C37D738143850388C38C839053942397F39BC39F93A363A743AB23AEF3B2D';
wwv_flow_api.g_varchar2_table(22) := '3B6B3BAA3BE83C273C653CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE24023406440A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A44CE45124555459A45DE4622466746AB46F04735477B47C04805';
wwv_flow_api.g_varchar2_table(23) := '484B489148D7491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E65231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C';
wwv_flow_api.g_varchar2_table(24) := '56A956F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B955BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA60FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7663D';
wwv_flow_api.g_varchar2_table(25) := '669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0713A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B76F8775677B3';
wwv_flow_api.g_varchar2_table(26) := '7811786E78CC792A798979E77A467AA57B047B637BC27C217C817CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD8230829282F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE8933899989FE8A648ACA';
wwv_flow_api.g_varchar2_table(27) := '8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C99634969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F1D9F8B';
wwv_flow_api.g_varchar2_table(28) := '9FFAA069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58AB601';
wwv_flow_api.g_varchar2_table(29) := 'B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36';
wwv_flow_api.g_varchar2_table(30) := 'CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832';
wwv_flow_api.g_varchar2_table(31) := 'E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFF7061726100000000000300000002';
wwv_flow_api.g_varchar2_table(32) := '66660000F2A700000D59000013D000000A0E7663677400000000000000010001000000000000000100000001000000000000000100000001000000000000000100006E64696E00000000000000360000A7400000560000004B800000A3C0000025800000';
wwv_flow_api.g_varchar2_table(33) := '0AC000005040000054400002333300023333000233330000000000000000736633320000000000010BB700000596FFFFF357000007290000FDD7FFFFFBB7FFFFFDA6000003DA0000C0F66D6D6F6400000000000010AC00004080414B434CCECC0A000000';
wwv_flow_api.g_varchar2_table(34) := '0000000000000000000000000000FFE100804578696600004D4D002A000000080005011200030000000100010000011A0005000000010000004A011B0005000000010000005201280003000000010002000087690004000000010000005A000000000000';
wwv_flow_api.g_varchar2_table(35) := '00480000000100000048000000010002A00200040000000100000016A0030004000000010000001600000000FFDB00430002020202020102020202020202030306040303030307050504060807080808070808090A0D0B09090C0A08080B0F0B0C0D0E0E';
wwv_flow_api.g_varchar2_table(36) := '0E0E090B10110F0E110D0E0E0EFFDB004301020202030303060404060E0908090E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EFFC000110800160016030122000211010311';
wwv_flow_api.g_varchar2_table(37) := '01FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25';
wwv_flow_api.g_varchar2_table(38) := '262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3';
wwv_flow_api.g_varchar2_table(39) := 'E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C10923';
wwv_flow_api.g_varchar2_table(40) := '3352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4';
wwv_flow_api.g_varchar2_table(41) := 'C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FBDFF68BFDAC7C43E07F8D91F81FE1F58450DE6897314BAF5DEAB68E12EF2A1C5B440807CB653F34E3233C264AB62A7C49FDB6F4C9';
wwv_flow_api.g_varchar2_table(42) := 'FE02693FF0AD6DE7B3F1CEAB01FB6FDBA00EBA091C3641F966909FB98CA91F31FEE9E7FF006E1F167C33D4B50D27C33696516A7F1374E914CFA95AB8034DB73F335BCC47FAC67182233F738738E01FCF30CA5CAEE0E508DCA1F0477C77C6477C7BE0D7C9';
wwv_flow_api.g_varchar2_table(43) := '63330C453AB3829DD3FC3FAEA7F40F0BF08E558ECB70B88AB8671947577FB7E6FBC5BD52D3B6AB57FB65FB39FC6FFF0085D5F0A6EAE2FB4D974EF13E8EE96DAC08E26FB2CAECB959227E9F30E4C64EE4279C82A4953FECDBE2CF867E23FD9A348B3F8696';
wwv_flow_api.g_varchar2_table(44) := '29A1D9699188750D16470D756770465CCC7AC8CE72DE6F21F39CD15F4F879374A2DBBF9A3F14CFE8D3A798D68D3A4E9A4DDA2F75FD7CFD5EE717F1BFF651F0EFC58F1FE9BE29D1F524F07EB925C22EBD3C36C1D6FEDC60170BC0172000164390470C1B03';
wwv_flow_api.g_varchar2_table(45) := '163E26FECA1E01F177C00D23C2BE12B3B2F086BBA1DBB47A0EABE499705B975B9C10D323B7CCD93BB77CC083451584B03425CF78EFB9DB4389B34A6B0F18D769537EEF974F9AB6967756D363D53E0FFC1EF0BFC1CF85F1E83A0C66E7509B126ABAACAA04';
wwv_flow_api.g_varchar2_table(46) := 'F7F36305988E8A3A2A0E14703BD14515D7084611518AB247898AC555C4D6955AB272949DDB67FFD9';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(27420965840042374197)
,p_file_name=>'checkred.jpg'
,p_mime_type=>'image/jpeg'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/employees_jpg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := 'FFD8FFE000104A46494600010101004800480000FFE207CC4943435F50524F46494C45000101000007BC6170706C022000006D6E74724752415958595A2007D00002000E000C00000000616373704150504C000000006E6F6E6500000000000000000000';
wwv_flow_api.g_varchar2_table(2) := '0000000000000000F6D6000100000000D32D6170706C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000564657363000000C00000006F6473636D000001300000062E637072740000';
wwv_flow_api.g_varchar2_table(3) := '0760000000387774707400000798000000146B545243000007AC0000000E64657363000000000000001547656E6572696320477261792050726F66696C6500000000000000000000001547656E6572696320477261792050726F66696C65000000000000';
wwv_flow_api.g_varchar2_table(4) := '0000000000000000000000000000000000000000000000000000000000000000000000000000000000006D6C7563000000000000001E0000000C736B534B0000002A000001786461444B00000034000001A2636145530000002C000001D6707442520000';
wwv_flow_api.g_varchar2_table(5) := '002A00000202756B55410000002C0000022C667246550000002A00000258687548550000002E000002827A68545700000010000002B06E624E4F0000002C000002C06373435A00000024000002EC6865494C0000002000000310697449540000002E0000';
wwv_flow_api.g_varchar2_table(6) := '0330726F524F000000240000035E646544450000003A000003826B6F4B5200000018000003BC737653450000002E000003D47A68434E00000010000004026A614A500000001600000412656C475200000024000004287074504F000000380000044C6E6C';
wwv_flow_api.g_varchar2_table(7) := '4E4C0000002A000004846573455300000028000004AE7468544800000024000004D67472545200000022000004FA666946490000002C0000051C687248520000003A00000548706C504C00000036000005827275525500000026000005B8617245470000';
wwv_flow_api.g_varchar2_table(8) := '0028000005DE656E55530000002800000606005601610065006F006200650063006E00FD002000730069007600FD002000700072006F00660069006C00470065006E006500720065006C00200067007200E50074006F006E0065006200650073006B0072';
wwv_flow_api.g_varchar2_table(9) := '006900760065006C0073006500500065007200660069006C00200064006500200067007200690073002000670065006E00E800720069006300500065007200660069006C002000430069006E007A0061002000470065006E00E9007200690063006F0417';
wwv_flow_api.g_varchar2_table(10) := '043004330430043B044C043D043804390020043F0440043E044404300439043B0020004700720061007900500072006F00660069006C0020006700E9006E00E9007200690071007500650020006700720069007300C1006C00740061006C00E1006E006F';
wwv_flow_api.g_varchar2_table(11) := '007300200073007A00FC0072006B0065002000700072006F00660069006C901A75287070968E82725F6963CF8FF000470065006E0065007200690073006B00200067007200E50074006F006E006500700072006F00660069006C004F006200650063006E';
wwv_flow_api.g_varchar2_table(12) := '00FD002001610065006400FD002000700072006F00660069006C05E405E805D505E405D905DC00200047007200610079002005DB05DC05DC05D900500072006F00660069006C006F002000670072006900670069006F002000670065006E006500720069';
wwv_flow_api.g_varchar2_table(13) := '0063006F00500072006F00660069006C0020006700720069002000670065006E00650072006900630041006C006C00670065006D00650069006E006500730020004700720061007500730074007500660065006E002D00500072006F00660069006CC77C';
wwv_flow_api.g_varchar2_table(14) := 'BC18002000470072006100790020D504B85CD30CC77C00470065006E0065007200690073006B00200067007200E50073006B0061006C006500700072006F00660069006C666E901A70705EA663CF8FF065874EF64E00822C30B030EC30A430D730ED30D5';
wwv_flow_api.g_varchar2_table(15) := '30A130A430EB039303B503BD03B903BA03CC002003C003C103BF03C603AF03BB002003B303BA03C103B900500065007200660069006C002000670065006E00E9007200690063006F002000640065002000630069006E007A0065006E0074006F00730041';
wwv_flow_api.g_varchar2_table(16) := '006C00670065006D00650065006E0020006700720069006A007300700072006F006600690065006C00500065007200660069006C00200067007200690073002000670065006E00E9007200690063006F0E420E1B0E230E440E1F0E250E4C0E2A0E350E40';
wwv_flow_api.g_varchar2_table(17) := '0E170E320E170E310E480E270E440E1B00470065006E0065006C0020004700720069002000500072006F00660069006C00690059006C00650069006E0065006E0020006800610072006D0061006100700072006F006600690069006C006900470065006E';
wwv_flow_api.g_varchar2_table(18) := '006500720069010D006B0069002000700072006F00660069006C00200073006900760069006800200074006F006E006F007600610055006E006900770065007200730061006C006E0079002000700072006F00660069006C00200073007A00610072006F';
wwv_flow_api.g_varchar2_table(19) := '015B00630069041E04310449043804390020044104350440044B04390020043F0440043E04440438043B044C0645064406410020062A06390631064A06410020004700720061007900200627064406390627064500470065006E00650072006900630020';
wwv_flow_api.g_varchar2_table(20) := '0047007200610079002000500072006F00660069006C006500007465787400000000436F707972696768742032303037204170706C6520496E632E2C20616C6C207269676874732072657365727665642E0058595A20000000000000F351000100000001';
wwv_flow_api.g_varchar2_table(21) := '16CC63757276000000000000000101CD0000FFE100804578696600004D4D002A000000080005011200030000000100010000011A0005000000010000004A011B0005000000010000005201280003000000010002000087690004000000010000005A0000';
wwv_flow_api.g_varchar2_table(22) := '0000000000480000000100000048000000010002A002000400000001000000D7A003000400000001000000F200000000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C283729';
wwv_flow_api.g_varchar2_table(23) := '2C30313434341F27393D38323C2E333432FFC0000B0800F200D701011100FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107';
wwv_flow_api.g_varchar2_table(24) := '227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2';
wwv_flow_api.g_varchar2_table(25) := 'B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFDA0008010100003F00E4F50BB79848BF63921697F740B329504C8B8271EF5A925EDCDB4D3A3E9E4B44BE6328997EEAE471F5DBC67D';
wwv_flow_api.g_varchar2_table(26) := '474A86F7519E532C9269B30F2D376D1229E013D3DFE5AB8FADCB71A6C527F664A8A61F350F9CB9C673D3D79E951CB737566D6A8DA6BB19C18A3659970082064FA74A6CD793C50DDDD4BA7BA2DAC644AE2543C67770335369DA85C5A2ADB26973B131B4B9';
wwv_flow_api.g_varchar2_table(27) := '1347823183DFAD5789AE2DEE16F469F3BAA42DFBBF363C10D8C77EA31FAD4B6B717B3473DBC3A5C9BB7CB33B34E9D4924F7ED9C575D628D77F0B7C5524911899A2B9DC848247EE546323F3AC7D56CF3A4D9E075B9B73C7D52BA5F89B1797E04D3A340A64';
wwv_flow_api.g_varchar2_table(28) := '37B06C0C0E3218F27E80578EC2978B248A0DBA9259DCEC6E4EE2A7BFD4D77BA46A434DF03EAF0CF1B5CDCCC5218A2B71F36D3101BC827A0E7356C84D46E347B8B556682656DA71CE42E36E3B1183C572BE33B094F89E70D23A612024607CA7627623D6B3';
wwv_flow_api.g_varchar2_table(29) := '56C3CAB159A49E4560240E485C950C463A71C5763ADE95736F7709B881E2F36689A32DFC4A6541918FAD713AF6893477314971198E3BCB7325BB87192142A93C74C1F5AC5B8B30D0347192BBC18FEF13BB2D81FC8D3B418DA2D4265037B24D0C430DB79C';
wwv_flow_api.g_varchar2_table(30) := 'B0CF3DABAF49AEAEADAEAE05AC4C21965B575F3F92CA76B638E9F360735144B2E8313CA2D7CD624336C9417395D806080338E69935BB25A2692616F2CC7E72B875E3CB6DDC9F5254FE1E953B5C4AC2DF5528F1986179563DEB9C1F98E79EBF27AE3A555B';
wwv_flow_api.g_varchar2_table(31) := '40F3DCDC4896D30791848CCEF1E32176F18278C7B75AA9FDA114F34C1609164499E366675C6E5E09F5C715B1ADC2B0E9F2B460F24480E3A1520915A77FB46A93118FF5207B9F6FD4546B128902CA373188EECFD4FF008D48F6C22B1B48C0E7CB11E3DC63';
wwv_flow_api.g_varchar2_table(32) := 'FC29F78048B6C471E548C54FFC0BFC6ABEA255FC2FE2107EF9824C0C7A0E2ADAC623901C6C78ECCF3E80F6FD29D3811DBE07071B40FC054B62163BDBA8C6015494B63AF63FD6BA8D062497C0FE24B7939849B956EDC794BFE1599A82A8D1B4FDD8C992DC';
wwv_flow_api.g_varchar2_table(33) := '9FAE52A4F8B45CE99E1EDB2955FB531DB8E0FEEDCE4D79806DF34A07248C0C1EA4B6781F89AEB50BDADA824124E5446460FD3DAB43C171DE69F3BDC5F3C6FBEE84905B862C6361F79B77F0E548047A8AC7F1B4F2DD78D750F2ADDDC910E76E3AEC8CF7FC';
wwv_flow_api.g_varchar2_table(34) := '2B9B92F0CB64206866C22C8246DBD46E3FD6BD1751D4A5D46F63177B0F92C88A117180B28233F90AF3AF14DF5F4D716F0F98ACB6B03430A94FBA84A1238F720E4D733A9B4FFD9CE5DD08C46D955209DC5B8CE7DAA7F0D6F97538900CEEBA83F4E7F957A1';
wwv_flow_api.g_varchar2_table(35) := '697B0E9F7EF8508FAA5C3631FF004D147F3154BC58C469F33200BE4CAAEC71C9024C81F8E0D4DA81485A791D07EEEC2695B1E8109FEA692FA01FD85711AE3FE3D65505BA64C7C7F3A874E86266631B0C448227006002E51C7E9589A7F952CDA9971FEAB5';
wwv_flow_api.g_varchar2_table(36) := '09F0548E85BFFAF56B578AE6013C525DC92DBADBCAFB59578652B8C607A13F9569EB76D7365A35CDE457F3978212E88CA9B783D7819E959F6CDAA3C7A74EFA8C81AE6E0C521540309E56FC8CFD6BA1B7D26E64BBB3866D4EE995E4D8C4AAF1903DAB35E4';
wwv_flow_api.g_varchar2_table(37) := 'D552E1D1DE3F27ECE2505A3CB162CD91C1FF00647E753BC1A9CFA6DC325D40A24BAFB34A1EDCE1A3609E8D907E6FD3B54772757B48DA4FB55BC8442770FB391C7391F7BDBF5A74336A3394492E626246E388C8230471D7A7F853E0B8BE5B99E626DCBB5B';
wwv_flow_api.g_varchar2_table(38) := 'CFB9B0DCED2BC63B67D7B63BD75D61732C3F0BBC5D248144AAB7590B9C67C953DF9EF593E20BDD9636099E97300E3EAB5B9F14B5086DFC01A64F2C093133C642B1C7383FE35E229AE5AF2834B8D54E3794930C30DBB20E3AFD6BB3B3D42CADB44D3755BA';
wwv_flow_api.g_varchar2_table(39) := '914EF506359E624C8D9E99F5C704F6AE834AD72C758D57CEB4BD82E25484095614D8A8DB8E76AFF73D0F71CD63EA923378BAFDB20E648CF07D3CB53FA2E6B1898E693CB4217CC3C1F5FDE7F5E6BA47B866D5760049624E1464F01CFF004AE535DDD25D46';
wwv_flow_api.g_varchar2_table(40) := '638CB3B79838EDF77FC2B98D4EE125D39950B6432A30D8402CB9E87F1AD0D042D9DF5B5C6C77DF707688D412B84C679238E4D7529AA5BD8D8793B6E36BC92CA1C44A7733C9BB006FEA0F150EAB6B26AFE7069AE2359A354C2420E30FBB3CB63DAA3BABD8';
wwv_flow_api.g_varchar2_table(41) := '0DEB2887500F776BF618818E32BC83F370FD79EF5622BE4D474C9ED61B7BA2187D9FCC74006E030475E7A76E2A7D3365B4571767CE9629E58E4FF50415DA8AA063BE71D7DEB374A4D3ADA59665BA9268EEEE24B8CFD8A6C7718E9C60D5CD5EE6C2E349D5';
wwv_flow_api.g_varchar2_table(42) := '1A2B94695A197CBC7B8E07D4D5CF11DCC173A15D5BC17113BB5AB2140E339EBD3D6974F7B674B02B220D85999339DA45B85E7D39047D6B6ACA453A8599DEA13CE0739F6ACDB8677D424091E13C99392718264247F5A9A599A2D01D902BB3DE26DF9B8EA8';
wwv_flow_api.g_varchar2_table(43) := 'B9FD33F853357BBB6B2B349EF5822BABC78EA49DCC381DFB565E89ACDA6AD7664B6F30B5BA7EF59D71C31E3EBCFF002ABF05D5BDC4922EE50F2452E703D40CE3F1ADE9E6D9F0FBC66878DCD75FFA252B9BF134C459DBEDCE7ED109FD45737E32F14EA3E2';
wwv_flow_api.g_varchar2_table(44) := '7D4A0D121641676584850B637B04E589FCF8AE6E4D2351B3B337773653456C651179AE9852DE809EBF51C5427263442ECCB1821013C2E4E4E3D39E6882E66B2BA4B9B695E3B984EE89D0E195BD8FF9F7AED7598C4FAC477C54B477FF0067BA77CB05C488';
wwv_flow_api.g_varchar2_table(45) := 'D9C73EA01C76C8A4B9B45B592C5230EAE67849218F203A6ECD6BCB205D795F2E16378A462BD9433139F6C0FC6B1AFAFE07D76EA496E1116476642E42F0CFD7F2AE5755787EC3B6274626E198ED39E0EEC7E98AD0F0A4D249A8C5033657CEDA091F741009';
wwv_flow_api.g_varchar2_table(46) := 'FD457AED9F866D3ECEAEC8BB88CF23A1AC8D693C8468E28C9F56208CE3DEB89B5BEF3BC53A5C2583FF00A410447C000F38FAE40ADFD2ECE2B7D22075673F6895A77DC470CDC903DB156F0AF6939040DB3231CFF754AB63F215CF5BC66C3498A63FC01DB0';
wwv_flow_api.g_varchar2_table(47) := '3FDB707F2CD6D6AB6A0E95ABFCAB91692918500E7CB5C1FF00C76B5A7D3ED2E0452BC2858E0FDD1FDD19FD6A85FE9F683538985BC7BA7551C28032A81BFA1FCE99736DA5DA4B2CB731DBC50EE640CC9CF299E00AE565BC87016DEC6250323CC7C963F31C';
wwv_flow_api.g_varchar2_table(48) := '1EBC718A8EE758BF3E5F21514F31C4EF1A9E9D707A71FAD4B73A36A3AB59DB6AD67209930EAF04937DC70704206CE72003D6B12C2EE4D37C4F6F71691998EE5DD091CC8AC76B2107D467E871E95D6DDE94209EE0417726C8AE7CB46864C8DBB88233DF81';
wwv_flow_api.g_varchar2_table(49) := '8CFB56CD9DEBCFF0D3C446691DE56374199CE4B61147F4A9FC3A64BEF10DE892D63BA8E39522DB260009E486DA72318DC49E6B88F066A2965AC412BEC7764708CE80E4E4138CF7C66BD57C636035FF0007DEC510324861F3A01DF72FCCB8FE55E1064691';
wwv_flow_api.g_varchar2_table(50) := '43F5DD86CE31DA9914534BE6CCB1B345028691C745C90013F5240AEF52692E7C1BE1EBC8DA379627974D7DCDC2EC0CC9C7FBAA7F4A1EEAEBCF432449C4A89953D06E00F06ACCB213A95E67FE7920FE7FE3589342B2DD3B32A922360323BE7FFAD58BE22F';
wwv_flow_api.g_varchar2_table(51) := '2502C31A229F337703B60823F954BE129366AC1C233B072CAAA40C9DB8EFDB9AF67B7BCB86B4814C237C88AC70FF00773EBFFD6AA3713466611BCA0217019DC640FC0FF9E6B88BFB05B6D62D75881A3B6B7378CD18911BE760A700000E38C9AB96AE96B6';
wwv_flow_api.g_varchar2_table(52) := 'C2D65BE0F2B3978D4DBCA00E00C03B39EFE98E953C7A8E9D7104F0DBCF9498B6C665619C607A76005537B55B9B27B31796BE7C800082E06EE0927031E83F43E94FD4EF353874BBF12D844516068E4904DC81B324818F4AD14D4EFB2206D3FF00788AA994';
wwv_flow_api.g_varchar2_table(53) := '906D3940D9193D3047E355753D664885B4D269F244F19610891D48762BB49E3B015CC492CD7D7067B994CB3371EC3E83D29EA8A179ED51DD5B6F87783B4F6E6AF693E219BC350F9374A26825FDFC12A7556CE1860FBE3DB9A8A7D70DE4521B046B092456';
wwv_flow_api.g_varchar2_table(54) := 'F3252815F93D10AF73C924F4CF1EB5D15ADB410C691CB2C1144AB18545751C8CFE5DEAADF5C470F8435948C62277940C0C758D3FAD63F8B2E97669F0A0DACCEF2395E0B7CB8E4F7E83AD72DA63B1BE8CA677C51BC89CF4655C8FC2BD36E7C71A69B3B586';
wwv_flow_api.g_varchar2_table(55) := '0BC7898A8135BB2B46138EB9C60F391D6B90D61FC3AF0DD7D8E4D974587969106087E6F9B81C0E2B0E20EE24820123EFC6E8D32738E9903D326B7B48BDB7B6D34DACE764CD791B326EC001437CEC0F01B276FA91D7A56D1BA8EE1A3113AB96987439CF22';
wwv_flow_api.g_varchar2_table(56) := 'A495FF00D2EF1BFD94FE42B356D05E5D4AC64914060B846C647CC6B9DD7D1A33066579037CDB9B1D702AEF8357FE2711B63392CA3EA40FE80D7A5EA17F06876F6A6EA664B8BB2047020CB91EBEC0773D29AD2D8C7609AF6AD76B069D27CD04783E64CDEC';
wwv_flow_api.g_varchar2_table(57) := 'BD7DF1D7E95E71E27D7E6F11DD2B18D6D6CEDF22DE107EE0F563FDEE3A8E9DBD6B7343D4E6BC6B48AFE2962B96FDD2B34653CE5DAE4B0C81ED9AB3A7B009A744EEC36696D20E78E18AB67D0FCC2B66D1DADF5B8F127CA54336EE06E3E6647E829BAA287B';
wwv_flow_api.g_varchar2_table(58) := '6BDDFF0070A32F4CE3F766A6207D85240A4B010127DBCB5FF115C9F8CAE20875C84F9C37345828A798F04E3F3073F85662B100153C1E8714C3332904BE73C74EBF4F7A7F9A4DB3018E39E9D3D6A78A5867B7101FBD192A377390DF31C7FDF39FC6A27D3A';
wwv_flow_api.g_varchar2_table(59) := '3243B2AE546D1C7DE05D327F0E6BB0B5D2EC6E6D6C9CDA40D80E48F2C0E72A3D3D8D60EB8CD0E87AA5B920FEF1B6E7B64271581E209CCBA95AF3F7623FD6B2B4B0E6FD42025B638C7A82A47F5A6DDC8ED7D33124907033D86298279444D0891846C41651';
wwv_flow_api.g_varchar2_table(60) := '8C122BBEF0E5C24BA65948B1946803444A280A438CE4E39CF07AD64C5A7DB4B777AF27CFE646AFCF62CED9FF00C76B5A1445F3E5D8A246B8DC4850392F8CFE40544F3FEF2FBD8A2FE82A9C575716F23BC4B16D66DBF39208254F3FAD739A95C493436A92';
wwv_flow_api.g_varchar2_table(61) := '281B7760839C8076FF004AE9BE1C592DE6B4BBF78480B4CEF81B554707773EFC75EF55B56D6D357D6352BFB989AE1A4220B78CB15558431EE3D474C7F789F4AA7AB6AD79AD5F0B9BC937145D9120E1214C602A8EC38FC6BB5F87BE1086EEDD35DD450489';
wwv_flow_api.g_varchar2_table(62) := 'BBFD0E16E4120FFAC61F5E00FA9F4C76FAA42B711347282C33B9587DE461FC43F0CD79F4F68F6B632E9F2DD5B35D456B716CAE9326E1B9B747919C838DB9E3D2B42E6C5FC4090DB40EF1C6EE4CB32F55001231EB938FC334BAA68DB2DAEDAD2495582394';
wwv_flow_api.g_varchar2_table(63) := '532160408C91C1EF514D6B35BF8722D463BDB86FF430CAB2302BBB602A70393F9F6AE3262F3C8659434CEED96279249EF4939954AEDE72420DDD073FA0ADFF0009785E7F13DC5C04B882D52290C6C5F2ECC570485C63B1041EF5B7AC7852C4417769A6A5';
wwv_flow_api.g_varchar2_table(64) := 'DCBA9DBA968E52E08B90B8F3176766C676E3AE2B0B43D2B509A5BAB6F25D2DA7809479D3CB5128198C9247CBD483F5A82ECDEC33BDB4D613432C0C524575E41C8F4EBC91EC722B7ED35446D36D5FECF382BBD18089B04838E0E3AE41CD60788E5492DF51';
wwv_flow_api.g_varchar2_table(65) := '910131C937CA7FE0295877B653CD7115C90044CDE506F739AA7A632DBEB615390032AE7E99A86ED0BEAB711C6B963295402BA0FF008577E2711249269BF230DDF2C80B63DFD2B5749D2A7D1E6BAB6662629E357899C1566DAF823040E858F3DEAA6956C6';
wwv_flow_api.g_varchar2_table(66) := '6705E52A1D17380327E66EBED8031F5A7A89C451DC3CA18B5D796C02E0150A187E3926A177FDE5DE7BC8A3F4154A5B9516A2265901126FDE1720F181591A88DAF0C4E184A9BB78231D5B22BD0748B493C17E01BBD4675F2B55D4CF950C720C18D3DC7D32';
wwv_flow_api.g_varchar2_table(67) := '7F115C1A2941B76FCA0055E7B538C4D2623527748C1148F56207F515F46DBDBC56D6D15B431AC51448A891A8C05006302B3F505CDB4873CE0918EB91E95C241790CFE29B958C28611C819B03A858D7F9B52F88A1B38229EE6E224640888B88C139DDFF00';
wwv_flow_api.g_varchar2_table(68) := 'D73565B5586E21DF89D6301B2CD1119E194FEA71556C750B193C2367652CF1EEFB1A472293F74ECC7F8571D064C6848C3746C7AF7A5B966111652095E706B43C29A86AD6315D1D36F56D99660E59A1126494393EDD2ADCF79AB6A51F9970F041087DECD6';
wwv_flow_api.g_varchar2_table(69) := 'E5C4921CF3F3646DCFB7AD6BE9F6D2E9515C1F31A5B5464263762EC37229DCB9E71CF23F2ACCF13EA3757F702CE0921B736E9E4C971B4F992F42013DB6F033D6B938AD7535B811DBC97A6E198F97E5C8C377E46B427B4D660B5BA8B5AB7BB8D6485A58E5';
wwv_flow_api.g_varchar2_table(70) := '9D07CCCB8C2923D40C73ED4B773326956AA4E71739FCB7562E8B10B8D4B73311B6367C8EB918FF001AEAFC37A0585EDC5DEA5757AEB3D9DE0CC2107CCB80C589EDC9C0FA57AB1D592E9D2D628CB2942C1F078C0CFA75AE0750D656FF00508D48914C56EF';
wwv_flow_api.g_varchar2_table(71) := '245BC7211E41C7E6878AC4B65BA1628CB6EECAF122A98C8C8DA31EBF8D356E166B48622DB089CC8370203613181C75E09FC2A987E6E4FAC83F98A8C4D11B6742532182AAF43DBFCFE15D3785F429B50F1A5BEADF6746B2B51BA4673C3363000F53C66AF7';
wwv_flow_api.g_varchar2_table(72) := 'C53BE8EF6FACAD6170648232EE0F054B118FD0579EDBEC2C3E649154F214E41F6E2A4370DF6F8AE24ED709236140030E09E076007E95F45330625C74639158FADBB436372E87E6893CC0338E7A753EF8AF30F0CD8DF5BEAB70678F25E27266055B7333AB';
wwv_flow_api.g_varchar2_table(73) := '11F2927B7E86B735859244991A17D8D8C178D803820F071EFF00A56BF9400748C60333328FF6720FF4354745B181BC2F66AD18264B20AF91F7B22B9CF14DA4569E2099615DAB2C71CDB7B6E2B838FF00BE6B39A3B782091AF137384CA425CA96E3827155';
wwv_flow_api.g_varchar2_table(74) := '665F234EB7BDB7866FDE637AC2EC15863BE09C11CFE156ACFF00D3B4CB86B6BD9731212C1BEE824F070474C7F235D1FDA6F86876372D7918FB400266962C82506140E7D40151E85A2B6B1E21BB5BAF31A183CC9A76DB9DE49DD85ED9C9FD2BD174CF0CDA';
wwv_flow_api.g_varchar2_table(75) := '698449E5A3000329CF20D715F10B56FB669374238251009444262DC170412A548ED8AE0B516C58DB8C7FCB46FF00D9AABF85F4DBEBDD4D85ADA4F3E2260FE5AF0B903A93803F135D5596833E917D3DCDC91E7DD87FDDAB6447820804F7279F615A926ACF';
wwv_flow_api.g_varchar2_table(76) := '159F996E595A2EB96C153EE3BD611D175AB3D52E2FEE6D8C90C90758DB780A00201039073D78EFD6AD586A51C9A62E1E30EA701146DC01818C76E2B3C14FEC6B6723E7174CA323A615BFA1ACD3200252A33FBE391DAB67C3BA04BADC918F2F106E6DF2B0';
wwv_flow_api.g_varchar2_table(77) := 'EDC74AF4F67B0D034B8EDE231C30C483800015C6785F438FC5BAADDEB7A84DBED22BB24C0832F21E182B7A2631EE7A74EBE8775A4E877F9375A458CD9FEFDB21ACF93C1DE0F7077E83663DD632BFC88AD8F320550AB200A000011D874AE67C6BA8DA5BF8';
wwv_flow_api.g_varchar2_table(78) := '7B50558D6E2E1ED9E2DABCE011DC5715A7E9B6B069F35C3C098408701071B48FFEB52F8DC5AE9F6F1B08809F12F96233B0B62545EA3D07F5AD685B59161A8DDA4F0CED046D2470B43832104E4641EB81F9D56D2AEF533A3699E5C56CCB2DA868C972B81C';
wwv_flow_api.g_varchar2_table(79) := '020F1C9E73543C4897579ADC31790AB712C0A8AB1B170D92D8F7AB11E8F6D2C52BDC23F9ACA03623C360701554F42307F135460B4BE7D2EE2C34DB2BA8D141DB3CE849DB9008200EB82791D6A1B3B096CB4FBD119956393FD1E0B63132BCED8DD9031924';
wwv_flow_api.g_varchar2_table(80) := '6380071935E83A1F832FEF6CB4DB5D4211040803CC2561BC29391851D09F7AEBE0B28B48B6300555F2F2A71C647AD33ED29E49D8A001C803BD79078E358964D26EB4C648F69B859DD883947CFDD1F811543C2DE1E5F146AB676370F225AC6924F3B47F7B';
wwv_flow_api.g_varchar2_table(81) := '6838DA0F6249C67B735E977D0D8E8F6D1699A6DBA5B5BA0204717424F5DDEA78EA6B1A78E59F61C0DAAC7049C96FF0AA13690B35C2B958F7AFCC495C851DBF1AD88925CC51866693819EE4FF0091597AB786961B99275B2DCD72E242B1C79C3746E07407';
wwv_flow_api.g_varchar2_table(82) := 'AFE26B9B1E1CD4DD6211D95D28F977164651D0E49CD695AF8634CB4B766D4EFA312162FB03FE5C0AD287C5161696A63D2E19AED5786FB242D2027D320605703AD6B1ABEAB7ED25FC771041BB887CB751EC0E473EB5DF7C3ABF86EEDAFECE798B25BB2BC5';
wwv_flow_api.g_varchar2_table(83) := 'E5BC608DD9C8C1033C8CE73DF15E93189248834369BC1E3195CAFB726965B59D50BBD93E369046DC63DF3587AEFDB1B4B7160DF669F72932B1E1501F9BA83DAB9C94ACD6576D77742F1E688C724EB18C2A60FC8ABC65BDBA9EFC563DAADC36932DAC904A';
wwv_flow_api.g_varchar2_table(84) := 'B298F00119272073C67DAB33E249779F4D30C6CCCA9331C29FE275FF00EBD765A26A36CED703ED16E325C8F9C74E707F5AC7B343168DA398083F6785430C8E8DB467F3AE86DB45BFB9F11E91AADBC27ECD6AF87958601046005F53939FC0D77EB6900BA6';
wwv_flow_api.g_varchar2_table(85) := 'B868D5A62A177328EDDFD8D67DC6A6F9BB02C24448137C932E028F5E3BFAF19A83C2C52F925D56480A319192DDA41870BDCE3F8735B17D1CE544B13E1901C13FA8AC8D7F5783FE11F9B5166092431E5A33FF002D3B6D1EF9E95CC0B69AEE3692E2E268A5';
wwv_flow_api.g_varchar2_table(86) := '9632B1B45215119C71851D79EE7AFD2BCC2EA0BBD4E236F2C6B15FC9308A4F364201937052496CE01C7F2AD8F035D4906AB73E548CAD1DB95E0633F38C8FCEBAE99D641E6336D0096CFF003152F94FB46C7439FE1C1AAD338B493C89582380598A8E71F4';
wwv_flow_api.g_varchar2_table(87) := 'FF003D293C372CF7FAB5C40B36F8634DF93C323138C1FD6AEEAD2EA16CB73E514998444C4A84EE2C01383C8EBD07D6B881A97882FEE8472E8F2428413B9D59B3ED92768AEB2C7C35E1694ADC5F9B9B89C81BA3BBF9D14FA055F948FC2BA786FB48B38562';
wwv_flow_api.g_varchar2_table(88) := 'B793CB441858E184AA8FC00AE7FC43E2BB9D36EE37B36B67B43182DF6888821BFBB9CE49FA0AC787E207872F92E17C49A1CEE83688BFD1CC8B9073DC29539029DAE7C57F0FC774B1E99A1FDBA22B96966768141F65DA4F15CD5DFC48D71E7125AE996D6F';
wwv_flow_api.g_varchar2_table(89) := '1A720A234991F52456B59FC4EB9D4C5BD9C8A6D2F1E531C9B177A48A578CEFFBBCE78F7157B57569F49966B9288D145E5DBA20C2A36305803FC473CD729A01B28B57B2B6F21035D5C041B3E51B46E6CF18F500FD056BDD416ECD33ECF964BA97A31ED800';
wwv_flow_api.g_varchar2_table(90) := '707A7B5757A7F844EBF748ED15BA5B24015E4913387E8303B9C0FC2BA5D03E1EF87B448E359639AFA68F1BA4BA62514FA88FEE81CFE95D6CF1AFD9662147EE995C05F4007F4CD50F393775C8C641F515CF6B5AA259595DC6DB99EE90A841FC20F03F3AB3';
wwv_flow_api.g_varchar2_table(91) := 'A15DCB1416F6572110E0852A36E0F5C37A9F7AE825B88AD6D649AE5C08D46589F4AE13C477F6977A65D089DCDC323ED8F6118C8E9E9DAA28E40D15B95218617007FBA78AF38F1A5B5D595CEA134C0A19A512C2E4FCA7EEE307D411563C24236D5752B8B7';
wwv_flow_api.g_varchar2_table(92) := '3BA368A32A482065892C3F020D76D63A645A94120FB60593386C018FCAAE5D6973DA4122C7E7C92B0CA327561DF8EA0D7128D61AAA99006B854DC9243B4805C74F309EB5AF67343A6DD2269691319013280368718181919C01827EA68BDD4185C9876B3C';
wwv_flow_api.g_varchar2_table(93) := 'B82D8CE0281C75AB16373F6CB72C010558AB231CE3FC8AB691A290594E3D7352388963DCB827AF5AE07C59AB35DAC50DBC488C8C1BCD6033183C023D3EB59165A25CEA70A206924494EE1C1924971D0B13F7467B7E3516A1610E8B2C36B1224F7BCF98D8';
wwv_flow_api.g_varchar2_table(94) := 'DE13D81E85BD874A59EEAE190A456564A31892468F2C4FAE49C0FA01593736E5A273214670721D4E011DF3EFEF5D95BEB2D37836699BF7B7296E54BAAE4ED1DB1D80EE6B23C3385D46C649582A421C296E3AEDC7F235D03B28B38B66373BCAFF007BAE58';
wwv_flow_api.g_varchar2_table(95) := '73FA57A3F85AF6E1FC2FA6CB2858E5960596455040DCC33D3E98AE8A1BD2DB43738E39EE3B8356B4FBF8EDE06F358B60E02F76F6AC79AD6669A3605A3B76932514F318EBF2FF0021EF514DA5FDAAEC5DC818BA9DF1C67A463FAFD6A6B9D3F166652DF328';
wwv_flow_api.g_varchar2_table(96) := '0703D4E2B37C511DCDC585A4524CB1B3322E5F2DBD98FCB851C9ED93DB9AE424B87B7B98ED6F82C6F2A79917CDC48A7A11FE73523431A9F9F6A7D4E335BDA578626D523DD2298ADF1C3CCA4EE3EC0FF3A95BC2D26993091EDD1A1046E9225C8C7BF7ADDB';
wwv_flow_api.g_varchar2_table(97) := '1364CBBEDD631818CAC7B7FA556D5E092FDA0585233B3713E612067B608E47D4564C3E1558D0FDAAE9CA9C91E42ED009E7AB75E4FE3589FD8D069378A47882D1E21B8BC4EB87248C0FBB91C550D42D0DFB196C24CDCAAE30518238CFF7BB7D7146911C9A';
wwv_flow_api.g_varchar2_table(98) := '6DFDC5B5E3AA997685E7EEB0CF04FB83C7D2BA0FB3EE231966F4073521B2981DA612C0F195E45731E25D06CA3B79F56632433C4A8182E0AB00C00CFD327A57A1FF00C23F63069935BDB030B4806F917963F8D7955D786F378DB2E65964321C2121304138';
wwv_flow_api.g_varchar2_table(99) := '0303D3DEB0350D0AE97F7922C840F97A673F5AC0B871112BC8DA71B4E7803D4574915E69DA678325D3EF0DCFDBEE41956085760DADC80EDE98E48EBC8159DA0989AD6EE3645670C9B5C8E99C03CFE15BF2DA5AFDAA10536B392B95623276E7FA1FCEBD7A';
wwv_flow_api.g_varchar2_table(100) := '0852C9459EDC08008FF0031571176FB8F5A602444C08EAC73F9D4F1C8E64193F9D58B7904B72C0FDD70539F4C62A4B2D97168D13E331CB8707A902A4BBB337637948F7C4DBE2665C853B48E9F435C3CB736116B30D8DE086E6FAE261179570016663D80E';
wwv_flow_api.g_varchar2_table(101) := 'C31F857510E8B6160E1ED2CA185DB8C94DC463DCE71F855D592E09F9D549FEF02453DAE1E30165E038C0CF39FCAABBB42DCB81C0EA8DCFE46B3757B49E4D3E75B77B8494A9D8D1707DB9AF3EBA6B55936DDDDCF72D9F983C85B1FAE2A09350B48507D96C';
wwv_flow_api.g_varchar2_table(102) := 'F247F7FF00A56AF85EF67D4359885F1105A2AB32AA0C06718C024F51D7F4AD9BEB9823D516EAD099086CC9191C7E1F9D4DA9EA76B711010B14940E243C63DB1DEB027F133D815122A8DDC0382D934F9BC41A7EAD62F6DA9696F770B81B97CA2037A72718';
wwv_flow_api.g_varchar2_table(103) := '39C77AEC34DBABDB8B2B6BA7C4B0DC805008F698C7A139E7A75EF4ED4F4E86ECC6708B22E7271C9AAB7B0A5AD97950C4A600CA146000437057DCF7CFBD790F8B3C3B336A4A6D601B2473F2E47403BE7E95CC6B5A69B5820B86999E795B6CAA493838CE72';
wwv_flow_api.g_varchar2_table(104) := '4FA638ED53F874379773C707660FBEECD6E4F3A8BE849E763120E4632571FD0FE75ED57255B529DDB077BEF5C7BD5958CA264AE148F5CE2AABC9967C7B83F5A725C00FC91C2F3CFAD58B79594463DB35C55B7C42B5B1F1E5DE8B7303C40DD9805D798366';
wwv_flow_api.g_varchar2_table(105) := '4F3F303D39E3BD7A735CA11E446DFBDDA18F3CA29E9F89C1AE7B59F0C5BEA12C7791A2C77D0B0921B8006F461D083FE354AD755F13D9DD08354B38EE50FF00CBC4310503D7EE9FE957A5F10DB894411C7E65D311F2A365541EEC455B92589ECFCCFB4E51';
wwv_flow_api.g_varchar2_table(106) := '064CAD8E7FC28B368F5288CAA1A3218A7E5DEAAEA3015B4954CB19DD1BAA2336D6638E303BFD2B82B4F0B5FEA13810D9CB203CEF3FBB8C7D49FE95D05A78024CA8BBBB8A15EEB045BD87B6E3C7E95A173E07B66D38AD8CF235EA1DCB25CB1DAFEC40FBBF';
wwv_flow_api.g_varchar2_table(107) := '515C27F6C8B5BC6B09D0A5D2BED68E1915803FEF7DDC11CE735ACBE74D1B2B216604E709CFD4E07F5AE335BBABAD2F5C69E2F3DCC9000232D88C727391C907A118AAD75E26D46EA192310450FCA0A285662C4107EF0FBA7E95EA7E13F135AEB3650DA450';
wwv_flow_api.g_varchar2_table(108) := 'BDA8B28638984E402EC473B7079E7F9D748C8AAECC589E38AA2C91DC970E0B797CA0078563DFF2AC3D56C1B1E728E50E54B7B578F789E5692E974F54602DCEED8A0E002303AF53DF3F853B4EB1105BA7950ACE8CA7799A2688A9F73CE71D8D6E5B69371A';
wwv_flow_api.g_varchar2_table(109) := 'B3C8B676134E579F2ADE638504FF00B440AF4BFED16B7B759561699C3045DCC140CF73F8D7436897375628E6E0972B9385000F6AA12D9DCDBA3622F37A9CAFAE73F8D41046400363166E4E50E6AFC62584EE92DDF60EADE9F5AF234F86DAF789B5AD4AFD';
wwv_flow_api.g_varchar2_table(110) := 'A7B0B54B9B8925612CE1DD4331C65573D474E6BD074BF04EB1E1968F5093C4979A8CEB1F94D094508EA3A290D9248EC739AB53F8BF50B0C8BCD285BA2E3FD22EA658A239E9CE4E4FB0AC5D5BC776BA969D2E9D6F324F35E85447B189DC01BC6ECB0CF18C';
wwv_flow_api.g_varchar2_table(111) := 'D456BA07887EC728D32D4C6F2E07FA4FEE1319EB9EBEFC0AE92CFC2BAB3DA429A96AC923AE0BA44A4A961DC66B5ED6DA0D1D3ECED70C771DD8738CF6ED56241630A1B89C5BA2AF3E64C1703FE047A573979F11FC336DBC7F6AC3332920A5BEE95BD3A28F';
wwv_flow_api.g_varchar2_table(112) := 'D6B97BEF8A5A85C178B4AD2D16260364D78D83D323E45FE4581ACFD6DEF64D12D354D7A7D79CDC224925CE9530860B647FBA817F8FA649278C819E693FE1140B1E9916879BBB6BE1FBA3E5797B7B92C3A018C9CFB5751068B73A5582DB5E279BB0B01347';
wwv_flow_api.g_varchar2_table(113) := 'BB6B2E78C375C76E6B9AD4FC150DCCC6E34FBA4498205314DDC761B874EFD4572B79A55E697298EF6D9A0CF01BF80FD18714FD32F2E747D560BFB33896238603077C648DCB93EA07F2AF42D43E23787A2B1325BDDB3CC573E4953BA3F50DE98AEB74680F';
wwv_flow_api.g_varchar2_table(114) := 'F664324BCC92AF98DF53CFF2C526A702B42CA3A9E95C1CBA469D7D73219E03232FCA191B6B1C1F5F4AA3A978722821436D3CA809C0F3395C9E809EC4F407A573444B6772C26B78E4643B5A3941E0FE0457A85C4F62B0CA9717090A92423B9EA3B71D4D6A';
wwv_flow_api.g_varchar2_table(115) := 'F85E0D5B54D284D2C96CB6E8C638668D9834C17F8F18E013DBDABA05B0D49400D2C2FEE4D3C41A88E08848F5DD4EB8B12F02016EAF2B644843ED1B48E9EF59B61E15B382F56F258248A78C9D9F6799955460819E7E63C9EBD2B5258A43E5A4AFBE2DBB46';
wwv_flow_api.g_varchar2_table(116) := '796C8E873EBEF51DED85A5D5BB417B0413DAB7DE8A65050FD41E0D2FDA2D6DDB31AAC6E47DD8E30A4FE42B0B5CF1BE93A15C08350D46DE295977F9043492E3FDD5CD72B7DF16ED70574BD22FAE5FA0670218CFBF3CFE95C96A1E31F11EA971BDEFFEC31E';
wwv_flow_api.g_varchar2_table(117) := '08586CC0CFE2EC093F862B9FBA8CDECA1EFA79EF641CE6E643273F43C0FC055DB4D2351B8D915BDAB0DDF220C6C5F61FFEA15D949A4586996BE440C269218FCBB89586E4958FDE017BFA53F44D5EEED6F3FB26E26126930A956B69BF78EA0E08507D1410';
wwv_flow_api.g_varchar2_table(118) := '3BFBE3BF6696E915BC674D91163B625618938541DD31E9ED5B96FA942EA5254685D54170C32BCFBD606B9A40BCB8824D36E21B428ACD24914619A527A03EC07F3AC89A3D56DE448EEADEDA7B1642249632783EA50F41EBD7F0AE36E2CB4BBE9585B092CD';
wwv_flow_api.g_varchar2_table(119) := 'CE4EE8BE68F19C6483D07BD644FE0DBDB4BF8DAE7CB92D19BE69C38D9EC0E79E7D066BDAEDCBD9E9D6E8DE6CF208C019C21738EA7D3F9D64DF4FACCFB85BD9594A08395370C847E246335876D7F68D706CBC99EC6F8025ADEE800EDEA558655C7FBA78EF';
wwv_flow_api.g_varchar2_table(120) := '564E250D1C8A0AB0DACBD88AE5359B990C8B69732193ECE4A2EE6FD7F118AF4AB0F0FE8BA96976779A8AC923CB12C9E51076804640FAD7471DEDAC0890C0A562450A88AA14281D80CD3FEDC84E3E6FD29FF6C88123CD5C8A69BF847FCB41F80351B6A76E';
wwv_flow_api.g_varchar2_table(121) := 'B8DD322E4E0163B7F9D733E23F17C9A7BC573636D1DDC76D979B7CE2250B8C16DD839E7803BF358307C44D435BBB09A6E976F165090B34BE631C75C1E003ED55BC55FF00097CB8934ED44FD9B66255B48944F9EFC9CF1F4E457116CB76F68B6890BCA124';
wwv_flow_api.g_varchar2_table(122) := '67DD2EE790123E6193D89E48F5A98687ACC93AA88A048C9197925C7D78519CFB56C47E1CB646DD36F933CF3841FA56A5A690C31F64B4C73D553FA9A92E749BEB531DDAF2C8DB8AA3F4ED927B019ED5936D3DD1BD8E3B7233918DDC81EA7E98E7F014FB5B';
wwv_flow_api.g_varchar2_table(123) := '14D4F5126167211B2653D4F5048F4279FCC9ED5E83F68D3408E59A48ADA40815D40C038ED9EF8F5A89355B6FB4B1B7F3AE63639675C02BFF00013826ADC4F61A806685E2908383B782A7DFB8A78B001971248067A6ECFF003AC6B887FB46FAE2D2189161';
wwv_flow_api.g_varchar2_table(124) := '6530160307683CF3E99CD68268164B14292234AB03AC88B21CE19460127A9C64D4D71BA4F95DF8CE6A1470268A203B64E3A8CD626BB0DBEA0562740EA32CB2AFCA5581FBCA7B106B2B4FBB99A67B3BD50B7708C861F7678FA0907F223B1F622B90F195E0';
wwv_flow_api.g_varchar2_table(125) := 'B2BB92E4A86CCEB1B738C663C8FE55EDDA479D241872A90C6362A041F87E02B53ECEAC002031F5C506D8018DBC537ECD11EAB8C7D2A9DEFD9AD20697C92E473851FCFD0572F7D713EB10470DAE9409F3372BB49F29C77C6338AE2BC7175F67F0FDC6989B';
wwv_flow_api.g_varchar2_table(126) := 'E79AE1FCB76C7561D4F1C055E807AF1591E06B3BFB1BAB29A581BCA6908CAFCC0020FA57AB26F4E991EF552EE1B598E67F964FF9E8A719FA8EF5C26B173E24D1247B88A1B0D42C39E6DD196441FED2E491F5E6B63C17E31D3B57132496422B9854315241';
wwv_flow_api.g_varchar2_table(127) := '0C092090DEDE95D65D5FC52DB978226560C30449BB8FA53D5659235922955D58657071FCEB32EBC35737492C96A1209251B5B680430EB8CF6F7A7E9FE11D521884725DC10C79CED42771F738C735A96FE10B188E659A79989CF1841F4F5FD6B4174DD26C';
wwv_flow_api.g_varchar2_table(128) := 'CF16F6C87D5F93FAD2C97D6A01455DE17B28007E1549AF72FE5E7CB57F9403EA6AD58E9C2D3CD791B73C8C4FFBA339C54F248036C5C671963E82B1EFEE571163A312F8F50BD3F335525964F26E5031132384DC3AF3D714DBF87ECEB6D12F0DE5723D39AC';
wwv_flow_api.g_varchar2_table(129) := '3D514ADB25EA9225B46320E3EF27F1AFE2B9FC40F4AE0FC72CF268D34D200BF68BE5641DC22C7B413EFF00E35EF1E1BD32EF44D216CEF6E9AEEE77B4924A7D58E719EF8E95A8E893465244254FA1C7EB55BEC10AF496E57E92B7F8D1F653D16F6E97D8B6';
wwv_flow_api.g_varchar2_table(130) := '7F9D4725834B1BABEA139461F3038008EF9E2B9D8B56B1902B42D3A43D23985BBEC603A104678F4AC9D3ED2DB694D4A2DE6FD881130E91AF201F4F53EE715D4D925BD95B88ED6D638220380AA00A7C93D9B03E6BA03EA0D72FACDBB5C397B270E31F749C';
wwv_flow_api.g_varchar2_table(131) := '1FC2B979BED304BB65578DBB6EEFF8D3AD0DADB5FF00DAA5B68D5CA1569522CB107DBFAD751A7DDDBDDC204328661FC2701BF2ABB01920763FF2CDBAA9F5F5153BEBE6C65922786E3298243C5B4107A107A11EE2ABCBE2EB8E905BC4A7D189351C9AE5D4';
wwv_flow_api.g_varchar2_table(132) := 'B16EBE952DE223FE7A153FA57397BE2FD16CCB7D995EE9C7560D81FF007D1ACAB4F14F883C4F7BF60F0FDB286032C61C158D4F1B9E43C28FA64FA035E8FE1BF0C2687199EEAEA4BFD4E4187B891C955F6407EE8F7EA6B6E79C4284F538CD645FDC3436E9';
wwv_flow_api.g_varchar2_table(133) := '0A9CDC5C724FA0359C48BABF5DB930C5845F755FEA4D5F86DA28524BBBB3CB396D839F9B3D2AA98AEAF267B964C17E154F61DAB27C436682C9ACDA52C5919E72BC7C8149207D4803E99AF28F12EA697BA069F6F1A1032AF2B31C36E209C63F1EB5F4DC4B';
wwv_flow_api.g_varchar2_table(134) := '7096F1A5DCD14B70AB877890AA13F424D47249189006BA6848FF00A67B97F953962B897982FAD641EF173FA3529875041CBDA37B6D6527F5359BAB7DBA5805B3AC3143336D764989765EEA3818CF73E86B9D9755D3ADA410DC3BC1C7CBBA23B71ED8E83E';
wwv_flow_api.g_varchar2_table(135) := 'B5C35CEB17BAB789E65D36E9E1880F291D00C88C753F89FE95D3ACEF8552EEC00FE263520900EC063BD2972DD1BF3A52F95DAC55D4F50C38AA1369D6AFCA0684FB7DDFCAA9BE992AE3CB647C742A707F5A352D4F5CB6D21E2B3252E993E596424B46430E';
wwv_flow_api.g_varchar2_table(136) := '9C7271D2BAEB0D42DEF213BA5594BA8F337003271DC76FA551D43C369323369D766D653D095DC07B73D2B8ABBF0378C750D45601F6568DB25AEA5B92EA31EA08E09F403F1A9351F844F6D6EAF77E2349A66E2288DB9085BD3AF4F7AF4DF0EE8167E14D02';
wwv_flow_api.g_varchar2_table(137) := '1D3ED9543050F713639964C724FB7603B0AD432AC36E6590ED5033CD65FDA15ACE5BEB9CAA370ABDF6FA0F7358735C35DCAF2B7F19C1DBD87F757E9DCD6C595A086DE33265377CCE106588EC8BDFEB534AF73290E228ACEDE3FBA660091EFD78FA563EA5';
wwv_flow_api.g_varchar2_table(138) := 'E28D334B89A4B8BEB8B823F82040A0FE35E51E22F1EDC6A4D3456908B78E6CFF0016E72A7B67F3E95C4BB348C598E4FAD7D726F198A88829CFF78FF8535AEE6C91B5188FEE483FAE29BF6B8C1CCF6AE3FDAF2C1FE551EA9AA7D8B4B7B8B5914CA4848C36';
wwv_flow_api.g_varchar2_table(139) := '48CFD0D614227BB9FF00B42F75099EE5A3DA8AA3CB8E25CE70A3A1F7249AAABA747346FF006A53F663977527FD69F563FDDACA0B6A662D6302A4014AA32A801F9E4AF7C7BF7A95471CF3ED52119E7001A63B6DEB559E7624AA213ED8AAB737696BFF001F';
wwv_flow_api.g_varchar2_table(140) := '53AC3C6EC31E7F015CFEA1E33B2B450B6E1A490F432647FE3A393F8D73773AF6AB7CCED1A385231BE53B40FA0ED5059DD6A16570B771EA12ADC8FBBB0FCA7D883F7857A2F867E20C373711DA6A056DEE7A618FC8FEEAC7F957A959DC4728CA11C8CE3350';
wwv_flow_api.g_varchar2_table(141) := '3A09350B992421551046A5BA738C63F1A6ABF9D71234A765ADB90A4B71B985664F7926B176B0C3F2DBEEFBC7F8B1D4FD2B9ED5BC51A65CDE0B54BA2F6B6C4C71C16CA6596E1870CDB5724283C7BF27814BA75ECDAA5B47756D12DB5BBF0A1C83263DC0E1';
wwv_flow_api.g_varchar2_table(142) := '7E9D6BACD3AC961B669EF37B3B7F7892D8F4FC6B9BF136BE5EED74DD3E11737F8E225FF5710F5635CADDE8515BBACDABCADA8EA127FA9801D9107E8AB8EE33D49CF00F1589E2AB1834FB6B3B6055A625EE2E25DB832155C67D8658003B60570632793D4F';
wwv_flow_api.g_varchar2_table(143) := '35F4CAC96B7013F7BB1C742AE548FC88A97ECD38E62BE979ECDB5C7EA3FAD34BEA5132E2489C0E003115FE46AAEA3FDA176626BA689218CFC914609DEDEA49FE555975116D398AE9EE1542F0CA9BC67B7DDE7F4ACD9E49F5471E76E4B44E52DDBAC8DFDE';
wwv_flow_api.g_varchar2_table(144) := '93D7D97A0EFCF4B69617337DC81F1D8E315623D1AF9F3855FC5BA552BA7B5B16D935E47BFBA4477B7E43A573DAA78C74BB3F9554F980E3F7AD927E8AB5CD5D78AF54BCDD1D94262439F9E41E583FD6B29E0B8B99337B7923023958FE45FA13D4D11C76F6';
wwv_flow_api.g_varchar2_table(145) := 'EAC61842F1C9C7F327934C9E6548F323AC6B919673D7E83A9FC2B3A4D463524C6A5CFAB7CABFE3FCAAA492CD727E6C63D02E0574DE19F1FEB3E1B9D144A6EAD0020C139CE07FB2DD47EA2BD4E1F891E1ABDB6B7B97BD16F7123E7CB907CF010319F439FC';
wwv_flow_api.g_varchar2_table(146) := '8D55D5FC6DA2C30133DDC6C36E4C69279B2CA7D80E14579F6B9F11750D46292D74F8CD95BB8D8C55B323AFA6474FC2B97B669ACDC4D6D3490C98C6F89CA1E7B6462BD77E175F45A858A5A09956FAC49DE8C325E324E187F7BAE0FA11EF5D0F8D3C44DA5A';
wwv_flow_api.g_varchar2_table(147) := '182205A6083681D0BB1C28FF003EB55F48D2934CB51BDF75CC9F34D21E599BBF3ED5CFDACCD7FE2EBE9C9568ED032C6A7B7F0823F2639F7AE4BC73765AF1E2E41DA883D3072C4FE3C0AE3ABE858764A0B8DBB33C1CF5FC3B53E4963B64323482341D5B38';
wwv_flow_api.g_varchar2_table(148) := '02916FE478F7DBDC8917BE1FB52BDF5D38D9B83AFAE00614EB68D3B2924FAF7AB2750B3B2389E65DFDA341B9BF21585AAFC42B3B0565531447D6E1B7B9FA46BFE35C4EA5E3CD53532C96D14D2C43A34CDE5C79FF00717A8FA9AC46B8D42EC7FA65EBAC40';
wwv_flow_api.g_varchar2_table(149) := 'F115BA88D473EA39A6C5670DBB3345180DD77753F893523336CF39D860672EC703FCE6A8CDAA5B21250195CF4DBD07E75525BCBA9CF0442BE8BC9FCEAB7D9839249393D589C9A05AE0F5CFD453BC86EC723D0D34C448E707D09A8591B21739F4F4A5F21C';
wwv_flow_api.g_varchar2_table(150) := '0246DC77C55CB1B5F3AE1611C164241C771560DA2AC82279A3CE481B016E7D38ADEF0FDE3E817D6BA8D9E1A68C927782A2453C153DC03FD07A56AEB5E244B9D6ECF54B8865F224BB12180306380BC007A71C1FC2AC6A9F116CA62F0C36976D0E796C04DF';
wwv_flow_api.g_varchar2_table(151) := '8ED82738ACFD33C4B67A72EA725EDC7977334A182AC7BB236E7F993F957377AE97B7324F22CB8790B8591B2C377A9F5E01F6E959D756DE4B06504C6DD1B1C03E95EC96B249697412E55E2DCA73BF8E00FC8E2B441778D595B72BAE79E739A866B88E01FB';
wwv_flow_api.g_varchar2_table(152) := 'C6098E7AE0FE55937FE27D36C22F3649803C60B1C7E9D4D73B75E37BFBD3E5D85A49246780EF98D3FF00AF5912FF006ADE29377A83468C398AD86D07EA7A9AA91D845101E5C404AC73B88CB1F7C9ABE2DC80A769667F424E7F1AA6F776B12ED96E137827';
wwv_flow_api.g_varchar2_table(153) := '2B11DC7AFE43F3AA736B71C7916D16E38C6E939C7D3B564CB2CD7526E964691BD58E71FE153AC614000658F73CE68070D819F6CD3D24E7FCFEB520606A40C0FD29A541FA531D30E08E84E3F1A9238BE7C01918E9EABDFF00115A308F240F954BA6E28D8C';
wwv_flow_api.g_varchar2_table(154) := '0C81FD456D4575349234B7291C666853C84112A79483202000718CD51B802394320F94E72A7A13EC7B1AAFABFC9FD9EBBBA12C067A7CBFFD7ACA4CCD7B1231CEE9067F3A691F69D68A7DE0D29DDF41FF00EAA8AE2EE56BC99D24214B9E3B71C53230F339';
wwv_flow_api.g_varchar2_table(155) := '2EECDF535EB5A878AAD2DE27495414C72D2B0C73ED5CC0F155DCAAD6DA3C13CD18E1704AA0FF00811E6A3B7B6BFB83249A9CAC3702105BBF2A71DC9A8ADF49B5B6DB218B2FFDF7F9989FA9E9F8559CC7C210370FCEA9DE5E456E4ACF711C4719C10598FD';
wwv_flow_api.g_varchar2_table(156) := '00E7F95634DADA8606088C8C0FDE98E17FEF91FD4D67DC6A1757636CD3B141D107CAA3F0155A8C722ACC51EDC0FCEA72304544CAD9EBB87BD3719382707DF8346245E41DC29CB31F5A90487B608F6A9A395082ADC86EA2AD24870AA76E579561DFFCF715';
wwv_flow_api.g_varchar2_table(157) := '65675C1795415C7CDEDFED7EB83576595E608246C951F23FF43EB54A732E77E7702429147891425DDB211B76A1E959BA732FF68C6DD420673F80FF00EBD374D3B5EE673D510B7E27A5511EBEB5A16916133DEBA783C3F630932143348718799B730FCEB4';
wwv_flow_api.g_varchar2_table(158) := '82AC5B785538C631806AADCDFC16AACD2CC91E7BB1C7FF005CD605CF88E05F9628DEE0818CB9D8BFE3FCAB1EE758BEBAE0CA2243FC10AEC1FA727F3AA18C514B462A7862604120827A0F4AB283A9FC0539B9E6A1772170B827351C8EE8B82A013502AB93';
wwv_flow_api.g_varchar2_table(159) := 'B941CFA8A7995C70E013FED0E693CEDA72A36FE39AD08A09E6C0F21B715DE08EEBEB4E62F6E424CA403D9C15CFF9F6AB30CB93956CFB1EB566DE4DA0A0E547210F55A6B4CB2DCC5183D6451F9914EF161C6A8A39E131CD65D86556EEE08F9521201F7352';
wwv_flow_api.g_varchar2_table(160) := '6C6834C914AED77DAADFCEA94485A4551EB5AE136A80BD85695DF8A6CA250200F3383D57A1FC4F1F90358579E21BEBB270CB0A9FEE0CB7E67FA62B2989772EC4B39EACC724FE3494514F8E09256C2216FA0AD7B3F0EDC4D833308D6B4AF34AB6D334E69A';
wwv_flow_api.g_varchar2_table(161) := '240D2E42866E7193826B080C658F27D69C0614014D73C540ED8E4F6EF5033963B989E2B48D85E5BDA473C916E848CE5392BF514C8C472A02AE1BD475A63DB22E49518C5747756B349069896F208A4084973D00C74FA1F4ABFE1CF10DA890D8EB16027889';
wwv_flow_api.g_varchar2_table(162) := '2A7CC8BCC43EE07515D25DF84343BB449A18AE2CD6419429F321FA67FA566DC780599375BDFA3A0E9BD181158C7C217567790CB2EA36A44722B95C9DC4020E071506BF04577ACB0965F2D513770B9CF6ACF992282C66F24B3025572C3AF3E9559A6FB5DA';
wwv_flow_api.g_varchar2_table(163) := '06D871102CEE7F889E98A8EC5732962338EC6AF331CF5FC2B9EA28A3049C0EB57ED347BCBA236C44293D4D6F5A785628C86B893CC393951C56BC7A7C36E00882281DBB9A18124A9DCA7B1F43553518BCDD3A75CF217CCC67A90726B9964DBC77EB4C3D6A';
wwv_flow_api.g_varchar2_table(164) := '2707919C7E3555DB3C0E83D6B534ED21DE36BABA8D842AA5923E86423B7B0AB43C41700EE16C9B57E52371041F4ACEBDBC82E6EBCD4B45858919DA71F5E957D6DA39A1761B95C1E47FFAEACF89A464B6B289188529F32F638E99AC3823B8B9DDE5498D83';
wwv_flow_api.g_varchar2_table(165) := '3F7F6FE557F4DF106B5A64E91C1793145E3C9949910FE07A7E18AE88EAD79AA69F2DE68D793DA5CC63F7F6624CA9F75DDD3F0FD2B1ED3C47AC6A3AAD9C57B7D24C86408559541C7A70334BE28919753FDDB950460E3BD62248C06D2EC53706233D6B5EED';
wwv_flow_api.g_varchar2_table(166) := '1527BD098D8E03A81E981556C8011139E49E9531735874523743F4AE97C3D146CC0945279EA2BAA6F95B0BC0CF414CC9F9BEA29F73F2C92638FA7E14C2AA614CA8EBE944CA3CB6E074AE29BEF9FA544FD4D4137DC6FA8A6E9AAAFA8DB2B286064E4119CD';
wwv_flow_api.g_varchar2_table(167) := '7797401897201C7AD7277A006700601DD9F7E45663728DF515A762CC608F2C4F6E4F6AB3E28FF5969FEE1AC6BE55564DA00F93B0A9F48E7528AAF787495F14DB804805DC103B8C1E29C1557C6A8A0003CF53803D8D3FC55FF213FC2B0FB0FA56D49CC609';
wwv_flow_api.g_varchar2_table(168) := 'E4FD987F3AAF6BFEA4FD69EDD6BFFFD9';
null;
end;
/
begin
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(27420966079978374198)
,p_file_name=>'employees.jpg'
,p_mime_type=>'image/jpeg'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/files/logo_jpg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := 'FFD8FFE000104A46494600010100009000900000FFE100804578696600004D4D002A000000080005011200030000000100010000011A0005000000010000004A011B0005000000010000005201280003000000010002000087690004000000010000005A';
wwv_flow_api.g_varchar2_table(2) := '00000000000000900000000100000090000000010002A002000400000001000004D2A0030004000000010000014600000000FFED003850686F746F73686F7020332E30003842494D04040000000000003842494D0425000000000010D41D8CD98F00B204';
wwv_flow_api.g_varchar2_table(3) := 'E9800998ECF8427EFFE20F604943435F50524F46494C4500010100000F506170706C021000006D6E74725247422058595A2007E40001000100110012001F616373704150504C000000004150504C000000000000000000000000000000000000F6D60001';
wwv_flow_api.g_varchar2_table(4) := '00000000D32D6170706C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000116465736300000150000000626473636D000001B40000043663707274000005EC00000023777470740000';
wwv_flow_api.g_varchar2_table(5) := '0610000000147258595A00000624000000146758595A00000638000000146258595A0000064C0000001472545243000006600000080C6161726700000E6C000000207663677400000E8C000000306E64696E00000EBC0000003E6368616400000EFC0000';
wwv_flow_api.g_varchar2_table(6) := '002C6D6D6F6400000F280000002862545243000006600000080C67545243000006600000080C6161626700000E6C000000206161676700000E6C00000020646573630000000000000008446973706C617900000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006D6C756300000000000000230000000C6872485200000014000001B46B6F4B520000000C0000';
wwv_flow_api.g_varchar2_table(8) := '01C86E624E4F00000012000001D46964000000000012000001E66875485500000014000001F86373435A000000160000020C6461444B0000001C000002226E6C4E4C000000160000023E666946490000001000000254697449540000001400000264726F';
wwv_flow_api.g_varchar2_table(9) := '524F000000120000027865734553000000120000027861720000000000140000028A756B55410000001C0000029E6865494C00000016000002BA7A6854570000000C000002D07669564E0000000E000002DC736B534B00000016000002EA7A68434E0000';
wwv_flow_api.g_varchar2_table(10) := '000C000002D07275525500000024000003006672465200000016000003246D730000000000120000033A6869494E000000120000034C746854480000000C0000035E63614553000000180000036A6573584C000000120000027864654445000000100000';
wwv_flow_api.g_varchar2_table(11) := '0382656E555300000012000003927074425200000018000003A4706C504C00000012000003BC656C475200000022000003CE7376534500000010000003F07472545200000014000004007074505400000016000004146A614A500000000C0000042A004C';
wwv_flow_api.g_varchar2_table(12) := '004300440020007500200062006F006A0069CEECB7EC0020004C0043004400460061007200670065002D004C00430044004C004300440020005700610072006E00610053007A00ED006E006500730020004C0043004400420061007200650076006E00FD';
wwv_flow_api.g_varchar2_table(13) := '0020004C00430044004C00430044002D006600610072007600650073006B00E60072006D004B006C0065007500720065006E002D004C00430044005600E400720069002D004C00430044004C0043004400200063006F006C006F00720069004C00430044';
wwv_flow_api.g_varchar2_table(14) := '00200063006F006C006F0072200F004C00430044002006450644064806460629041A043E043B044C043E0440043E0432043804390020004C00430044200F004C00430044002005E605D105E205D505E005D95F6982720020004C00430044004C00430044';
wwv_flow_api.g_varchar2_table(15) := '0020004D00E0007500460061007200650062006E00FD0020004C004300440426043204350442043D043E043900200416041A002D043404380441043F043B04350439004C0043004400200063006F0075006C006500750072005700610072006E00610020';
wwv_flow_api.g_varchar2_table(16) := '004C00430044093009020917094009280020004C00430044004C0043004400200E2A0E35004C0043004400200065006E00200063006F006C006F00720046006100720062002D004C004300440043006F006C006F00720020004C00430044004C00430044';
wwv_flow_api.g_varchar2_table(17) := '00200043006F006C006F007200690064006F004B006F006C006F00720020004C00430044038803B303C703C103C903BC03B7002003BF03B803CC03BD03B70020004C00430044004600E400720067002D004C0043004400520065006E006B006C00690020';
wwv_flow_api.g_varchar2_table(18) := '004C00430044004C004300440020006100200043006F00720065007330AB30E930FC004C0043004400007465787400000000436F70797269676874204170706C6520496E632E2C2032303230000058595A20000000000000F31600010000000116CA5859';
wwv_flow_api.g_varchar2_table(19) := '5A2000000000000071C00000398A0000016758595A2000000000000061230000B9E6000013F658595A2000000000000023F200000C900000BDD063757276000000000000040000000005000A000F00140019001E00230028002D00320036003B00400045';
wwv_flow_api.g_varchar2_table(20) := '004A004F00540059005E00630068006D00720077007C00810086008B00900095009A009F00A300A800AD00B200B700BC00C100C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119011F0125012B01320138013E0145014C0152';
wwv_flow_api.g_varchar2_table(21) := '015901600167016E0175017C0183018B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA0203020C0214021D0226022F02380241024B0254025D02670271027A0284028E029802A202AC02B602C102CB02D502E002EB02F50300030B';
wwv_flow_api.g_varchar2_table(22) := '03160321032D03380343034F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F9040604130420042D043B0448045504630471047E048C049A04A804B604C404D304E104F004FE050D051C052B053A05490558056705770586059605A6';
wwv_flow_api.g_varchar2_table(23) := '05B505C505D505E505F6060606160627063706480659066A067B068C069D06AF06C006D106E306F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A';
wwv_flow_api.g_varchar2_table(24) := '094F09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC30DDE';
wwv_flow_api.g_varchar2_table(25) := '0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F116D118C11AA11C911E81207122612451264128412A312C312E31303132313431363138313A4';
wwv_flow_api.g_varchar2_table(26) := '13C513E5140614271449146A148B14AD14CE14F01512153415561578159B15BD15E0160316261649166C168F16B216D616FA171D17411765178917AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD1A041A2A1A511A771A9E';
wwv_flow_api.g_varchar2_table(27) := '1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A121CE21FB22272255228222AF22DD';
wwv_flow_api.g_varchar2_table(28) := '230A23382366239423C223F0241F244D247C24AB24DA250925382568259725C725F726272657268726B726E827182749277A27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B2ACF2B022B362B692B9D2BD12C052C392C6E';
wwv_flow_api.g_varchar2_table(29) := '2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D83513354D358735C235FD3637367236AE36E937243760';
wwv_flow_api.g_varchar2_table(30) := '379C37D738143850388C38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C653CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE24023406440A640E74129416A41AC41EE4230427242B542F7433A437D43C0';
wwv_flow_api.g_varchar2_table(31) := '44034447448A44CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D7491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B';
wwv_flow_api.g_varchar2_table(32) := '51E65231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A956F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B955BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA60FC';
wwv_flow_api.g_varchar2_table(33) := '614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7663D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0713A719571F0';
wwv_flow_api.g_varchar2_table(34) := '724B72A67301735D73B87414747074CC7528758575E1763E769B76F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C817CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD8230829282F4835783BA841D8480';
wwv_flow_api.g_varchar2_table(35) := '84E3854785AB860E867286D7873B879F8804886988CE8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C99634969F970A977597E0984C98B8';
wwv_flow_api.g_varchar2_table(36) := '9924999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1';
wwv_flow_api.g_varchar2_table(37) := 'AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646';
wwv_flow_api.g_varchar2_table(38) := 'C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAF';
wwv_flow_api.g_varchar2_table(39) := 'E036E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7';
wwv_flow_api.g_varchar2_table(40) := 'FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFF706172610000000000030000000266660000F2A700000D59000013D000000A5B7663677400000000000000010001000000000000000100000001000000000000000100000001000000000000000100006E64';
wwv_flow_api.g_varchar2_table(41) := '696E00000000000000360000A7400000558000004CC000009EC00000258000000CC000005000000054400002333300023333000233330000000000000000736633320000000000010C72000005F8FFFFF31D000007BA0000FD72FFFFFB9DFFFFFDA40000';
wwv_flow_api.g_varchar2_table(42) := '03D90000C0716D6D6F6400000000000006100000A02700000000CDDC190000000000000000000000000000000000FFC0001108014604D203012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC4';
wwv_flow_api.g_varchar2_table(43) := '00B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A';
wwv_flow_api.g_varchar2_table(44) := '737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101000000';
wwv_flow_api.g_varchar2_table(45) := '0000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A43444546474849';
wwv_flow_api.g_varchar2_table(46) := '4A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDB00';
wwv_flow_api.g_varchar2_table(47) := '43001C1C1C1C1C1C301C1C3044303030445C444444445C745C5C5C5C5C748C7474747474748C8C8C8C8C8C8C8CA8A8A8A8A8A8C4C4C4C4C4DCDCDCDCDCDCDCDCDCDCFFDB00430122242438343860343460E69C809CE6E6E6E6E6E6E6E6E6E6E6E6E6E6E6';
wwv_flow_api.g_varchar2_table(48) := 'E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6FFDD0004004EFFDA000C03010002110311003F00828A28AEE38428A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A';
wwv_flow_api.g_varchar2_table(49) := '0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A42CA3A914DF3231D587E745D0ECC7D15119E21FC4293ED30FF7A9732EE3';
wwv_flow_api.g_varchar2_table(50) := 'E57D89A8AAE6EA1F5FD29BF6B8BDE973AEE1C92EC5AA2AA1BC8FB034DFB6AF6534BDA47B8FD9CBB1768AA3F6D1FDDFD693EDA7FBBFAD1ED223F6722FD159FF006D6FEE8A4FB6BFA0A5ED621ECA468D159BF6C93D0527DB25F6A3DAC47EC99A745667DAE5';
wwv_flow_api.g_varchar2_table(51) := 'F6A4FB5CBED47B541EC99A94565FDAE6F51F951F6A9BD47E54BDAA0F64CD4A2B2BED537AFE947DAA6F5FD28F6A83D933568ACAFB54FF00DEFD0527DAA7FEF7E828F6C83D8B35A8ACAFB54DEBFA0A3ED537AFE947B541EC59AB45657DAA6F5FD297ED737A';
wwv_flow_api.g_varchar2_table(52) := '8FCA8F6A83D933528ACBFB5CDED4BF6B97DA9FB541EC99A745667DAE5F6A5FB64BE828F6A83D9334A8ACEFB649E828FB6BFF007451ED622F6523468ACFFB69FEED2FDB7FD9FD69FB4887B2917E8AA5F6D1FDDFD697ED89DD4D1ED222F6722E51557ED917';
wwv_flow_api.g_varchar2_table(53) := 'A1A5FB5C3EF4F9E3DC3925D8B345402EA1FEF7E94EFB4427F8853E65DC5CAFB12D15189623FC43F3A76F43D187E745D0ACC7514641E945310514514005145140051451400514514005145140051451400514514005145140051451400514514005145140';
wwv_flow_api.g_varchar2_table(54) := '05145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401FFFD0828A28AEE38428A28A0028A28A0028A28A0028A28A0028A28A0028A28A';
wwv_flow_api.g_varchar2_table(55) := '0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A290B28EA40A005A2A233C23AB0A8CDDC43A64D2725DCA507D8B3455237ABD96A337AFD80A9752252A723468ACA37531EF8FC2986794';
wwv_flow_api.g_varchar2_table(56) := 'FF0011A9F6C8AF62CD8A42EA3A902B10B31EA49A7AC52BFDC563F4153EDBC87EC7CCD433C43AB0A61BA8477CFE15516C6EDBA44DF88C7F3A9D74ABD6EAA07D48A5ED995EC90A6F23EC0D30DEFA2FEB565746B93F79947E7FE1532E887F8A5FC87FF5EA7D';
wwv_flow_api.g_varchar2_table(57) := 'AC87ECE2669BD7ECA2986EE53E82B6D74583F89D8FD302A55D22D075DC7EA6973CBB95C8BB1CE9B998FF001534CF29FE235D48D32C87FCB3CFD49FF1A9458DA2F4897F119A5CCC7CABB1C799243D58FE74DC935DB8B7817EEC6A3F01520555FBA00A5719';
wwv_flow_api.g_varchar2_table(58) := 'C308E46E8A4FE1520B6B96E91B9FC0D76D452038C163787A44DF954834DBD3FF002CFF0051FE35D7D1401CA0D26F4F5503F114F1A3DD9EA547E3FF00D6AEA28A00E6868B71DDD3F5FF000A78D124EF20FCABA2A2803006887BCBFF008EFF00F5E9C3445E';
wwv_flow_api.g_varchar2_table(59) := 'F29FCBFF00AF5BB4500620D122EF237E54E1A2C1DDDBF4AD9A280323FB1AD7FBCFF98FF0A77F63DA7AB7E7FF00D6AD5A28032FFB22D3FDAFCE97FB22CFD1BF3AD3A280333FB26CFD0FE74BFD9365FDD3F99AD2A28033BFB2ACBFBA7F334BFD9565FDC3F9';
wwv_flow_api.g_varchar2_table(60) := '9AD0A28033FF00B2EC7FE79FEA7FC697FB2EC7FE79FEA7FC6AFD14019FFD9763FDCFD4FF008D27F65597F70FE66B468A00CEFECAB2FEE9FCCD27F64D9FA1FCEB4A8A00CCFEC8B3F46FCE93FB22CFFDAFCEB528A00CAFEC7B4FF6BF3FFEB527F635AFABFE';
wwv_flow_api.g_varchar2_table(61) := '63FC2B5A8A00C73A2DB7677FD3FC29A74587B48DFA56D51401867444ED21FCA9A7441DA5FF00C77FFAF5BD450073E7446ED28FCBFF00AF4C3A2CDDA45FD6BA3A2803993A35D0E8C87F13FE1519D22F0740A7F1AEAA8A00E48E977A3F833F88FF001A8CE9';
wwv_flow_api.g_varchar2_table(62) := 'F7A3AC46BB1A28038A367743AC4FF91A618665EA8C3F035DC51401C190C3AE4528661D09AEEE986289BEF283F850071225947463F9D385C4C3F88D75E6D2D5BAC49F90A8CE9F64DD631F86453E662B239617530EF9FC29E2F24EE05742DA5591E8A47D09';
wwv_flow_api.g_varchar2_table(63) := 'A89B46B53D19C7E23FC29F3BEE2E45D8C517A7BAD3C5EAF7535A2DA227F0CA47D466A16D1251F76453F518AAF69217B38900BB88FA8A78B884FF001531B48BB5E9B4FD0FF8D42DA6DEAF58CFE041A7ED593EC91704B19E8C3F3A7820F4AC96B6B94FBD1B';
wwv_flow_api.g_varchar2_table(64) := '0FC0D424329E720D57B6F213A3E66E5158A25907463F9D482E661FC54FDB227D8B35A8ACC17928EB83520BD3DD7F5AAF6B125D2917E8AA82F233D411520B984F7C5529AEE4B84BB13D14C1246DD1853EAAE2B05145140828A28A0028A28A0028A28A0028';
wwv_flow_api.g_varchar2_table(65) := 'A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFD1828A28AEE38428A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028';
wwv_flow_api.g_varchar2_table(66) := 'A28A0028A28A0028A28A0028A28A0028A42CABF788150B5CC2BDF3F4A4E496E3516F627A2A935E8FE15FCEA16BB94F4C0A875625AA5234E90B2AFDE20563B4D2B75634D54790E10163EDCD4BADD8B547BB354DC42BFC55135E463EE826A14D3EF24E9191';
wwv_flow_api.g_varchar2_table(67) := 'F5E3F9D5B4D1AE4FDF655FD6A1D5652A48AA6F5BF8540A88DD4C7BE3E95B49A2463FD6484FD063FC6AD269566BD54B7D4FF854B9BEE5A825D0E58CB23756348A8EE7E405BE9CD76896B6D1FDC8D47E153E00E054DCA38D5B1BC7E9137E3C7F3AB0BA45E3';
wwv_flow_api.g_varchar2_table(68) := '750ABF53FE19AEAA8A4073CBA2487EFC807D067FC2AC2E8B08FBEEC7E981FE35B3450066AE9364BD54B7D49FE95616C6D13A44BF88CFF3AB5450031628D3EE281F414FA28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2';
wwv_flow_api.g_varchar2_table(69) := '8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028201E08CD14';
wwv_flow_api.g_varchar2_table(70) := '50040D6D6CFF007A353F80A81B4DB26EB1E3E848ABD450064B68F6A7EE965FC7FF00AD5036883F825FCC56ED1401CCB68D723EEB29FCC5576D32F57F833F422BAEA2803887B6B84FBF1B0FC0D441997A122BBCA63471BFDF50DF519A00E2C4F30E8C6A41';
wwv_flow_api.g_varchar2_table(71) := '7928EB835D3BE9F66FD6303E9C7F2AAAFA35B37DC2CBF8E6A949F725C53E8638BD1FC4B530BA84F5247D6A77D11C7FAB901FA8C7F8D557D2AF13A286FA1FF1C552AB225D289604B1B74614FAC97B6B88FEFC6C3F0A88332F42455AADDC8747B336E8AC95';
wwv_flow_api.g_varchar2_table(72) := 'B9997F8B3F5A996F5BF8941AB55512E933428AAAB7919EA08A996689BA30AA524FA90E0D7424A28A2A890A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFFD2828A28';
wwv_flow_api.g_varchar2_table(73) := 'AEE38428A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A42CAA32C7155DAEA25E9CFD293925B8D45BD8B3456735E39FBA00AAED34AFF798D66EAAE868A93EA6B3491A7DE602A06BB8C7DDC9AA31C134DFEAD0B7D055F8';
wwv_flow_api.g_varchar2_table(74) := 'F48BB7FBF841EE7FC2A1D57D0D1525D4AED78E7EE802A069E56EAC6B7A3D1621FEB5CB7D38FF001ABD1D85A45F76307EBCFF003ACDC9B2D452E8722A9248708A58FB0CD5C8F4DBC93F8368F738AEB400A3006052D49473A9A2C87FD64807D067FC2AE268';
wwv_flow_api.g_varchar2_table(75) := 'F6ABF7CB37E38FE55AD4500554B2B48FEEC6BF88CFF3AB4000300628A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28';
wwv_flow_api.g_varchar2_table(76) := 'A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28';
wwv_flow_api.g_varchar2_table(77) := 'A2800A28A2800A28A2800A8DE18A4FF588ADF519A928A00CF7D32CDFF836FD0D537D1233FEAE423EA33FE15B9450072F268F74BF736BFD0E3F9D5292D2E62FBF1B0F7C715DAD1401C20775FBA48A996EA55EA73F5AEC2482197FD622B7D45519349B47FB';
wwv_flow_api.g_varchar2_table(78) := 'A0A7D0FF008D352684D27B988B7A3F8D7F2AB0B710B77C7D6A5934590731480FB1E3FC6B3E4D3EEE2FBD1923D473FCAB455590E9234410791CD15899743DC1A996EA55EA73F5AB5597533745F43568AA4B78A7EF8C7D2ACACD13F4615A29A666E0D12514';
wwv_flow_api.g_varchar2_table(79) := '515448514514005145140051451400514514005145140051451400514514005145140051451401FFD3828A28AEE38428A28A0028A28A0028A28A0028A28A0028A28A0028A4665519638AAAF768BC27CD49C92DCA516F62DD35A444FBC40ACC7B995FBE07';
wwv_flow_api.g_varchar2_table(80) := 'B54691CB3362352C7DB9AC9D6EC6AA8F72EBDE20FB833559AEA56EF8FA55E8747B87E652107E66B522D26D63E5F2E7DFA7E9593A8D9A282472E03C8D850589F4E6AFC5A5DDCBC95D83FDAAEA9238E31B6350A3D8629D505989168B18E66727D8715A1158';
wwv_flow_api.g_varchar2_table(81) := 'DA45F76319F53CFF003AB745001D3814514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014';
wwv_flow_api.g_varchar2_table(82) := '51450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014';
wwv_flow_api.g_varchar2_table(83) := '51450014514500145145001451450014514500145145001451450014514500145145004724514A312286FA8CD509749B49395050FB1FF1AD3A28039B9746997989C37D78359D2DADC43FEB1081EBDBF3AED68A00E1965913EEB115656F187DF19AE9A5B2';
wwv_flow_api.g_varchar2_table(84) := 'B59BEFC633EA383FA5664BA2A9E607C7B37F88AA526B625C53DCAA97313F7C7D6A7EBC8ACE9AC2EA0E59091EA3915596474FBA48AD556EE66E8F636A8ACF4BC61C38CFD2ADA4F1C9D0F3E86B5534CC9C1A25A28A2A880A28A2800A28A2800A28A2800A28';
wwv_flow_api.g_varchar2_table(85) := 'A2800A28A2800A28A2803FFFD4828A28AEE38428A28A0028A28A0028A28A0028A864B88E3E09C9F415424B991F81F28F6A895448B8D36CD179A38FEF1E7D2A93DE31E1062A18609AE1B6C4A5BF97E75B3068DFC572DF82FF008D612AAD9BC69A461E5E46';
wwv_flow_api.g_varchar2_table(86) := 'C72C4FE35A10695752F2E3CB1EFD7F2AE921B7860188902FF3FCEA6ACCD0CB8749B68B97CC87DFA7E55A6AAA836A0007A0E2968A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A';
wwv_flow_api.g_varchar2_table(87) := '0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2A39658E14324A7681401254524F0C2332B85FA9AE7EEB56964CA5BFC8BEBDCFF0085672C324A77390B9EEE719FCE803A56D56CD7A316FA03FD6A2FED9B4F47FC87F8D65C76303F5B84';
wwv_flow_api.g_varchar2_table(88) := 'CFA0FF00F5D5A3A4C4067CC3F5C5006826A966FC6FDBF5157D5D5D43210C0F71CD70D22A072B19DC07438EB5D4E996D25BDBE24EAC738F4A00D1A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A';
wwv_flow_api.g_varchar2_table(89) := '2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A';
wwv_flow_api.g_varchar2_table(90) := '2800A28A2800A28A2800A28A2800AAD35A5B4FFEB1013EBD0FE75668A00C09B45EF6EFF837F8D644D6B3DB9FDEA11EFDBF3AEDA8201183CD0071093C91F4391E86AE47768DC3FCA6B6A7D2ED66E546C6F55E9F9562DC697730F2A3CC5F55EBF955C66D11';
wwv_flow_api.g_varchar2_table(91) := '28265B0430C83914562ABBC67E53835763BC0789063DC56D1AA9EE632A4D6C5DA2915958654E452D6A64145145001451450014514500145145007FFFD5828A28AEE38428A28A0028A3A726A94D7607CB17E74A524B72A316F62CC92A4432C7F0ACF96E5D';
wwv_flow_api.g_varchar2_table(92) := 'F85F94544AB24EFB5016635BB6BA42AE1EE8E4FF007474FC4D734AA3674469A462C16D3DCB622527D4F61F8D6F5BE91147869CEF3E9DAB5D555142A0000EC296B33411555176A0000EC2968240193C0159371ABC1165611E61F5E828035A90B2A8CB1007';
wwv_flow_api.g_varchar2_table(93) := 'BD7252EA7772FF0016C1E8BC7EBD6A8B3339CB124FBD00768D776ABD654FCC546750B31FF2D457316F68F739F2D9723B13FF00D6AB2DA5CC8A5DDD001C93CFF85006EFF68D97FCF41F91A3FB46CBFE7A0FC8D72BE5C5FF003D47E47FC29C2287FE7B2FE4';
wwv_flow_api.g_varchar2_table(94) := 'DFE1401D47F68D97FCF41F91A3FB46CBFE7A0FC8D73A9668FC2CF1FE78AB1FD9137F7D7F5A00DAFED1B2FF009E83F2356D1D2450F190C0F422B8CB9B76B693CB6209C678AE9B4C8CC76699EADF37E74017E8A28A0028A28A0028A28A0028A28A0028A28A';
wwv_flow_api.g_varchar2_table(95) := '0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A008E695208CCB21C015C95C5C4D7F30E3D957D2A6D4AECDCCDE5A1F910E07B9F5A9BCAFB05A190FF00AD9381ED9A00CD70B11D8BCB0EADFE1FE35621';
wwv_flow_api.g_varchar2_table(96) := 'D3EEEE06F0B807BB1C54FA55A89E532C83289FA9AEA2803966D22F17A6D6FA1FF1C552916E60063937203DB9C1AEDA8201EB40185A6586317338E7F841FE75BB451400514514005145140051451400514514005145140051451400514514005145140051';
wwv_flow_api.g_varchar2_table(97) := '4514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514535DD2352EE4281DCD003A8AC49F5945F96DD777B9E07E55932DFDDCDF79C81E838FE5401D7B4889F7D82FD4E2A037B68BD655F';
wwv_flow_api.g_varchar2_table(98) := 'C0E6B8CEA79357E2D3A6990488C983EE7FC2803A03A8D90FF9683F5A3FB46CBFE7A0FC8D73B7162F6C9BE471C9C00335478A00EC3FB46CBFE7A0FC8D28D42CCF4945720021EA71F85584B7493859901F7C8FE9401D62DD5B3FDD914FE22A7EBD2B926D32';
wwv_flow_api.g_varchar2_table(99) := 'E872A037D0FF008D43FE976673F347FCBFC2803B3A2B9EB7D61C10B72323FBC3AFE55BE8E922078CE54F422801D4514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145';
wwv_flow_api.g_varchar2_table(100) := '001451450055B8B3B7B9FF0058BCFA8E0D615CE933C59687F78BFAFE55D3D1401C2ABBC6DF2920D5E8AED5B89383EBDABA1B9B282E87CE30DFDE1D6B9CBAD3E7B5F9BEF27F787F5AA8CDAD899413DCBDD7914564453BC5D391E95A71CA928CAF5F4AE98D';
wwv_flow_api.g_varchar2_table(101) := '44CE795368928A28AB330A28A2800A28A2803FFFD6828A28AEE38429ACCA8BB98E050EEA8A59BA564CB2B4AD93D3B0A89CF94D210E61F35C34BC0E17D2A7B3D3E5BA3BBEEA7F78FF004AB961A66FC4D7230BD97D7EB5D10000C01802B95B6F5674A49688';
wwv_flow_api.g_varchar2_table(102) := '82DEDA1B64DB10C7A9EE6A7A28A430A6BBAC685DCE00E49A75739ABDD1793ECC87E55E5BDCD0056BDBF92EDBCB4C88FB0EE7EB50B40B02869FEF9E883FAD5FB5816D6037930CB632A3D3D3F3AA30432DFDCE09E4F2C7D0500411C52DC3ED89727D076AB7';
wwv_flow_api.g_varchar2_table(103) := '369D35BC26694A8E9C0E4F35D4430C76E82388600FD6B275A9311C717A927F2FFF005D0054D21332BC9E831F9FFF00AAAFEA6FB2D08FEF103FAFF4A8F494DB6E5FFBCDFCAA0D61FF00D5C7F5340152CAC0DE2B36FD81703A673FAD5D3A2376947E5FFD7A';
wwv_flow_api.g_varchar2_table(104) := 'BBA4A6CB30DFDF24FF004FE95A7401CBC9A45D20DCBB5FD875A6E9F752453081C92AC7183D8D7555C333B094B8E086CFE34013CC4DD5E10BFC6D81FCABB15508A157A01815CBE93179975BCF4419FC7A575340051455492FAD223879067DB9FE54016E8A';
wwv_flow_api.g_varchar2_table(105) := 'A29A95939C0900FA822AF0208C8E41A0028A28A0028AAF2DDDB40712B807D3A9FC8542BA95939C0900FA822802F5140208C8E41A2800A28A865B8820FF005AE17F9FE54013515406A7644E3CCFD0FF00855C8E58E65DD13061ED400FA28A2800A28A2800';
wwv_flow_api.g_varchar2_table(106) := 'A28A2800A2A196E2083FD6B85F6EFF0095105CC3720B42DBB1D68026A28A6492C710DD2B051EE6801F45503A9D9038F33F43FE153C5756F39C44E09F4E87F23401628A28A002B3F53B8F22D8853F33FCA3FAD68572DAB4DE65D6C1D2318FC7BD0026996F';
wwv_flow_api.g_varchar2_table(107) := 'E6CA6561F2A74FAD3B569374CB10E883F535AF670F916EA9DCF27EA6B9E7CDD5E903F8DF1F8671401D2E9D17936883BB7CC7F1ABB40000C0A2800A28A2800A28A6B3A4637390A3D49C5003A8AA4DA8D92F5907E193FCA91753B26E3CCC7D41A00BD45351';
wwv_flow_api.g_varchar2_table(108) := 'D245DC8430F51CD3A800A28A2800A2A39258A11BA560A3DEAA7F69D8E71E67E87FC2802FD14C8E48E55DF1B061EA29F40051451400514531A5890E1DD57EA71400FA2AB9BBB51D654FFBE852C7756F2B6C8E4527D334013D145140051451400514121464';
wwv_flow_api.g_varchar2_table(109) := '9C0AA6F7F669C3483F0E7F95005CA2A82EA764C71E663EA0D5E56575DC84107B8A005A28A2800A28A2800A28A090A324E0500145537BFB34E1A41F873FCA98BA9D931C7998FA834017E8A456575DC84107B8A5A0028A28A0028A28A0028A28A0086E278E';
wwv_flow_api.g_varchar2_table(110) := 'DA332C8781D07A9AE52E2E67BE940FFBE5476A75EDCB5E5C61795070A3FCFAD5995069F6C157FD6C9C13E83BE28033A44488ECCEE6EF8E83FC69F059DC5CFF00AA5E3D4F02AE69B622E5BCD97FD5AF6F535D38014614600A00E3AEAD1ED0AAC8C09619E2';
wwv_flow_api.g_varchar2_table(111) := 'B6B4C4DB6A0FF7893FD2B2F55937DE30FEE803FAD6FDBA7970227A28A00C8D5DFE78E3F404FE7FFEAA92D34A867B759646605BD31FE1543517DF76C076C0AEAE14F2E248FF00BAA07E54019274587F86461F5C55497469D066260FEDD0D74B450071D1CF';
wwv_flow_api.g_varchar2_table(112) := '7564FB395C7F0B74AE82DAE63BB8F23AF753562EAD63BA8F63F5EC7B835CB234B637383D54E08F51401AB77A6A3A97B71B5BD3B1AA16178D692EC7FB84E08F43EB5D22B0650CBC82322B0355802482651F7FAFD450074FD7914567E99379D68B9EA9F29F';
wwv_flow_api.g_varchar2_table(113) := 'C3A7E95A140051451400514514005155A4BCB588E1E4507D339FE550FF006A58E71E67E87FC2802FD151C534530DD13061ED52500145145001452332A8DCC4003B9AA6FA9592706407E809A00BB45558AF6D663B6390127B1E3F9D5AA0028A28A0028AA7';
wwv_flow_api.g_varchar2_table(114) := '26A16719C34833EDCFF2A7457D6B31DB1C8327B1E3F9D005AA28A2800A28AAB2DEDAC276C920CFA0E7F95005AA2A8AEA564E702403EA08ABAACAC3729041EE280168A28A0028A28A0028A28A0028F6351C93430FFAD70BF53551B53B25FF009699FA0340';
wwv_flow_api.g_varchar2_table(115) := '156F34A493325B7CADFDDEC7FC2B9F22485F6B02AC2BAD4D42CE4385907E3C7F3A5BAB386F13E6E1BB30A00C082E449F2BF0DFCEAD564DC5BCB6B279720C1EC7B1AB56F71BFE47EBD8FAD7453A9D19CF3A7D51728A28AD8C428A28A00FFFD78283C7268A';
wwv_flow_api.g_varchar2_table(116) := 'A77726D5F2C753D7E95DB29595CE38C6EEC559E632B71F7474AD6D334F0D8B99C71FC20FF3AA7A75A7DAA6CBFDC4E4FBFB5759D3815C6DDF53AD2B6814514521851451400C91C471B48DD1413F9571F6E86EAE86FE771CB7F335D1EA8FB2C9FF00DAC0FD';
wwv_flow_api.g_varchar2_table(117) := '6B9CB5B9FB2B3385DCC46067B5006AEACDB61441DCFF002A97468C2C0D2F766C7E02B16496E6F5C03963D801D2BA6D3E07B7B611C9C3649C7A66802ED72FAC3EEBAD9FDC503F3E6BA8AE36E09B8BD6C7F13E07F21401D159A7976D1AFB67F3E6B0B537DF';
wwv_flow_api.g_varchar2_table(118) := '7447F7401FD6BA50001815CA8FF49BDF677FD33401D65B27956F1C7E8A2A6A28A002A06B5B6762CF1A927A9C54F45003238A38862250A0FA0C543737515AA6E90F27A0EE69B797696916E3CB1FBA2B919659277324A724D005AB9BEB8BB6DBD14F451FE7';
wwv_flow_api.g_varchar2_table(119) := '9A743A74D30CEE55FC727F4AA51C724ADB2352C7D054B1192DEE40E8CAD823F98A00B92E9534685D183639C74352E9374C92FD998FCADD3D8D6ED7296B8FB6A11C00F9FC2803B0775452EE7007535CDDE6A924A4C76F954F5EE7FC2A3D42F8DD3F971FFA';
wwv_flow_api.g_varchar2_table(120) := 'B078F73EB50AF976803380F2F653D17EBEF400B0E9F7138DD8DA0F7353C9A54C8BB918363B74A85752BA57DC5811E9818AE951C488AEBD1803F9D006069B78D04A2190FC8C71F435D4571FA8204BB7DBC6707F3ABB7FA8178C5BC47A81BC8FE54012DEEA';
wwv_flow_api.g_varchar2_table(121) := 'B8262B53F56FF0ACC86D2E2E8EF1D0F566A6C69144A269C673F753D7DCFB548DA8DD13F2B0503A00062802CFF64498E1C67E95487DA2C27F461F9115D058DC9B987737DE0706A8EB0A36C6FDF245006EC32ACF12CABD1866A4ACBD1C936983D98E3F4AD4';
wwv_flow_api.g_varchar2_table(122) := 'A002AB4B796D071238CFA0E4FE959DACCCC91A46A71B89CE3DAB9CA00E825D694710267DDBFC0566C97F7939DBB88CF65E28B4166D204983124E01ED5D2470C510C46A17E9401C9C904D1A87954A827BF5ADBD123C2492FA903F2FFF005D55D5DF32247E';
wwv_flow_api.g_varchar2_table(123) := '833F9FFF00AAA3379E4592DB427E66C9623B67B7E5401A37BAA2C44C56F866EE7B0AC548AE6F5CB72C7B93D29F05BA6CFB45C9C463A0EEC7DA9EFA8CDF76002351D00140138D224C72E335527B29ED7E73C8F55ED5A3617F24B27933F24F435AD222CA8D';
wwv_flow_api.g_varchar2_table(124) := '1B74618A00A7A65EB5C298A53975EFEA2B5AB90B1630DF203FDEDA7F1E2BAFA004660AA58F40326B8D801B9BB1BBF89B27F99AE9EFDFCBB391BD463F3E2B0B494DD705FF00BABFCE8037667F2E177F4526B9FD2937DE29FEE827FA56AEA6FB2D08FEF103';
wwv_flow_api.g_varchar2_table(125) := 'FAD57D1139925FA0A00DFA28A2800A090A324E00A4660AA598E00E49AE56FAFDEE9BCB8F2231D07AFD6802F5DEAF8CA5AF3FED1FE9588EF2CC77CAC4E7B93533422D9034DCBB745F4F7345BDA4F78C76741D58F41400C486263869557F03FE1578E94ECB';
wwv_flow_api.g_varchar2_table(126) := 'BA291581E9FE79A7C9A34CA9BA370C476E955F4FB968261131F958E083D8D00420DD584BC650FE87FC6BA5B2BC5BB8F3D1C7DE144F025C46637FC0FA1AE6E091EC6EB2DFC270C3D45007635997DA82DA8F2E3F9A43F90FAD4D7D75F66B7F313966E17F1E';
wwv_flow_api.g_varchar2_table(127) := 'F5C8331662CC724F24D005958EE6F642DCB1EE4F41573FB225DB9DEB9F4AA09733C78F2DCA81D874AE9AD27FB440B21EBD0FD450073F6D34B637386E003861ED5D875E6B96D563DB70241FC63F515BD61279B691B1EA060FE1C5005BA28A2801090A0B1E';
wwv_flow_api.g_varchar2_table(128) := '82B8AFDE5D4E76F2CE49AEAB5093CAB391BB918FCF8AC2D2A3DD397FEE8FD4D0046DA6DCAA976DA00193CD47A7C664BC8C0EC73F9735B7A949E5DAB0EEDF2D54D162CBBCC7B0C0FC6803A1A28A2800ACBBCD4E3B7CC717CEFF00A0FAD56D4B512A4DBDB9';
wwv_flow_api.g_varchar2_table(129) := 'E7F8987F215970DB029F689CED8C7E67E9400D792EAF1BE625FDBB0FE829F1D96F38696307D3764D46CF25C308A25C2F645FF3CD4B369D73045E74806075E79140161F48940CA383EDD2AB5BDC4F61360E4007E65AD3D2A76911A1739D9D3E9516AF10C2';
wwv_flow_api.g_varchar2_table(130) := '4C3AFDD3401D023AC881D0E430C8A7565E90E5ED369FE16207F3AD4A0028A2B0B52D44A936F6E79FE261FC850059BCD4E3B7CC717CEFFA0FAD603C97578DF312FEDD87F414E86D814FB44E76C63F33F4A633C970C228970BD917FCF340124765BCE1A58C';
wwv_flow_api.g_varchar2_table(131) := '1F4DD93565F48940CA383EDD2ABCDA75CC1179D20181D79E45696953B488D0B9CECE9F4A00CCB7B89EC26C1C800FCCB5D723AC881D0E430C8AE7F578861261D7EE9ABDA4397B4DA7F85881FCE803528A28A0028A28A002A86A7379368D8EAFF28FC7AFE9';
wwv_flow_api.g_varchar2_table(132) := '57EB9FD6DFE68E3F404D0056D2E1DF2994F44E9F534CD51F75D6DFEE803FAD321BE7B787CA894649C926A3486E6F642CA0B13D5BB50075769188ADA341D947E67935629146D50BE83150DD49E55B48FE8A7F3A00E4FF00E3E6F33FDF7FD09AEB2B99D313';
wwv_flow_api.g_varchar2_table(133) := '7DD03FDD04FF004ADEBA7F2EDE47F453401CE423ED17CBFEDBE7F0CE6BB2AE5B484DD77BBFB8A4FF004AEA6800A28A2800AE775A88091261FC4083F85745591AD01F6653E8FF00D0D002E9B26FB5507F849149A9A6EB427FBA41FE9506907F72E3FDAFE9';
wwv_flow_api.g_varchar2_table(134) := '56EFFF00E3D24FA7F5A00A7A23FF00AD8FE86B7EB9CD17FD73FF00BBFD6BA3A0028A2B3EFEF96D136AF323741E9EF4012DD5EC368BF39CB1E8A3AD7373DEDD5DB6DC900F455FF3CD4714535E485D8FBB31ED4493227EEADB85EEDDDBFF00AD400AB68C7F';
wwv_flow_api.g_varchar2_table(135) := 'D63A47ECCDCD5B1A4BB2EE5914FF002A8534CBC74DFB40F404E0D3B4C9DA39C444FCAFC63DE802BBC77163283F74F623A1AEA6CEE45D4224E8C3861EF55750884B6AC4F55F987E159FA2B913BC7D8AE7F23FFD7A00E92B3AF3518ED7E45F9A4F4EC3EB50';
wwv_flow_api.g_varchar2_table(136) := 'EA5A8791FB887EF9EA7D3FFAF5CC9249C9E49A00B324B7178F9725BF403FA55B8F4A95C6E2EA07B735423826954BA292AA324F618ABDA53B0B8283EEB0391F4A008AE6C65B65DE4865E991DAB6B4ABA69E231C872C9DFD453EFF001F64933E9FD6B234B9';
wwv_flow_api.g_varchar2_table(137) := '920792690E1427E673401D15C5CC56D1F9929FA0EE6B97B9BDB8BC6D83853D147F9E69934B35F4F93D4F41D80A904E96BF2DB619FBB9FE9401245A5CEE32E427EA6A3B9D3E6B75F332194771DAAC59EA131996398EE5638E9D09ADD650EA55B90460D006';
wwv_flow_api.g_varchar2_table(138) := '7E9578D2836F29CB28C827B8AD69244890C921C28EF5C8D93795788D9C00793ED525F5E35E4BB533B01F947AFBD004979A94B704A45944FD4FD6A3874DB8946E6C20F7EBF95355E3B3E400F2FBF45FFEBD2AEA5761B716C8F4C0C5004EFA4CCA328C1BDB';
wwv_flow_api.g_varchar2_table(139) := 'A5456174F693F96E7084E181EC7D6BA18A412C6B22F4619AE735250B76D8EE01A00EBA8A8A025A08D8F52A33F954B40051454171711DB446593B741EA6801F2CD1C086494ED02B9DBAD5A6949583E45F5EE7FC2A9CB2DC5FCDCF24F403A0A49552DCF968';
wwv_flow_api.g_varchar2_table(140) := '7738FBCDD87B0FF1A0083058E5CE09EE7FCE6ACC56D14A76F9CA0FD0FF005C54B6DA64F72BE61C229E84F7FC296EB4C9AD90C808751D71D45003A4D2A7519421BDBA1A86DAF2E2C9F61CED07953FE78AD0D2EE5A406090E4A8C8FA54FA85A89E23228F9D';
wwv_flow_api.g_varchar2_table(141) := '47E63D2802E3A41A8DB83D41E41EE0D7293C125B4A637EA3A1F5F7AD2D22E4C73790C7E57E9F5AD7BFB41750FCBF7D795FF0A00C5B79BCD5C1FBC2AC56346E6270DE9D6B6410C011D0D755395D1CB5236614514568667FFFD082B1A67DF216AD7738463E';
wwv_flow_api.g_varchar2_table(142) := '80D6442BE64C887F8980FCCD6F59F430A2B7675B6100B7B555EE7E63F535728A2B0370A28A2800A28A2802ADEDB7DAE03103B4E722B3A0D19179B86DDEC381F9D6DD14011C71470AED89428F6A928A2802395FCB89E4FEE827F2AE4EC13CCBB4CF6C9FCA';
wwv_flow_api.g_varchar2_table(143) := 'BA0D524D966E3BB605656909991E4F4007E7FF00EAA00DC704A10BD70715C9FD9AE91B88DB23D01FE95D06A3218ED58A9C16C0AE7A1B79E705A152D8EB8A0093CBBEFEEC9FAD27977A3AAC9FAD3BC8BF4E8920FA6698F2DD8529233807A839A00884B367';
wwv_flow_api.g_varchar2_table(144) := '876FCCD7636A2516E9E7FDFC73591A5D81C8B99874FBA0FF003ADFA00E6B5A7CDC227A2E7F3354AD2CE5BB7C2F0A3AB574775A7437520918952060E3B8AB91C690A08E318514011416F0DA47B631803927B9AE56DF33DEA93FC4FB8FF3AE9EF9FCBB491B';
wwv_flow_api.g_varchar2_table(145) := 'FD9C7E7C5606949BAE0B7F757F9D006FCAFE5C4CFF00DD04D71BD2BA7D4A4D968C3FBC40AE6D36E773741DBD7DA80264FDC2890FDF6FBA3D07AFF8558B1B17BC7DEF9080F27D4D456D0497D3E0F4EAC7D0575D1C691208E31851D280394D49634B931C40';
wwv_flow_api.g_varchar2_table(146) := '28450303F3AE86DD76C11A9ECA3F9573529FB45EB63F8DF1F866BA96608A58F4033401CB5F36FBB908EC71F9715146AA079AFC81C01EA7FCF5A8C92EE58F739352857B89162887B28A0096DADA5BE98F3C7566F4AD1D4E182DADA38A250096CE7B9C0F5F';
wwv_flow_api.g_varchar2_table(147) := 'C6B62DADD2D611127E27D4D616B326EB858FFBABFA9A00B1A4AE2066F56FE550EB0DCC69F535A1609B2D507A8CFE7CD62EA6FBAE88FEE803FAFF005A00DBD2976D9A9FEF127FA5695436C9E55BC71FA28FCEA6A00CDBFB06BC2AC8C14AF1CF4AAC9A2C63';
wwv_flow_api.g_varchar2_table(148) := 'FD6C84FD063FC6B6E8A00E2EEE2486E5E28F3853819AEB074E6B9427CFBDCFF7E4FD09AEA9D822173D1467F2A00E5AF9FCCBB73E871F9714C823520CB2FF00AB5EBEE7D0543CBBE4F526A562D332C310E070A3D7DFF1A007E66BD98228E7A003A015D25A';
wwv_flow_api.g_varchar2_table(149) := '58436CA32033F763FD29D6566B691E3AB9FBC7FA55D240193DA8038D4F92F805E824C0FCEBABAE52D7325E21F56CFF005AEA59822963D00CD0072EBCEA031FF3D7FF0066AEC6B8FB1532DEC64FF7B77E5CD7614018FACBEDB758FF00BCD9FCAA1D213113';
wwv_flow_api.g_varchar2_table(150) := 'C9EA71F9543AD4999D23FEEAE7F3AD0B04D96883D467F3A00A3AC3F11C7F5357F484D9681BFBE49FE9FD2B1B547DD7457FBA00FEB5D2DAA7956F1A7A28FCE8027A28AA77F73F66B72E3EF1E17EB40191AADEEF6FB3467E55FBDEE7D3F0A2CAD9618CDE4F';
wwv_flow_api.g_varchar2_table(151) := 'D8640AA7616FF699B2FCAAF27DEB4356976C6B08FE2E4FD05006622C97F758EEE79F615D7451241188A31802B2746836C4D707AB703E82B6A800AE47528FCABC7DBC670DF9FF00F5EBAEAE6359FF008FA1FEE0FE668037227F322593FBC01FCEB075640B';
wwv_flow_api.g_varchar2_table(152) := '701C7F12F3F856CD9FFC7AC7FEE8AC9D5CFEF907FB3FD68023BC94BD9DB29FEE9FD38A8ECAC5EEDB27E541D4FF00415B56D690DC5942265CE06476EA6B491122411C630A3A0A00C8D4EDA38EC8089701187EBC541A3BFCB247E841FCEB53505DD6728F6C';
wwv_flow_api.g_varchar2_table(153) := 'FE5CD61E92D89D97D57F91A00B7ABA66147F46C7E752E8AF9B764FEEB7F314ED49775A31F420FEB557446F9A54F500FF003A00E828A29B23AC68647380A3268031B5A9711A423A9393F8526931ED81A4FEF1FD0564C8F25F5D67BB9C01E82BA686258635';
wwv_flow_api.g_varchar2_table(154) := '8D7A28A00C7D5E4CBA443B0C9FC6B4F4B8BCBB353DDC96AE7EF58CD78C17D768FC38AEBE3411A2C63A2803F2A0075666A579F668FCB8CFEF1FA7B0F5AD17758D0BB701464D71CED25F5D67BB9FC85004D63686E1F7BFDC5EBEE69B7B3FDA26F2E3FB8BC2';
wwv_flow_api.g_varchar2_table(155) := '81DEB5AE8AD9D97971F19F947E3D4D52D22DC49319DBA274FAD006BD8592DAC796E646EA7FA52EA4C16CA4CF7C0FD6AF121464F00572DA95F0B961145F714F5F53400FD201F35CFA2D4DABB8DA91F7C9352D8A2DA5A99A6F977727E9DAB225792FAE7E51';
wwv_flow_api.g_varchar2_table(156) := 'CB1C01E82803774742B69B8FF1313FD2B56A386258625897A28C539DD6342EDC051934019DA95E7D9A3F2E33FBC7E9EC3D6B16C6D0DC3EF7FB8BD7DCD42ED25F5D67BB9FC856D5D15B3B2F2E3E33F28FC7A9A00C9BD9FED137971FDC5E140EF5D058592D';
wwv_flow_api.g_varchar2_table(157) := 'AC796E646EA7FA5646916E2498CEDD13A7D6BA62428C9E00A00A3A9305B2933DF03F5AC7D201F35CFA2D3352BE172C228BEE29EBEA6AF58A2DA5A99A6F977727E9DA8022D5DC6D48FBE49AB7A3A15B4DC7F8989FE95852BC97D73F28E58E00F415D74312';
wwv_flow_api.g_varchar2_table(158) := 'C312C4BD14628024A28A2800A28A2800ACBBFD3DAEDD644600818E6B528A00CBB7D26DE2E65FDE37BF4FCAB4C00A30A3007A52D1400565EAF26CB4DBFDF603FAD6A573FADBFCD1C5E809FCE801BA427FAC93E82ACEAAFB6DB6FF007980FEB4ED31365A83';
wwv_flow_api.g_varchar2_table(159) := 'FDE24FF4AA5ABBFCF1C7E809FCE8027D113E5924F5207E55BB59FA5A6CB353FDE24D6850014514500158DAD362DD17D5B3F90AD9AE775A93324717F7413F9FFF00AA8025D207EE5CFAB7F4AB1A8B6DB37F7C0FD6934D4D968BFED64D57D5E4C4491FA9CF';
wwv_flow_api.g_varchar2_table(160) := 'E5400CD117E795BD001F9D743591A347B6DDA43FC4DFA0AD7A0082E6E12DA132BF6E83D4D7268B35F5C1C9CB3724FA0AB3AA5CF9F71E5AFDD8F8FC7BD695A42B676C647FBD8DCDFE140146FA448231650F03AB558D2AC4605D4A33FDD1FD6B32DE36BDBB';
wwv_flow_api.g_varchar2_table(161) := '01BF88E5BE95D880140038028002401935C6DAFCD78847F7B35B1A9DFAA21B688E58F0C7D07A553D2A025CDC3741C0FAD0069DFB84B4727B8C7E759DA2A133BBF60B8FCCFF00F5AA0D46EC4EE238CFC8BDFD4D6DE9B6C6DEDC6E1867E4FF0041401CDDEB';
wwv_flow_api.g_varchar2_table(162) := 'EFBA95BFDA23F2E2AED8E9AD718966F963EDEA6B57FB2ADCCE6639209CEDED9AD2A00CFBED96F62EA8368C6D007BD646909999DFD171F9FF00FAAAEEB4F88523FEF367F2FF00F5D33494C42CFF00DE6FE54012EA8FB6D76FF7881FD6B9B193F28EFDAB63';
wwv_flow_api.g_varchar2_table(163) := '5793E648BD013F9D65A3796378FBC781EDEF400F7610A9853A9FBE7FA0AD5D3F4D0C05C5C8E3AAA9FE66A0D32CBCF7F3E51F229E07A9ADFBB7F2ADA47F453F9D0072B0E25BD52A382F9FC339AEA1DB62339FE104FE55CEE989BAE81FEE827FA56BEA3279';
wwv_flow_api.g_varchar2_table(164) := '768FEADC7E7401CBD4E3F72BBBF8D871EC3FC4D449B41DCDC81DBD6AE59DB3DECFF37DD1CB1A009F4FD3CDC1F3A6E231DBD7FF00AD4CD5446B72238C0508A06071EF5D52AAA28551803802B8EB826E2F5B1CEE7C0FE42803A3B45DB6D1A9FEE8AE7B506D';
wwv_flow_api.g_varchar2_table(165) := 'F78F8ED81FA575030A3D8572D00FB45F293FC4F93F4CE6803AF8D7646A9E800A75145002330552CC7000C935C8DDDCBDECFF002E76E70A2B5358B9DAA2D94F2DCB7D2A0D2EDB8FB4B8F65FF1A007322E9D6848FF005AFC67FCFA554D36D3ED329793EE27';
wwv_flow_api.g_varchar2_table(166) := '5F73E949A9CDE65C6C1D1063F1EF5D15941F67B658FBF53F534016BA7029AEA1D0A3746183F8D3A8A00E36D18C378A0F66DA7F1E2BABAE51FF00E3FCFF00D753FCEBABA00E51FF00717A76FF0003E47E75D9571D71F35F301DDF15D8D00729AA4021B92C';
wwv_flow_api.g_varchar2_table(167) := 'BD24F9BF1EF4B68FBA3DBFDDAD0D69018637F46C7E63FF00AD591647E761ED5A5376919D45789A345145751CA7FFD1AD20CC6C3D8D655B90B711B1ECE0FEB5AF58AEA51CAFA1ADEB2EA6145EE8EEA8A82DA613C0928EE39FAF7A9EB0370A28A2800A28A2';
wwv_flow_api.g_varchar2_table(168) := '800A28A2800A28A28030B5B93E58E2F524FE54FD2936DB97FEF31FD38AA1ABC9BEEF6FF7001FD7FAD6D5AA7976C8A7B2F3F8D0066EAF27CA917B93577488F65A6E3FC6C4FF004AC2BA90DDDD1D9CE4ED5AEB618C4312C4BD14628024A28A2800A28A2800';
wwv_flow_api.g_varchar2_table(169) := 'A28A280323597DB6CA9FDE6FD0557D21311BC9EA40FCBFFD751EB4F99923FEEAE7F3FF00F555ED39365A27BF3F9D0049796EB7316D66DB839CD72DB3749E5C7F364E07BD6E6A973B105BA1E5B93F4A348B4FF97A71ECBFD4D0069D9DAADA42107DE3CB1F';
wwv_flow_api.g_varchar2_table(170) := '5353CCFE5C2F27F7549FCAA4ACFD51F659B0FEF1028039FD3937DDAFB64D750CA194AB742306B0B484CC8F27A003F3AD5BBB816D0993BF41F5A00E72EE28A098C711271D73EB5B9A55A7951FDA1C7CCE38F61FFD7AC9B0B63777197E55796F7F6FC6BADA';
wwv_flow_api.g_varchar2_table(171) := '002B8FBE6335EC98FEF6D1F8715D7BB0452E7A019FCAB8EB45335DA67BB6E3F873401D4A28450A3A018AE5BFE3E6F71D9DFF004CD74D3BF970BBFA2935CFE949BEF14FF7413FD3FAD007594514500150DC3F9503C9E8A4FE353566EACFB2CC8FEF103FAF';
wwv_flow_api.g_varchar2_table(172) := 'F4A00C3D3537DDA9FEE826BA474122346DD1811F9D62E909F34927D05695E5C7D9A02C3EF1E17EB401CDDC44B04A6256DD8EA7A56F69567E527DA241F330E3D87FF5EB2F4EB5FB54FB9F945E5BDCFA5759400554BE97CAB491BB9181F8F156EB035A9F25';
wwv_flow_api.g_varchar2_table(173) := '2DC76F98FF004A00A9A547BAE37FF747F3AD3D4A6F2ADCA0EAFC7E1DEA3D2E2F2EDCCADC6F39FC05655DCCD7771F2723EEA8FF003EB4017F45872EF39E806D1F53D6BA1AAF6B00B681621D475FAD4ECC154B1E806680390BF732DEC98F5DBF9715D32284';
wwv_flow_api.g_varchar2_table(174) := '4541D8015CBDB0335E213DDB71FE75D34CFE5C2EFF00DD526803993FE937B8ECEF8FC335D95727A526FBC53FDD04D7594005733AC4DBEE0443A20FD4D74D5C6CDFBEBE61FDE931FAE28037AC21F26D973D5B93F8D62EA4FBEED87F74015D301818AE566F';
wwv_flow_api.g_varchar2_table(175) := '9EF981EF263F5A00EB6DE3F2A048FF00BAA054B4514005729AB36EBC23FBA00FEB5D59200C9AE3189BBBC247FCB46FD3FF00D5401D2DB2EDB78D7D147F2AE7F517F36ED80E76E16BA0B8996DE1690F61C7D7B573FA7C46E2ED4B7214EE6FF3F5A00EAA14';
wwv_flow_api.g_varchar2_table(176) := 'F2A248FF00BAA07E552514500473AEF85D3D548FCC5729A6B6DBB51EB91FA575F5C641FBABD51E8F8FD71401D25DAEEB6907FB27F4AC7D1DB17457FBCA6B7986E52BEA315CCE9CDB2F63CFA91F98A00EBEB9FD5EEB27ECA8781CB7F415AD7972B6B0190F';
wwv_flow_api.g_varchar2_table(177) := '5E8A3D4D71E4B39323F27A9CF726803734BB6D89E7B8E5BA7D2B524711A339FE104FE558DA65C4F24AD1BB6542E7E9577529365AB0EEC40A00C6D3D0CD7A99E70771FC39AEBEB9FD163CB4929EC028FC6BA0A00C9D626D96E221D643FA0AA7A4C3F7A73F';
wwv_flow_api.g_varchar2_table(178) := '41FD699ACBE6E153B05FE66B4EC5365AC63D467F3E68032F577CC891FA0CFE7FFEAA6DB6A4B6B6E2248F2D9249278CD2EAC63F39460EF0393DB15981907F0E7EA7FC31401666BBBABC6D8C4907A2AF4A9628A1B53E65D1CB0E8839FCEAA89A66FDDC5C67';
wwv_flow_api.g_varchar2_table(179) := 'B28C67F2E4D5D8349B997993F76BEFD7F2A00AF34F3DEC8140CFF75456FD8580B55DEFCC87AFB7B558B6B386D57118E4F527A9AB5400564EB136CB7110EB21FD056B5735ACBE6E153B05FE66801FA4C3F7A73F41FD6A3D5DF32247E833F9FF00FAAB52C5';
wwv_flow_api.g_varchar2_table(180) := '365AC63D467F3E6B2B5631F9CA307781C9ED8A004B6D496D6DC4491E5B24924F19AAD35DDD5E36C62483D157A5560C83F873F53FE18A904D337EEE2E33D94633F9726802D451436A7CCBA3961D1073F9D4534F3DEC8140CFF7545588349B997993F76BEF';
wwv_flow_api.g_varchar2_table(181) := 'D7F2ADFB6B386D57118E4F527A9A00AF61602D577BF321EBEDED5A5451400514514005145140051451400514514005725AA49BEF18765C0AEB6B8C4FF48BC07FBEF9FC33401D3C09E5C289E800AE735093CCBB6039DB85FCABA29E51042D29EC3F5AE7B4';
wwv_flow_api.g_varchar2_table(182) := 'F88DCDE296E403B9BF0FFEBD007550A7950A47FDD503F2A928A2800A28A2800AE36E6437776CCBFC4D85FA7415D06A973E45B9453F349C0FA77AC9D2E0DF2999BA2F03EB401BC8811022F40315CD6A12F9F7442F217E515B77D742DA2E0FCEDC0FF1ACAD';
wwv_flow_api.g_varchar2_table(183) := '2ED8CD3F9ADF763E7F1ED401D1DB45E440917F7473F5EF49752F916EF2F7038FAF6A9EB27597DB6A147F130A00C6B08BCEB905B90BF31AD7D4DF65A951FC440FEB55F484F91E4F5207E553EA86316E0480924F18F5A00C9B1BB4B367729B988C0E714F9F';
wwv_flow_api.g_varchar2_table(184) := '53B99FE553B14F65EBF9D500507519FC6A459DD3FD5009EE073F99C9A009E2B503125D1F2D3D0F53F414EB8BD322F9100D918E31DCD10D85DDC9DC4100FF00137F9CD6EDAE9B0DB10EDF3BFA9E83E828028E9DA69C8B8B818C72AA7F99ADFA28A0028A28';
wwv_flow_api.g_varchar2_table(185) := 'A00E67597DD72A83F857F535A9629B2D631EA33F9F358178C66BD7C776DA3F0E2BA85015428E8050065EA76D1B2FDA59B69518C75CFA5645ADB35D4C225E9D49F4156752B9F3A6F297EEA71F535B9A75AFD9A0F987CEFC9FF0A00BA88B1208D061546056';
wwv_flow_api.g_varchar2_table(186) := '6EAEFB6D36FF007980FEBFD2B52B9FD6DF98E3F626801BA427FAC93E82B52E618E788A48703AE7D315574C4DB6A0FF007893FD2A2D52E36462053CB75FA50061940F2EC87272703D4D761696CB6B088C75EAC7D4D64E916BD6E9C7B2FF00535BF400C95F';
wwv_flow_api.g_varchar2_table(187) := 'CB89A4FEE827F2AE4AC13CCBB4CF6E7F2AE83547D966FEAD81593A42664793D063F3FF00F55006BDD3F976D237FB27F5AC6D21375DEEFEE293FD2AF6AAFB6DB6FF007980FEB4DD1130924BEA40FCBFFD7401B9451505D36CB691BD14FF002A00E52666BC';
wwv_flow_api.g_varchar2_table(188) := 'BB247F1B607D3B5750AAB1461470147F2AE734C4DD740FF7413FD2BA19CE2090FA29FE5401CD5B2FDA6F5777F1364FF3AEC6B95D2466F01F406BAAA0028A2AADECBE4DAC8FDF181F53C50072D17EF6F54FF79F3FAE6BAB660AA59BA019AE6F4B8F7DCEFE';
wwv_flow_api.g_varchar2_table(189) := 'C809FE95A5A9CFE5C3E50FBCFF00CA80326D01B8BE427BB6E3F8735D856068B072F707FDD1FD6B7E8031F5A23ECE8BEAF9FC81AC6B3FF584FB55CD6260F3AC43F8073F535059AE14BFAD5D35EF1151DA25CA28A2BACE43FFD282B3EF23C1120EFC1AD0A4';
wwv_flow_api.g_varchar2_table(190) := '650EA55BA1AEC9C6EAC71C256771BA45D04736CE786E57EBFF00D7AE8EB86911A27C1EA3A1AE9B4FBE1729E5C87F78BFA8F5AE468EC34E8A28A40145145001451505C5C476D11964EDD07A9A009E9AEEB1A191CE028C9AE65B58BA24ED0AA3E95565BBBA';
wwv_flow_api.g_varchar2_table(191) := 'BAF91D8B0F41FF00D6A00440D7777CFF001B64FD2B5750BD54436F11CB1E09F41586923C79287048C67BD1198F78328257B81D68036348B52CE6E5C70BC2FD6BA2AC34D62DD1422C6C00E0018A906B56DDD5FF0021FE3401B14564FF006CDAFA3FE43FC6';
wwv_flow_api.g_varchar2_table(192) := 'A2935A8C7FAA8C9FAF1FE3401B75025D5BC927948E0B7A572D717F7373C33617D07029DA626FBD4F6C9FD2803AEA28A46608A58F4032680391D45FCDBD7C763B7F2E2BA58D3646A83F8401F9572F6C0CF78A5BBB6E3FCEBA795FCB89A4FEE82680398973';
wwv_flow_api.g_varchar2_table(193) := '737A47F79F03E99C576088B1A044180A302B94D2D3CCBC527F8726BADA002B0F5B7C2471FA927F2FFF005D6E572FAC3EEBA0BFDD503F3E6802EE949B6DCB7F798FE9553577CCA91FA0CFE75AD669E5DB46BED9FCF9AE7AF58CB78E07AED1F871401D1699';
wwv_flow_api.g_varchar2_table(194) := '088AD14E397F98FE3D3F4ABF4D45088A83A2803F2A750053D41FCBB390FA8C7E7C561E929BA767FEEAFF003AD1D65B16CABEADFC81AAFA42E2277F56C7E5FF00EBA00B1A9BECB423FBC40FEB55F444E6493E8293586F9634F524FE54DB1BD82CED086F99';
wwv_flow_api.g_varchar2_table(195) := 'CB13B45006F4B3470219253802B98B8D4EE2593744C5147403FAD55B9BA96E9F7C87A741D8532085A7956241924FE9401DAC459A2567EA4027EB589ADBFF00AB8BEA4FF4ADEE95CAEACFBEF0AFF7401FD7FAD0068E969B6D777F7893FD2A86ACF99963FE';
wwv_flow_api.g_varchar2_table(196) := 'EAFF003ADAB64F2EDD13D1457357AFE65D487D0E3F2E2803A5D3A2115A26072C371FC6AF56745A8D96C0A1F6E063041A95B50B35193203F4E6802CC922C48647380A326B8F3BEF6EB27AB9FC87FF0058558BEBF6BB3E5A02231DBB9FAD431CA2D50ECE65';
wwv_flow_api.g_varchar2_table(197) := '618CFF00747F8D005ED42E9513EC90F4030DF4F4A9749B3FF97A907FBA3FAD53D3EC5AE9FCC93FD583C9F53E95D50000C0E00A002AA5FBF9767237B63F3E2ADD656B0716807AB01FCE8032F4A4DD705FFBABFCEB4B527D968C3FBC40AADA3AFC9237A902';
wwv_flow_api.g_varchar2_table(198) := '8D61BE48D3D493F95001A227CD24BE800AD7B9BA8AD63DF275EC3B9AC3B4BE8ACED081F348CC4E3D3EB5992CD24EE6494E49A00B371A8DCCED9DC50760BC5416C7373193DDC7F3A8E38DE5711C632C7A0AB1750B59DC6C1DB041A00EAEB949BE4BE627B4';
wwv_flow_api.g_varchar2_table(199) := '99FD6BA78A459A35917A30AC0D522D971E67671FA8A00EAA8AA5637297102F3F3A8C30EF525C5D436ABBA43CF61DCD0055D52E7C9B731A9F9A4E3F0EF597A543BA4339E8BC0FA9AA724935FDC67A96E00EC055AB8B948611676C7207DE61DFD68019A85D';
wwv_flow_api.g_varchar2_table(200) := '7DA24F2D3EE2F4F73EB5B9A6DAFD9A0CB8F9DF93EDE82B374BB1DE45CCC3E51F747AFBD74540051451400571D760C77B21F47CFF005AEC6B96D5E3D977BFFBEA0FE5C500744391915CA499B6BD27FB8F9FC339AE8AD24F36D91FDB1F88E2AB5E69E2E5C4';
wwv_flow_api.g_varchar2_table(201) := '8ADB5BA1F7A00C8BBB992FA7E01C7455AACF81F229C81DFD4D5DB848EC94C319DD230F99BD07A0FAD675006FE911E23797FBC71F9543ABC9F3245E80935A7651F956A8BDF193F8F35817CE65BC6039C1DA3F0A00DFD2A3F2ECD4F7725BFA568D322411C6';
wwv_flow_api.g_varchar2_table(202) := 'B18FE1007E54FA00E5756FF8FC3FEE8ADCB6FF008F78FF00DD1FCAB2F5A88891261D08DBF955BD36612DB05EE9C1FE940199AAA91720FAA8AD6B3B3B392DE393CB049519CF3CF7AAFAAC25E212AF54EBF435069BA8470279139C2E720FA7B50074091C71';
wwv_flow_api.g_varchar2_table(203) := '8C46A147B0C53EA91D4AC872641F91FF000AA336B518E2042C7D5B81401B648519270077AC6BAD5E38FE4B701CFA9E9FFD7AC49EEE7B93FBD6C8F41C0AAD401D8585D35DC3E630C107071D2B0B57FF008FC3FEE8ADAD32331D9AEE182C49ACDD6A222449';
wwv_flow_api.g_varchar2_table(204) := '874236FE5401A96DFF001EF1FF00BA3F9561EAAA45C83EAA2B4F4D984B6C17BA707FA545AAC25E212AF54EBF4340162CECECE4B78E4F2C1254673CF3DEB45238E3188D428F618AE7F4DD423813C89CE173907D3DAB58EA56439320FC8FF85005DA090A32';
wwv_flow_api.g_varchar2_table(205) := '4E00EF58936B518E2042C7D5B8158D3DDCF727F7AD91E8381401B775ABC71FC96E039F53D3FF00AF572C2E9AEE1F3186083838E95C7D75BA64663B35DC305893401A14514500145145001451450014550BEBE5B450146E73D07F5358C758BB3FDD1F87FF';
wwv_flow_api.g_varchar2_table(206) := '005E8036B51B8105AB7F79FE51F8D61E971EE9CCA7A20FD4D529AE26B86DF336E3FA0A4F39C45E4A9C2F538EFF005A00BDA8DE09D84519F917BFA9AD7D2ED4C106F71867E7E83B564E9F15A6E12DC48B91D14F1F9D7482780F4914FE228025A299E6478C';
wwv_flow_api.g_varchar2_table(207) := 'EE1F9D30DCDBAF59147E228026A8E595208CC921C015466D56D231F29DE7D07F8D605C5D4F7B2007A7651400934B2DF5CE40E5B803D056E97874FB70A7923A0EE4D65452C362A4AE2498FE42ABA4773A84DFDE3DC9E80500004FA85C63AB1FC80AEB2DE0';
wwv_flow_api.g_varchar2_table(208) := '4B688449D075F7351DADA47691EC4E49EA7D6AD5001589ADFF00AA8FFDE35B759BAB4464B42C3AA10DFD2802B693FF001ECDFEF1FE429BABA9302B7A37F4AAFA4CC033407F8B91FD6B5AEA1F3E068FB91C7D4500676956F6D3C4C6540CCADFA56DC70411';
wwv_flow_api.g_varchar2_table(209) := '7FAB455FA0AE5AC6EFEC7312E0ED3C30AE87FB46CB19F307E47FC2802ED15932EB16C9C460B9FC87EB58F71A95CDC6573B17D17FC68037AEB5282DB2A0EF7F41FD4D43A7EA125DCAD148A06064115CC56F68B19CC9291C60007F9D006FD35D8468CE7A28';
wwv_flow_api.g_varchar2_table(210) := '27F2A7550D4E4F2ECDFD5BE5FCFF00FAD401CE592996ED33EBB8FE1CD74B70FE540EE3A8538FAD62E929995E4FEE8C7E757B547DB6BB7FBC40FEB40199A64226BB1BB908377E55D6560E891F124BF402B7A800AE53557DF78C3FBA00FEBFD6BABAE31BFD';
wwv_flow_api.g_varchar2_table(211) := '22F4FA3BFE84D0074D6E9E5C089E8A2B9BB9267BC603BB6D1FCABA77611C6CE7F8413F95735A72196F533D8EE3F850075B1A2C48234E028C0A751450061EB6F848E2F524FE5FFEBA5D2936DB97FEF37F2AA7ACB66E957D147F335AD64BB2D631FECE7F3E';
wwv_flow_api.g_varchar2_table(212) := '680333577CBC71FA027F3FFF00556A6969B2CD3D5B26B07536DD76C3D001FA56949A9C56F6EB0DBFCCC140CF61C50068DDDE4768996E58F45AE624BDBA98B6E72430E476C7D2ABC923CAE5E43963DCD5ED3AD9AE25638F942904FB918A007E93FF001F0D';
wwv_flow_api.g_varchar2_table(213) := 'FEE9FE62B72E0660900EEA7F957376927D9AE86FE39DAD5D575A00E6F49205E007B822BABAE37E6B2BCCFF0071BF31FF00EAAEBE3912641246720D003EB9DD62E7738B653C2F2DF5AD0BDD463B6529190D27A7A7D6B9EB788DC486494E1072EC7FCF7A00';
wwv_flow_api.g_varchar2_table(214) := 'D7B055B5B533CBC6EE7F0ED590ED2DF5CF03963803D054979766E584718C20E83D6B734EB1FB3279920FDE37E83D2802F410AC112C49D14536E674B685A57EDD07A9A95DD6352EE7007526B92BEBC6BB938E117EE8FEB40154979A42C79663FCEB5D1422';
wwv_flow_api.g_varchar2_table(215) := '051DAAA5AC381E63753D2AED74D28D95CE6AB2BBB0514515A991FFD3828A28AEE3848A6844AB8EE3A1ACBFDE4326465596B66A29A159473C1EC6B2A94EFAA35A752DA334AC7514B902393E593F43F4AD3AE19D1E26C1E08ADAB2D57188AEBF06FF001AE6';
wwv_flow_api.g_varchar2_table(216) := '3A4DFA29010C0329C83D08A5A00649224486490E1475AE46EEE9EF25DC7851C28F4AE9AFAD9AEA0F294E0E4119E9584747BB1DD4FE3FFD6A00B76B6F671C6048C8EC7AE4835A09E428C47B40F6C5611D26F07607F1A61D2EF87F067F11FE3401AC74EB37';
wwv_flow_api.g_varchar2_table(217) := '24818CFA1A69D2AD7FDAFCEB20E9D7A3FE599FCC7F8D27D8EF97FE59B7E1401AC749B6FEF3FE63FC29A74887B3B7E9597E4DFAFF000C9F91A337EBFF003D47E7401A5FD911FF007CFE551C967636C374CE49FEEE7935477DFB7CB990FE752C3A6DDCE72C';
wwv_flow_api.g_varchar2_table(218) := 'BB01EEDFE1D6802B49279ADE5C29B57B01C93F5F5AE834DB036C3CE97EFB0C63D0558B5B186D4657E67FEF1FE9576800AA5A8C9E5D9C87B918FCF8ABB54351B792E6DF645D43038F5A00C3D2F62CCD2390001DCFAD68EA17311B66447525B0300E6B3469';
wwv_flow_api.g_varchar2_table(219) := '57A7AA81F88A78D1EECFF747E340167448FE6925F4007E75D0553B1B53690F96C72C4E4E2AE50015C6DD379D78E73D5B19FA715D9572AFA55E6F2028619EB91401B66E2DD17FD62F03D4573D64A67BD4CF76DC7F0E6A61A45E1ECA3F1AD2D3F4E92DA432';
wwv_flow_api.g_varchar2_table(220) := 'CA4138C002803628A28A00C7D650B5BAB8FE16E7F1AAFA4CC9B1A1270D9C8F7ADD9234950C6E32AC306B999F4AB98DBF7437AF623AD006A5F5A8B98C608565E84F4AE7248C4671BD58FF00B3CD581637CFC796DF8FFF005EAF41A348D86B86DA3D072680';
wwv_flow_api.g_varchar2_table(221) := '32A0B796E5F64433EA7B0FAD75767671DA2617963D5AAC450C702797128515250015C639FB45E9F477FD335D75C3F9503C9FDD526B95D3537DDA9FEEE4D007515973DB58DCB160E158F5208FE5562FE4F2AD5CF73F28FC6B9D82D67B9CF92B9DBD79C500';
wwv_flow_api.g_varchar2_table(222) := '5C7D336F2B2A63DF8AA8F6EB1FDE950FFBB93538D2EF49C6CC7E23FC6ACC7A34EC7F7AEAA3DB934018FDFE5AD8B3D29E5C4973955F4EE7FC2B5ADB4FB7B63B946E6F5357A801155514220C01D00A5A28A002B2B5842D69B87F0B027F956AD35D164428E3';
wwv_flow_api.g_varchar2_table(223) := '208C1A00E7B499906E858E09391EF57AFAD45CC63042B2F427A5665C693711B1308DEBDBD6ABFD86F9F8F2DBF1A008248962382E18FF00B3CFEB44304B72FE5C4327F415AB068D2361AE1B68F41C9ADD8618A04D9128514015ECEC63B45CFDE73D5BFC2A';
wwv_flow_api.g_varchar2_table(224) := '0D52D0DC45E64632E9FA8AD4A280393B1BDFB31F2E4E50FE86B6A58E0BE876AB03DC11D8D4779A5C73932427639EBE86B19B4EBD8CF084FBA9CD001269F7511E172077155190A9F9C81F8E6AD0B1BE7FF966DF8FFF005EAD45A3DC3F329083F334019A24';
wwv_flow_api.g_varchar2_table(225) := '217CB8F807AFA9AD7B2D2998896E860765EE7EB5A96D616F6BF328DCDFDE3D6AED000000303814514500145145001591AC4264804A3AA1E7E86B5E9080C0AB0C83401CD69B791C2A6198E06720D5ABAD4A3452B01DCC7BF614D9F46258B5BB000F66EDF8';
wwv_flow_api.g_varchar2_table(226) := 'D361D15B766E1C63D17FC68028D9DA497B2EE7CEC072CDEBED50B013DDED418566C0FA74FE55D4DC14B5B37F2C6D0AB818F53C573DA647BEE437F7413FD2803A27611A173D1467F2AE6AC50CF7A9BBD771FC39AD7D4E5F2ED8A0EAE71F877AAFA2C3CBCE';
wwv_flow_api.g_varchar2_table(227) := '7B7CA3F99A00E828A28A00AF756EB7303447A9E87D0D72B0CB2D8DC1C8E470C3D6BB2AA577630DD8CB7CAC3A30A006437305CAFC841CF553D7F2AA13E928CDBA16DBEC7A553974ABB8CFCA038F507FC6A2FB1DF1F97CB6A007BD808BFD74C8BFA9FCAAAB';
wwv_flow_api.g_varchar2_table(228) := '7909C265CFA9E07E5D6AE47A4DE39F98041EE7FC2B520D1E18FE698973E9D050060C36F3DCB6225CFBF402BA0B4D2E2830F2FCEFFA0AD4555450A80003B0A5A002ABDD5BADCC0D11EA7A1F435628A00E361965B1B8391C8E187AD7450DCC172BF21073D5';
wwv_flow_api.g_varchar2_table(229) := '4F5FCA9F77630DD8CB7CAC3A30AC1974ABB8CFCA038F507FC6802E4FA4A336E85B6FB1E9545EC045FEBA645FD4FE54CFB1DF1F97CB6A963D26F1CFCC020F73FE14014DBC84E132E7D4F03F2EB4E86DE7B96C44B9F7E8056F41A3C31FCD312E7D3A0AD655';
wwv_flow_api.g_varchar2_table(230) := '5450A80003B0A00CBB4D2E2830F2FCEFFA0AD5A28A0028A28A0028A28A002AADDDD25A45BDB963F747A9AB5595A8D84976CAF1B0040C60D0073E0BDDCF995802C7924E00ADF8E0B0550A36363B9C13598747BB1FDD3F8D34E957A3F841FC45006CCB6F6D';
wwv_flow_api.g_varchar2_table(231) := '3C7E570067236E38AA0DA3AFF0487F11548E997C3FE59FEA3FC699F60BD5FF00966DF8500596D2671F7594FE62A13A6DD8E8A0FE2299F65BEE9B1FF5A5FB0DF37FCB36FC68018D67709F7801F561FE35098F6F565FC0E7F955C5D2EF58FDCC7D48AB29A2';
wwv_flow_api.g_varchar2_table(232) := 'CC7FD63AAFD39FF0A00C6A7A091CEC8C124F615D245A3DB273212FFA0FD2B4E38A3886D89428F61401CFDB690EF86B93B47F7475ADF8A28E1409128503D2A4A2800A28A2800A46018156E41E0D2D1401C7DCC1258DC7CBD33953ED5B56DA8433801C847F';
wwv_flow_api.g_varchar2_table(233) := '43FD2B427822B84F2E5191FA8AC09F479D093010E3D3A1A00BB73A7C5707CC53B18F7EC6B35F4C68F9925451EE6A0FB1DF2F0236FC29E9A65EB9E531EE48A0085D2DA3E03990FB0C0FCCD44AAF2B6C8D724F615B90E8A0733BE7D97FC6B6228228176C4A';
wwv_flow_api.g_varchar2_table(234) := '14500635AE91D1EE8FFC047F535BAAAA8A1540007402968A002B0F5B93091C5EA493F856E562EA76571712AC9080C02E319C50045A634514059D94163DCD41AACE921448D8301927073510D26F0F5503F1A91747BA27E62A07D7FF00AD401ADA547B2CD4';
wwv_flow_api.g_varchar2_table(235) := 'FF0078935A34C8A31146B10E8A00FCA9F40115C3F9703C9FDD526B94D3F6FDA959C8017279AEA2EE169ED9E24382C38AE6C6957A7F800FC45006A5F5CC5F66754752C78C03557458F32C927A003F3FFF005540347BB3FDD1F8D6DD85A1B488AB10598E4E';
wwv_flow_api.g_varchar2_table(236) := '2802F51451401CC6B0856E83F6651FA56A58CC92DBA6D3CA8008FA559BCB44BB8B63704720FA5736FA6DEC4DC267DD4D005ED42CBCC7F3D59573D771C5623285380437B8E957174FBD90FDC3F52715A96DA3A210D72771FEE8E94019767612DDB67EEA0E';
wwv_flow_api.g_varchar2_table(237) := 'ADFE15D5C30C70462388600A780140551803B0A5A00E7356B428FF006941F2B7DEF63FFD7A758EA0BB44370704701BFC6BA0655752AC320F5158373A39C97B53C7F74FF434013DE592DD812C446EC75EC45623DA5D45F79481EB9E29E6C6F938F2DBF0FF';
wwv_flow_api.g_varchar2_table(238) := '00EB528D3EF5FF00E599FC48A00A9B403F31FCB9A9019672218C71D9456AC3A2B9E677007A2F26B6A0B686D976C4B8F53DCD0051B1D356DF12CDF349DBD056949224486490E1477AAF757B0DA2FCE72DD9475AE5EE6EE6BB7DD21E07403A0A009EFAFDEE';
wwv_flow_api.g_varchar2_table(239) := 'DB6AFCB18E83D7DCD436F06F3BDFEEFF003A582D8B7CF274F4AD1031C0ADA9D3EACC6A54B68828A28AE839C28A28A00FFFD4828A28AEE38428A28A006BA2C836B0CD66CB6ED1F2395AD4A2A250522E337133AD6F67B53F21CAF753D2BA4B5BF82E8614ED';
wwv_flow_api.g_varchar2_table(240) := '7FEE9EBF85614B6AAFCA707F4ACF7478CFCC306B9E5068E98CD33BAA2B97B6D567870B2FEF17DFAFE75BF6F796F723F74DCFA1E0D41459A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2';
wwv_flow_api.g_varchar2_table(241) := '8A2800A28A2800A28A280337559365995EEE40FEB59BA427CCF27D053356B812CE225E91F1F89EB57602B63621DFA9E71EA4F414014F569F748B00E8BC9FA9AD5D2E0F26D413D5FE63FD2B02D616BDBAF9F904EE63ED5D87038140051451400514514005';
wwv_flow_api.g_varchar2_table(242) := '145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514018DACCBB6158875639FC0545A4C788DA53FC471F9567EA337DA2E8EDE42FCA3F0FFEBD69CD28B0B358D7EF9181F5EE680337519FCE';
wwv_flow_api.g_varchar2_table(243) := 'B8DABC84E07D7BD7496707D9EDD22EF8C9FA9AE7F4BB633CFE6B7DD8F9FA9ED5D4D0014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145';
wwv_flow_api.g_varchar2_table(244) := '145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001452332A0DCC4003B9AC8B9D5E28F2B6E379F5ED401ACEE91A9';
wwv_flow_api.g_varchar2_table(245) := '772140EE6B0AEF57CE52D7FEFA3FD05644D7135CB6E9589F41D87E14F8AD5DF97F947EB4D45BD84DA5B907EF267CF2CC6B421B654F99F9353A46918C20C53EBA214EDAB39E752FA20A28A2B5320A28A2800A28A2803FFFD5828A28AEE38428A28A0028A2';
wwv_flow_api.g_varchar2_table(246) := '8A002919430C30C8A5A2802949660F319FC0D526578CF20835B5485430C30C8ACA5493D8D6355ADCAD6FAADC43F2C9FBC5F7EBF9D6DC1A95ACFC6ED8DE8DC5614968A79438AA6F0C91FDE1C7AD6328346F19A67714571905EDCDBF11B9C7A1E456C41ACC';
wwv_flow_api.g_varchar2_table(247) := '6DC4EBB4FA8E454146DD151453C338CC4E1BE952D001451450014514500145145001451450014514500145145001451450014514500145155AEAE63B588C8FD7B0F53400CBBBD8ACD46FE58F402A28754B497863B0FA37F8D73A04D7F7193CB3753D80AB';
wwv_flow_api.g_varchar2_table(248) := 'D269120FF56E0FD78A00DF1716E46448BF98ACFBCD522894A5B90EE7B8E82B19F4EB88F96DA07AE40FE7558A221F99B77B2FF8D004D6D1AC8E6698E234E589EE7D296E2792F660AA0E3A2AD443CEB961146B9F451D07F9F5AE96C2C16D577BF321EFE9F4';
wwv_flow_api.g_varchar2_table(249) := 'A0092C6D05A45B4F2EDCB1FE95768A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28ACBD46FC5B2F9511CC87F41400B77A9C76AFE5AAEF6EFCE314F8753B59860B6C3E8DC7EBD2B';
wwv_flow_api.g_varchar2_table(250) := '9FB4B47BB72CC485EE7D4D5A9348941FDD3023DF8A00E83ED16F8CF98B8FA8ACBBED52354315B1DCC78DC3A0AC97D3EE23E5F681EA4802AB95443C9DC7DBA7E74013DAAA21FB4CDF753A0F56F4A4FDFDFDC6072CDF9014D8A29EEDC246338FC80AEA2CEC';
wwv_flow_api.g_varchar2_table(251) := 'D2D23DA3963D4D004D6F025B44224EDD4FA9A9A8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28';
wwv_flow_api.g_varchar2_table(252) := 'A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A090064D00145509B53B5878DDBCFA2F3FAF4AC79F57B89388808C7E66803A39668A15DD2B051EF58F71ACA8F96DD73E';
wwv_flow_api.g_varchar2_table(253) := 'EDD3F2AC126495B2C4B31F5E4D588ED1DB97F945528B7B09C92DC8E6B99EE0E6562DEDDBF2A58EDA47E4FCA3DEB4238238FA0E7D4D4B5AC697731955EC431C11C7C8193EA6A6A28ADD24B6316DBDC28A28A041451450014514500145145007FFD6828A28';
wwv_flow_api.g_varchar2_table(254) := 'AEE38428A28A0028A28A0028A28A0028A28A0028A28A0081EDE27ED83ED551ED1D794F9AB4A8A874D32D5468C4C3C6DDD48ABF0EA9771705B78FF6BFC6AD950C30C3355DED236FBBF2D64E93E86AAAAEA6943AC40FC4AA50FE62B4A39E19866270DF435C';
wwv_flow_api.g_varchar2_table(255) := '8BDA48BF77E6AAE43C679C835938B5B9AA927B1DDD15C845A8DDC5C07DC3D1B9FF00EBD6945AD2F49A3C7BAFF81A433768AA716A1692FDD9003E878FE7570104645001451450014514500145145001451450014514500158BAA59DC5C48B2443700318CF';
wwv_flow_api.g_varchar2_table(256) := '4ADAA28038CFB3DEC27211D7DC03FD29D9BF7E3F7A7F3AEC68A00E3D6C6F6639D8DF56E3F9D68C1A29CE6E1FF05FF1ADFA280228608A05DB1285152D14500145145001451450014514500145145001451450014514500145145001451450014514500145';
wwv_flow_api.g_varchar2_table(257) := '14500145145001451450015817DA64D24CD342436EE704E0D6FD1401C6F937D0F01645FA67FA52E6FDF8FDE9FCEBB1A2803904B0BD98E761FAB71FCEB4A0D1803BAE5B3ECBFE35BB45003238A3897646A140F4A7D1450014514500145145001451450014';
wwv_flow_api.g_varchar2_table(258) := '51450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014';
wwv_flow_api.g_varchar2_table(259) := '51450014514500145151C934510CCAE17EA68024A2B2E5D5ED5384CB9F6E07EB59B2EB170FC44020FCCD0074C480326A8CBA8DA43C17DC7D179AE5649E698FEF5CB7D6848257E8B4D2B89BB1AD36B4E788102FB9E4D65CB733CE7F7AE5BDBB7E55612CFF';
wwv_flow_api.g_varchar2_table(260) := '00BE7F2AB490C69F74735A2A4D90EAA4662412BF41C7A9AB6966A39739FA55CA2B5549232755B1AA8A830A314EA28AD2C641451450014514500145145001451450014514500145145007FFD7828A28AEE38428A28A0028A28A0028A28A0028A28A0028A2';
wwv_flow_api.g_varchar2_table(261) := '8A0028A28A0028A28A0028201E08CD14500576B689BB63E955DACD87DC39FAD685150E9A65AA8D18ED0CA9D54D11CD3447F76E57E86B6298D1A3FDE00D66E8F63455BB90C7ABDDA70F871EE3FC2AFC7AD4278950AFD39FF0ACF6B48CFDDC8A81ACDC7DD2';
wwv_flow_api.g_varchar2_table(262) := '0D43A72468AA459D3477D692FDD907E3C7F3AB6083C8AE19A1957AA9A125962398D8AFD0E2A1A2EE773457271EA9789D5830F715763D6CF4963FC41A406FD159B1EAD66FF7895FA8FF000CD5C4B9B793FD5C8A7F1A009A8A28A0028A28A0028A28A0028A';
wwv_flow_api.g_varchar2_table(263) := '28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A';
wwv_flow_api.g_varchar2_table(264) := '28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A46654196200F7AA8FA859C7D6407E9CFF2A00B9456349AD4';
wwv_flow_api.g_varchar2_table(265) := '03FD5A337D78FF001AA726B370DFEAD557F53401D2D4724D145CC8C17EA715C8497B772FDE91BF0E3F95570ACE78049A00EA64D56D23FBA4B9F61FE35424D69CF114607B939ACB5B599BB63EB53AD90FE36FCAAD41BE8439A4324BFBB97EF4840F41C7F2';
wwv_flow_api.g_varchar2_table(266) := 'AAA15DCF00935AAB6F0AF6CFD6A6000E07156A8F721D65D0CB5B595BAF1F5AB0B6683EF926AE515A2A6919BAAD8C58A34FBAA053E8A2B44886EE145145020A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFFD0828A28';
wwv_flow_api.g_varchar2_table(267) := 'AEE38428A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0029AC88DF78034EA28B05CAED6B09E808FA540D65FDD6FCEAFD150E9C596AA49194D6B30ED9FA544D1BAFDE0456D5152E8AE85AACFA';
wwv_flow_api.g_varchar2_table(268) := '98E93CF1FF00AB765FA1AB89AA5E27560DF51564C71B7DE506A236B09ED8FA543A2CB55913A6B720FF0059183F438FF1AB69ACDB37DF565FD6B20D90FE16FCEA236720E841A874E5D8A5522CE99350B37E9201F5E3F9D5A5747E51837D0E6B89304CBD54';
wwv_flow_api.g_varchar2_table(269) := 'D478653DC1A969957477945714975731FDD9187E3565355BD5EAC1BEA05219D6515CE2EB530FBF1A9FA647F8D595D6E23F7E361F420FF85006D5159ABAB59B7562BF51FE15616FAD1FA4ABF89C7F3A00B54535648DFEE303F439A7500145145001451450';
wwv_flow_api.g_varchar2_table(270) := '01451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450';
wwv_flow_api.g_varchar2_table(271) := '014514500145145001451450014514500145145001451450014514120726800A2A16B9B74FBD228FC45576D4AC97FE5A67E809A00BD4564B6B36A3EE866FC3FF00AF559B5BFEE45F99FF00EB5006FD15CC3EB174DF742AFE1555F50BC7EB211F4E3F9500';
wwv_flow_api.g_varchar2_table(272) := '763503DD5BC7F7E451F8D718D24927DF62DF539A047237DD5269D80EA5F55B34E8C5BE83FC71551F5B41FEAE327EA71FE358C2D663DB1F5A945937F1301F4AA506FA12E69752CBEB172DF702AFE19AA8F7D7727DE91BF0E3F954E2CE31D493532C10AF45';
wwv_flow_api.g_varchar2_table(273) := '1F8D52A4C87551924BB9C9C934F58256E8A6B60003A0C5156A8F725D6EC8CD5B390FDE2054EB6683EF126ADD156A9C510EA49912C112F451F8D4A001C0A28AA492D886DB0A28A298828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0';
wwv_flow_api.g_varchar2_table(274) := '028A28A0028A28A0028A28A0028A28A0028A28A00FFFD1828A28AEE38428A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028EBD68A280233';
wwv_flow_api.g_varchar2_table(275) := '144DD545466D613D062AC5149C5762949F7299B25FE1622A2364FD98568D152E9C4A5524659B5987419A8CC328EAA6B628A974514AB330CAB0EA31522CD327DC761F426B629A510F5507F0A9F63E63F6DE4505D42F17A4A7F1E7F9D4EBAB5E2F52ADF51F';
wwv_flow_api.g_varchar2_table(276) := 'E1529B784F551519B484FA8A9F64CAF6A89975A987DE453F4C8A9975B5FE2888FA1FFEB5503649D98D30D91ECDFA52F6722BDA44D95D66D4F50C3F01FE3532EA964DFC78FA835CE9B3947420D466DA61DAA791F61F3AEE758B7B68DD255FC4E2A613C2DF';
wwv_flow_api.g_varchar2_table(277) := '75D4FD08AE2CC128FE134C28E3A834ACC774776083D28AE0C123A715209E75FBAEC3E84D219DC515C58BDBB5E92B7E273528D4AF47490FE43FC2803AFA2B941AB5E8EAC0FE02A41ACDD0EA10FE07FC6803A7A2B9C1AD4DDE35FD69E35B3DE2FF00C7BFFA';
wwv_flow_api.g_varchar2_table(278) := 'D401D05158635B4EF11FCEA41AD5BF746FD3FC6803628ACA1AC5A1ECC3F0FF00EBD3C6AD667B91F8500695159E354B13FF002D3F43FE14F1A9591FF9683F23401768AA82FECCFF00CB55A70BDB43FF002D57F3A00B34541F6BB53FF2D53FEFA14BF68B73';
wwv_flow_api.g_varchar2_table(279) := 'D245FCC5004D4545E7C3FDF5FCC52F9D17F7D7F314012514CF363FEF0FCE97CC8FFBC3F3A007514DDE9EA3F3A5DCBEA280168A3228A0028A4C8F5A372FA8A005A29BBD3FBC3F3A4F323FEF0FCE801F4547E6C5FDF5FCE8F3A1FEFAFE628024A2A2F3E0FF';
wwv_flow_api.g_varchar2_table(280) := '009E8BF98A4FB4DB0EB2A7FDF428026A2AB9BCB51FF2D53F314D37D683FE5AAFE74016A8AA6750B21FF2D07EB4D3A9D88FF969FA1FF0A00BD45671D56C87F113F81A61D5ECC7F78FE1401A945641D66D7B2B9FC07F8D30EB71768DBF4A00DAA2B04EB63B';
wwv_flow_api.g_varchar2_table(281) := '45FF008F7FF5A9875B93B463F3A00E868AE68EB573D9107E7FE3519D5EECF4DA3F0A00EA68AE48EA97A7F8F1F80A88DFDE37594FE1C500765457126EAE5BACAFF99A8CC9237DE627EA6803B82E8BF7881F535135D5B2F5953F315C5004F414E11487A29F';
wwv_flow_api.g_varchar2_table(282) := 'CA9D82E75ADA8D92F5907E19350B6AF663A163F41FE35CD8B798FF000D3C5A4C7A8029F2BEC4F32EE6DB6B500FBA8C7EB81FE35036B6DFC3101F53FF00D6ACE164FDD853C590EEDFA53F672EC2F691EE4EDACDD1FBA147E07FC6A06D4EF5BF8F1F402A41';
wwv_flow_api.g_varchar2_table(283) := '6717724D3C5B423F87355EC992EAA28B5DDD3FDE95BF335096663F3127EB5AE22887451520007418AAF63E62F6C8C511C87A293520B698FF000D6B514FD8A25D66668B390F5205482CBFBCDFA55EA2A952892EAC8AA2CE21D493520B7847F0D4D455282E';
wwv_flow_api.g_varchar2_table(284) := 'C4B9BEE20555FBA00A5A28AAB1370A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFFD2828A28AEE38428A28A0028';
wwv_flow_api.g_varchar2_table(285) := 'A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00300F5A6944';
wwv_flow_api.g_varchar2_table(286) := '3D547E54EA28B0EE466188FF0008A6FD9A13FC353514B95760E67DCAE6D61F4FD69BF638BD4D5AA29722EC3E7977299B34ECC69BF621D9BF4ABD452F6711FB4919FF00623D9A93EC6FD88AD1A297B288FDAC8CCFB1CBED49F649BD07E75A9451EC90FDAB';
wwv_flow_api.g_varchar2_table(287) := '32BECB37F77F5A6FD9A6FEED6BD14BD8A0F6CCC7F226FEE9A3C997FBA6B628A5EC50FDB331BCA97FBA7F2A4F2E4FEE9FCAB6A8A3D8AEE1EDBC8C4F2DFF00BA68D8FE86B6E8A3D8F98FDB79189B5BD0D26D6F435B9451EC7CC3DB7918783E949835BB452F';
wwv_flow_api.g_varchar2_table(288) := '63E61EDBC8C2E68ADDA28F63E61EDBC8C2C1A5C1F4ADCA28F63E61EDBC8C3DADE946D6F435B9453F63E61EDBC8C4D8DE868D8FE86B6E8A3D8F987B6F2317CB7FEE9FCA8F2A4FEE9FCAB6A8A3D8F987B6F231BC997FBA7F2A5F225FEE9AD8A28F6285ED9F';
wwv_flow_api.g_varchar2_table(289) := '6323ECF37F7697ECD37F76B5A8A7EC507B66657D966F4FD69DF6497DAB4E8A3D9217B5666FD8E4F514EFB1377615A1453F65117B59143EC5EADFA538592F7635768A7ECE22F6922A0B38FB934EFB243EF5668A7C91EC1CF2EE402D611FC3FAD384108FE1';
wwv_flow_api.g_varchar2_table(290) := '152D14F95761733EE304518E8A3F2A70551D00A5A29D90AEC28A28A0414514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450';
wwv_flow_api.g_varchar2_table(291) := '014514500145145001451450014514500145145001451450014514500145145007FFD3828A28AEE38428A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A';
wwv_flow_api.g_varchar2_table(292) := '0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A';
wwv_flow_api.g_varchar2_table(293) := '0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A';
wwv_flow_api.g_varchar2_table(294) := '0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFD9';
null;
end;
/
begin
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(27420966444546374199)
,p_file_name=>'Logo.jpg'
,p_mime_type=>'image/jpeg'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(27368343363754268610)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(27368343592420268610)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(27368343959700268610)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(27368344261454268610)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(27368344521931268610)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(27368344811820268611)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(27368345160181268611)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations/administrators
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(39589808509763123546)
,p_name=>'Administrators'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from USERS',
'where Username = :APP_USER and IsAdministrator = ''Y''',
''))
,p_error_message=>'Administrator access only!'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/guests
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(39589869521773133861)
,p_name=>'Guests'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return :APP_USER = ''GUEST'';'
,p_error_message=>'Guests only, please'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/built_in_users
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(39589964255665149436)
,p_name=>'Built-in Users'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return :APP_USER = ''GUEST'' or :APP_USER = ''ADMIN'';'
,p_error_message=>'Built-in users only'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(27368489459646268728)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(27368489459646268728)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27368489855406268728)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(27368487428724268724)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(27368345701959268612)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41927685442028857989)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(28475693503212869361)
,p_parent_id=>wwv_flow_api.id(41927685442028857989)
,p_option_sequence=>20
,p_short_name=>'List Practice'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27368346542484268613)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368346809677268613)
,p_page_template_id=>wwv_flow_api.id(27368346542484268613)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368347166784268614)
,p_page_template_id=>wwv_flow_api.id(27368346542484268613)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368347424437268614)
,p_page_template_id=>wwv_flow_api.id(27368346542484268613)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368347735680268614)
,p_page_template_id=>wwv_flow_api.id(27368346542484268613)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368348021673268614)
,p_page_template_id=>wwv_flow_api.id(27368346542484268613)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368348308372268615)
,p_page_template_id=>wwv_flow_api.id(27368346542484268613)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368348629793268615)
,p_page_template_id=>wwv_flow_api.id(27368346542484268613)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368348936587268615)
,p_page_template_id=>wwv_flow_api.id(27368346542484268613)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27368349332035268616)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368349648461268616)
,p_page_template_id=>wwv_flow_api.id(27368349332035268616)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368349880368268616)
,p_page_template_id=>wwv_flow_api.id(27368349332035268616)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368350244677268616)
,p_page_template_id=>wwv_flow_api.id(27368349332035268616)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368350539953268617)
,p_page_template_id=>wwv_flow_api.id(27368349332035268616)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368350813825268617)
,p_page_template_id=>wwv_flow_api.id(27368349332035268616)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368351097711268617)
,p_page_template_id=>wwv_flow_api.id(27368349332035268616)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368351407568268617)
,p_page_template_id=>wwv_flow_api.id(27368349332035268616)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368351683726268618)
,p_page_template_id=>wwv_flow_api.id(27368349332035268616)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368351983418268618)
,p_page_template_id=>wwv_flow_api.id(27368349332035268616)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27368352394614268618)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368352771062268619)
,p_page_template_id=>wwv_flow_api.id(27368352394614268618)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368353064082268619)
,p_page_template_id=>wwv_flow_api.id(27368352394614268618)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368353297176268619)
,p_page_template_id=>wwv_flow_api.id(27368352394614268618)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27368354742667268620)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368354995102268621)
,p_page_template_id=>wwv_flow_api.id(27368354742667268620)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368355287589268621)
,p_page_template_id=>wwv_flow_api.id(27368354742667268620)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368355588910268621)
,p_page_template_id=>wwv_flow_api.id(27368354742667268620)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368355953034268621)
,p_page_template_id=>wwv_flow_api.id(27368354742667268620)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368356180821268622)
,p_page_template_id=>wwv_flow_api.id(27368354742667268620)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368356539494268622)
,p_page_template_id=>wwv_flow_api.id(27368354742667268620)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368356875092268622)
,p_page_template_id=>wwv_flow_api.id(27368354742667268620)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368357100540268622)
,p_page_template_id=>wwv_flow_api.id(27368354742667268620)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368357473742268623)
,p_page_template_id=>wwv_flow_api.id(27368354742667268620)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27368357800002268623)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368358089407268624)
,p_page_template_id=>wwv_flow_api.id(27368357800002268623)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368358456502268624)
,p_page_template_id=>wwv_flow_api.id(27368357800002268623)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368358773385268624)
,p_page_template_id=>wwv_flow_api.id(27368357800002268623)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368359034650268624)
,p_page_template_id=>wwv_flow_api.id(27368357800002268623)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368359320276268625)
,p_page_template_id=>wwv_flow_api.id(27368357800002268623)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368359588415268625)
,p_page_template_id=>wwv_flow_api.id(27368357800002268623)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368359900851268625)
,p_page_template_id=>wwv_flow_api.id(27368357800002268623)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27368360376854268625)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368360668656268626)
,p_page_template_id=>wwv_flow_api.id(27368360376854268625)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368360914279268626)
,p_page_template_id=>wwv_flow_api.id(27368360376854268625)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368361181770268626)
,p_page_template_id=>wwv_flow_api.id(27368360376854268625)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27368361824224268626)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368362154796268627)
,p_page_template_id=>wwv_flow_api.id(27368361824224268626)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368362381920268627)
,p_page_template_id=>wwv_flow_api.id(27368361824224268626)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368362737107268627)
,p_page_template_id=>wwv_flow_api.id(27368361824224268626)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368363037795268627)
,p_page_template_id=>wwv_flow_api.id(27368361824224268626)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368363290691268628)
,p_page_template_id=>wwv_flow_api.id(27368361824224268626)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368363591575268628)
,p_page_template_id=>wwv_flow_api.id(27368361824224268626)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368363893436268628)
,p_page_template_id=>wwv_flow_api.id(27368361824224268626)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368364253469268628)
,p_page_template_id=>wwv_flow_api.id(27368361824224268626)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27368364625302268629)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368364958677268629)
,p_page_template_id=>wwv_flow_api.id(27368364625302268629)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368365199369268629)
,p_page_template_id=>wwv_flow_api.id(27368364625302268629)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368365501870268629)
,p_page_template_id=>wwv_flow_api.id(27368364625302268629)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368365837010268630)
,p_page_template_id=>wwv_flow_api.id(27368364625302268629)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368366081245268630)
,p_page_template_id=>wwv_flow_api.id(27368364625302268629)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368366435467268630)
,p_page_template_id=>wwv_flow_api.id(27368364625302268629)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368366740177268630)
,p_page_template_id=>wwv_flow_api.id(27368364625302268629)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27368367145613268630)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368367454485268631)
,p_page_template_id=>wwv_flow_api.id(27368367145613268630)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368367767640268631)
,p_page_template_id=>wwv_flow_api.id(27368367145613268630)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368368053427268631)
,p_page_template_id=>wwv_flow_api.id(27368367145613268630)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27368461167068268702)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27368461833467268702)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27368461884802268702)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368368599150268632)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368368884202268632)
,p_plug_template_id=>wwv_flow_api.id(27368368599150268632)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368372303878268635)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368372512489268635)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368372793536268635)
,p_plug_template_id=>wwv_flow_api.id(27368372512489268635)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368373129008268635)
,p_plug_template_id=>wwv_flow_api.id(27368372512489268635)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368373362431268635)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368373610024268636)
,p_plug_template_id=>wwv_flow_api.id(27368373362431268635)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368373937590268636)
,p_plug_template_id=>wwv_flow_api.id(27368373362431268635)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368375493183268637)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368375835163268637)
,p_plug_template_id=>wwv_flow_api.id(27368375493183268637)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368376135520268637)
,p_plug_template_id=>wwv_flow_api.id(27368375493183268637)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368382684819268642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368383022050268642)
,p_plug_template_id=>wwv_flow_api.id(27368382684819268642)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368383295685268643)
,p_plug_template_id=>wwv_flow_api.id(27368382684819268642)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368388132285268646)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368390177402268648)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368390407438268648)
,p_plug_template_id=>wwv_flow_api.id(27368390177402268648)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368392253292268650)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368392506263268650)
,p_plug_template_id=>wwv_flow_api.id(27368392253292268650)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368394545431268651)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368394783985268651)
,p_plug_template_id=>wwv_flow_api.id(27368394545431268651)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368397789414268654)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368398402463268654)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368398685366268654)
,p_plug_template_id=>wwv_flow_api.id(27368398402463268654)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368399759077268655)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368400035689268655)
,p_plug_template_id=>wwv_flow_api.id(27368399759077268655)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368400367108268656)
,p_plug_template_id=>wwv_flow_api.id(27368399759077268655)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368406540362268661)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368406861922268661)
,p_plug_template_id=>wwv_flow_api.id(27368406540362268661)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368407130784268661)
,p_plug_template_id=>wwv_flow_api.id(27368406540362268661)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368409159371268663)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27368410175933268663)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(27368410403071268664)
,p_plug_template_id=>wwv_flow_api.id(27368410175933268663)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368435392077268683)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368439401189268686)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368445051044268690)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368446620660268691)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368449420270268693)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368450403862268693)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368451068719268694)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368451443393268694)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'js-navCollapsed--hidden:t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368453054549268695)
,p_list_template_current=>'<li class="t-Tabs-item is-active #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368454592089268696)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" style="display:none;">',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368456426723268698)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368457406330268698)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27368459035565268700)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368411440140268664)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368411627103268665)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368415599752268668)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368421050490268672)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368422224220268673)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368425433227268675)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368428396669268678)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368428637096268678)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(27368428637096268678)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368431221590268680)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368431641411268681)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27368433644955268682)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27368460418311268701)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27368460565201268701)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27368460630778268701)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27368460736708268701)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27368460840302268701)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27368460923161268701)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27368460999029268702)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(27368463265909268703)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(27368463449284268703)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(27368463297653268703)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(27368464668473268705)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(27368364625302268629)
,p_default_dialog_template=>wwv_flow_api.id(27368360376854268625)
,p_error_template=>wwv_flow_api.id(27368352394614268618)
,p_printer_friendly_template=>wwv_flow_api.id(27368364625302268629)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(27368352394614268618)
,p_default_button_template=>wwv_flow_api.id(27368461833467268702)
,p_default_region_template=>wwv_flow_api.id(27368399759077268655)
,p_default_chart_template=>wwv_flow_api.id(27368399759077268655)
,p_default_form_template=>wwv_flow_api.id(27368399759077268655)
,p_default_reportr_template=>wwv_flow_api.id(27368399759077268655)
,p_default_tabform_template=>wwv_flow_api.id(27368399759077268655)
,p_default_wizard_template=>wwv_flow_api.id(27368399759077268655)
,p_default_menur_template=>wwv_flow_api.id(27368409159371268663)
,p_default_listr_template=>wwv_flow_api.id(27368399759077268655)
,p_default_irr_template=>wwv_flow_api.id(27368397789414268654)
,p_default_report_template=>wwv_flow_api.id(27368428637096268678)
,p_default_label_template=>wwv_flow_api.id(27368460736708268701)
,p_default_menu_template=>wwv_flow_api.id(27368463265909268703)
,p_default_calendar_template=>wwv_flow_api.id(27368463297653268703)
,p_default_list_template=>wwv_flow_api.id(27368445051044268690)
,p_default_nav_list_template=>wwv_flow_api.id(27368456426723268698)
,p_default_top_nav_list_temp=>wwv_flow_api.id(27368456426723268698)
,p_default_side_nav_list_temp=>wwv_flow_api.id(27368451443393268694)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(27368373362431268635)
,p_default_dialogr_template=>wwv_flow_api.id(27368372303878268635)
,p_default_option_label=>wwv_flow_api.id(27368460736708268701)
,p_default_required_label=>wwv_flow_api.id(27368460999029268702)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(27368451068719268694)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.5/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(27368463627576268704)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(27368463870446268704)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(27368463981738268704)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(27368464243856268704)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(27368464464354268704)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368353648802268619)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368354400902268620)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368369235729268632)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368369834579268633)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368370196020268633)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368370822531268633)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368374273579268636)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368374610970268636)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368376443295268638)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368377445765268638)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368378780791268639)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368380010710268640)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368380627654268641)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368381066318268641)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368384431079268643)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368386259834268645)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368386856818268645)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368388398478268647)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368389245541268647)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368391173631268649)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368391498571268649)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368392986820268650)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368396528514268653)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368398990247268655)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368407593984268662)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368408026790268662)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368408401618268662)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368410767645268664)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368411917550268665)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368412365121268665)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368414125105268667)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368416516222268669)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368417725658268670)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368418571542268670)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368420091228268671)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368421353481268672)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368422528101268673)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368422908144268673)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368423352233268674)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368423678306268674)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368424082447268675)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368424514645268675)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368424899056268675)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368427123194268677)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368428924887268678)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368429302540268678)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368430142875268679)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368431922687268681)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368435694274268684)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368436107204268684)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368437968598268685)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368440324795268687)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368441512208268687)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368442298655268688)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368443947412268689)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368446138089268690)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368448302956268692)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368451896295268694)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368457767025268699)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368458080104268699)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368459524099268700)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368461303264268702)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368462558840268703)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368464809401268705)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368465247047268705)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368466839868268706)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368467229559268707)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368468812409268707)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368469268372268708)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368470792205268709)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368471238915268709)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368472841487268710)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368473193214268710)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368473615983268710)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368473981159268710)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368474446129268711)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368474791927268711)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368475207886268711)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368476619408268712)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368478018850268713)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368479041639268714)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368479445542268714)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368479835956268714)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368480181706268714)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368480859692268715)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368481468304268715)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368481838118268715)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368482267377268716)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368482672749268716)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27368483432297268716)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368349188183268615)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(27368346542484268613)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368352356290268618)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(27368349332035268616)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368353799290268619)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(27368352394614268618)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(27368353648802268619)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368353998497268619)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(27368352394614268618)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(27368353648802268619)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368354265835268620)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_api.id(27368352394614268618)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(27368353648802268619)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368354662952268620)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(27368352394614268618)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(27368354400902268620)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368357758784268623)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(27368354742667268620)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368360186475268625)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(27368357800002268623)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368361498177268626)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(27368360376854268625)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368361706987268626)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(27368360376854268625)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368364561706268628)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(27368361824224268626)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368367076456268630)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(27368364625302268629)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368368369146268631)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(27368367145613268630)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368368533503268631)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(27368367145613268630)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368369425311268632)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(27368369235729268632)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368369647084268633)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368370059772268633)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(27368369834579268633)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368370468473268633)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(27368370196020268633)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368370610299268633)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(27368369834579268633)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368371069036268634)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(27368370822531268633)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368371198839268634)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(27368370196020268633)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368371418749268634)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(27368369834579268633)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368371616934268634)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(27368369235729268632)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368371856665268634)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(27368370196020268633)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368372021353268634)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(27368370196020268633)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368372265896268634)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368368599150268632)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(27368370822531268633)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368374386100268636)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(27368373362431268635)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368374849406268636)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(27368373362431268635)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(27368374610970268636)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368374983732268637)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(27368373362431268635)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368375253508268637)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(27368373362431268635)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(27368374610970268636)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368375387381268637)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368373362431268635)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368376617119268638)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368376829414268638)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368377022895268638)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368377221424268638)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368377669104268638)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(27368377445765268638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368377822771268639)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(27368377445765268638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368378062558268639)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(27368377445765268638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368378213774268639)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(27368377445765268638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368378469801268639)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368378646335268639)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368379000246268639)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368379216550268640)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368379383489268640)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368379613359268640)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368379796775268640)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368380275616268640)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(27368380010710268640)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368380391445268640)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(27368380010710268640)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368380805640268641)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(27368380627654268641)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368381181714268641)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(27368381066318268641)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368381408139268641)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368381657685268641)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368381861956268641)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(27368381066318268641)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368382012481268642)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(27368380627654268641)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368382260558268642)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368382446709268642)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368382598573268642)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368375493183268637)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368383661417268643)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368383839744268643)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368384051668268643)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368384235889268643)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368384637735268644)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(27368384431079268643)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368384803415268644)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(27368384431079268643)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368385053891268644)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368385268615268644)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368385390732268644)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368385661095268644)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368385792455268644)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368386011463268645)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368386386558268645)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(27368386259834268645)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368386604475268645)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(27368380627654268641)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368387041236268645)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(27368386856818268645)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368387226672268646)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368387458824268646)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368387655120268646)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368387805262268646)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(27368380627654268641)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368387989441268646)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368382684819268642)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368388634323268647)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368388132285268646)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(27368388398478268647)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368388874632268647)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368388132285268646)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(27368388398478268647)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368389011990268647)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368388132285268646)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(27368388398478268647)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368389441153268648)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368388132285268646)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(27368389245541268647)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368389625330268648)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368388132285268646)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368389822989268648)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368388132285268646)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(27368389245541268647)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368390029380268648)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368388132285268646)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368390726962268648)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368390177402268648)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368390894527268649)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368390177402268648)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368391281842268649)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368390177402268648)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(27368391173631268649)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368391697079268649)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368390177402268648)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(27368391498571268649)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368391948467268649)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368390177402268648)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(27368391498571268649)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368392106958268650)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368390177402268648)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368392816443268650)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(27368392253292268650)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368393269917268650)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368392253292268650)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(27368392986820268650)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368393424556268650)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368392253292268650)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(27368392986820268650)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368393627882268651)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368392253292268650)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(27368392986820268650)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368393851448268651)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368392253292268650)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368393988758268651)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368392253292268650)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368394229945268651)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368392253292268650)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368394430832268651)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(27368392253292268650)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368395137424268652)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368395304747268652)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(27368392986820268650)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368395539189268652)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(27368392986820268650)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368395719243268652)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(27368392986820268650)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368395899542268652)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(27368392986820268650)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368396160529268653)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368396293898268653)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368396703206268653)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(27368396528514268653)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368396966531268653)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(27368396528514268653)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368397096693268653)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(27368396528514268653)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368397376088268653)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(27368396528514268653)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368397570992268654)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(27368396528514268653)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368397773997268654)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368394545431268651)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368398134683268654)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368397789414268654)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368398359736268654)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368397789414268654)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368399244099268655)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368398402463268654)
,p_css_classes=>'t-Login-region--headerHidden'
,p_group_id=>wwv_flow_api.id(27368398990247268655)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368399431572268655)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368398402463268654)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(27368398990247268655)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368399620214268655)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368398402463268654)
,p_css_classes=>'t-Login-region--headerTitle'
,p_group_id=>wwv_flow_api.id(27368398990247268655)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368400668975268656)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368400851550268656)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368401040801268656)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368401228492268656)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(27368376443295268638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368401387490268656)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368401617145268657)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368401859224268657)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368402046946268657)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368402262793268657)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368402457352268657)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368402639682268657)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368402811022268658)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368402990987268658)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368403207589268658)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368403441217268658)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368403658923268658)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368403847670268658)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368404074738268658)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368404256862268659)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368404385877268659)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(27368378780791268639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368404657308268659)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(27368380627654268641)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368404821938268659)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(27368381066318268641)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368405028216268659)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368405181954268659)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368405466536268660)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368405593693268660)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(27368381066318268641)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368405846453268660)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(27368380627654268641)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368405985422268660)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368406238405268660)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368406438060268661)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(27368399759077268655)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(27368374273579268636)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368407384313268661)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368406540362268661)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368407824756268662)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368406540362268661)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(27368407593984268662)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368408223016268662)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368406540362268661)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(27368408026790268662)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368408656196268662)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368406540362268661)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(27368408401618268662)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368408796821268662)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368406540362268661)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(27368408401618268662)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368409012393268663)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368406540362268661)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(27368408026790268662)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368409386887268663)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368409159371268663)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368409618163268663)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(27368409159371268663)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368409871875268663)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(27368409159371268663)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(27368388398478268647)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368410073149268663)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(27368409159371268663)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(27368388398478268647)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368410967701268664)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(27368410175933268663)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(27368410767645268664)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368411133270268664)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368410175933268663)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(27368410767645268664)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368411288723268664)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(27368410175933268663)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368412164707268665)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(27368411917550268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368412500599268665)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368412715034268666)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368412971022268666)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368413171414268666)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368413334900268666)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(27368411917550268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368413505181268666)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368413695766268666)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368413917889268667)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368414289920268667)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(27368414125105268667)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368414527932268667)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(27368414125105268667)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368414725702268667)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(27368414125105268667)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368414959598268667)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368415095369268667)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(27368414125105268667)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368415344981268668)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(27368414125105268667)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368415507848268668)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368411627103268665)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368415883736268668)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368416093003268668)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368416353993268668)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368416753768268669)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(27368416516222268669)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368416918465268669)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(27368416516222268669)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368417157363268669)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(27368411917550268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368417331324268669)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368417481584268669)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(27368411917550268665)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368417898357268670)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(27368417725658268670)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368418140010268670)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(27368417725658268670)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368418343759268670)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(27368417725658268670)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368418755232268670)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(27368418571542268670)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368418909469268670)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(27368418571542268670)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368419140671268671)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368419279635268671)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(27368411917550268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368419523348268671)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(27368411917550268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368419724792268671)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368419944969268671)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(27368417725658268670)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368420374365268671)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(27368420091228268671)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368420506475268672)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(27368420091228268671)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368420716608268672)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368420922286268672)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368415599752268668)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368421554919268672)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368421050490268672)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(27368421353481268672)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368421766203268672)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368421050490268672)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(27368421353481268672)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368421926099268673)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368421050490268672)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(27368420091228268671)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368422100044268673)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368421050490268672)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(27368420091228268671)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368422688942268673)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(27368422224220268673)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(27368422528101268673)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368423162596268674)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(27368422224220268673)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(27368422908144268673)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368423524715268674)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(27368422224220268673)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(27368423352233268674)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368423885843268674)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368422224220268673)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(27368423678306268674)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368424360831268675)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(27368422224220268673)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(27368424082447268675)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368424700196268675)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368422224220268673)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(27368424514645268675)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368425150923268675)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368422224220268673)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(27368424899056268675)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368425293034268675)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(27368422224220268673)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(27368411917550268665)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368425727975268676)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368425916405268676)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368426107312268676)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368426371855268676)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368426561651268676)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368426713440268676)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(27368420091228268671)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368426927837268677)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(27368420091228268671)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368427300726268677)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(27368427123194268677)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368427541261268677)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368427703291268677)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368427975796268677)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368428111141268677)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368428366274268678)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(27368425433227268675)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368429114520268678)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368428637096268678)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(27368428924887268678)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368429564487268679)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368428637096268678)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(27368429302540268678)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368429732002268679)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(27368428637096268678)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(27368429302540268678)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368429897159268679)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368428637096268678)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(27368429302540268678)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368430278438268679)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368428637096268678)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(27368430142875268679)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368430517662268680)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368428637096268678)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(27368430142875268679)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368430694115268680)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368428637096268678)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(27368428924887268678)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368430915968268680)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368428637096268678)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368431093113268680)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368428637096268678)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(27368429302540268678)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368431522018268681)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(27368431221590268680)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(27368411917550268665)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368432146238268681)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368431641411268681)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368432376492268681)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368431641411268681)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368432503009268681)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368431641411268681)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368432740941268682)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368431641411268681)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368432923602268682)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368431641411268681)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368433111929268682)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(27368431641411268681)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368433324251268682)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(27368431641411268681)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368433540668268682)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(27368431641411268681)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368433941061268682)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(27368433644955268682)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368434171085268683)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368433644955268682)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368434284684268683)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368433644955268682)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368434523003268683)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(27368433644955268682)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368434728993268683)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(27368433644955268682)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(27368412365121268665)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368434975726268683)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(27368433644955268682)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368435137493268683)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(27368433644955268682)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368435375767268683)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(27368433644955268682)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(27368431922687268681)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368435942232268684)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368436310905268684)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368436555514268684)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368436697320268684)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368436886941268685)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368437142951268685)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368437334226268685)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368437528463268685)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368437760638268685)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368438102085268685)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(27368437968598268685)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368438303236268685)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(27368437968598268685)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368438555976268686)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(27368437968598268685)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368438680681268686)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368438909578268686)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(27368437968598268685)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368439101408268686)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(27368437968598268685)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368439337905268686)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368435392077268683)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368439727049268686)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368439968481268686)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368440149880268687)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368440484012268687)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(27368440324795268687)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368440721406268687)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(27368440324795268687)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368440909363268687)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368441154931268687)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368441298290268687)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368441707723268688)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(27368441512208268687)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368441967464268688)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(27368441512208268687)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368442129803268688)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(27368441512208268687)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368442501887268688)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(27368442298655268688)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368442760462268688)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(27368442298655268688)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368442948958268688)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368443172875268688)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368443324603268689)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368443523264268689)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368443726848268689)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(27368441512208268687)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368444156031268689)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(27368443947412268689)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368444304675268689)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(27368443947412268689)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368444494358268689)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368444729811268690)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368444935617268690)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368445302858268690)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368445051044268690)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368445536674268690)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368445051044268690)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368445697045268690)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368445051044268690)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368445884170268690)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368445051044268690)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368446302491268691)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368445051044268690)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(27368446138089268690)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368446493252268691)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368445051044268690)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(27368446138089268690)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368446912848268691)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368447158858268691)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368447325995268691)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368447562560268691)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368447746012268692)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368447880212268692)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(27368443947412268689)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368448093410268692)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(27368443947412268689)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368448553442268692)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(27368448302956268692)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368448758643268692)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368448905504268692)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368449138264268692)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368449358309268692)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(27368446620660268691)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368449699022268693)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(27368449420270268693)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368449945972268693)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(27368449420270268693)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368450079181268693)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368449420270268693)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368450350904268693)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368449420270268693)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368450754400268693)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368450403862268693)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368450892168268694)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368450403862268693)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368451290336268694)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368451068719268694)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368451753620268694)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368451443393268694)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368452090420268694)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368451443393268694)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(27368451896295268694)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368452330052268695)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368451443393268694)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(27368451896295268694)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368452480017268695)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368451443393268694)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368452749981268695)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368451443393268694)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368452902917268695)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368451443393268694)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368453338682268695)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(27368453054549268695)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368453481844268695)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368453054549268695)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(27368442298655268688)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368453726131268696)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368453054549268695)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(27368442298655268688)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368453970405268696)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368453054549268695)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(27368448302956268692)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368454172255268696)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368453054549268695)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368454353963268696)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368453054549268695)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(27368435694274268684)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368454499806268696)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(27368453054549268695)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(27368448302956268692)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368454927609268697)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368454592089268696)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368455140066268697)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368454592089268696)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368455284764268697)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368454592089268696)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368455545512268697)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368454592089268696)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368455770397268697)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368454592089268696)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368455961853268697)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(27368454592089268696)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368456086794268698)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(27368454592089268696)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368456356248268698)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(27368454592089268696)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_api.id(27368436107204268684)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368456757984268698)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(27368456426723268698)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368456895665268698)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(27368456426723268698)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368457113208268698)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(27368456426723268698)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368457290423268698)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(27368456426723268698)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368457919859268699)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(27368457406330268698)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(27368457767025268699)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368458354832268699)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368457406330268698)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(27368458080104268699)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368458508538268700)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(27368457406330268698)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(27368457767025268699)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368458711440268700)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368457406330268698)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(27368458080104268699)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368458900826268700)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368457406330268698)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(27368458080104268699)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368459319355268700)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(27368459035565268700)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368459739996268701)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(27368459035565268700)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(27368459524099268700)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368459906271268701)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368459035565268700)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(27368459524099268700)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368460103099268701)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(27368459035565268700)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(27368459524099268700)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368460311387268701)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(27368459035565268700)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368461532861268702)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(27368461167068268702)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(27368461303264268702)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368461773440268702)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(27368461167068268702)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(27368461303264268702)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368462145490268702)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(27368461884802268702)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(27368461303264268702)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368462352041268703)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(27368461884802268702)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(27368461303264268702)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368462735569268703)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(27368461884802268702)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(27368462558840268703)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368462930934268703)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(27368461884802268702)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(27368462558840268703)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368463145472268703)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(27368461884802268702)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368465063518268705)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(27368464809401268705)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368465432209268705)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(27368465247047268705)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368465620238268706)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(27368464809401268705)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368465875230268706)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(27368465247047268705)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368466046516268706)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(27368464809401268705)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368466179419268706)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(27368465247047268705)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368466436342268706)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(27368464809401268705)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368466656550268706)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(27368465247047268705)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368467052479268706)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(27368466839868268706)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368467449234268707)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(27368467229559268707)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368467625175268707)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(27368466839868268706)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368467829923268707)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(27368467229559268707)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368468075462268707)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(27368466839868268706)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368468265573268707)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(27368467229559268707)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368468437180268707)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(27368466839868268706)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368468640048268707)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(27368467229559268707)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368469064575268708)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(27368468812409268707)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368469421109268708)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(27368469268372268708)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368469676598268708)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(27368468812409268707)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368469836893268708)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(27368469268372268708)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368470027227268708)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(27368468812409268707)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368470217547268708)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(27368469268372268708)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368470430206268708)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(27368468812409268707)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368470611681268709)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(27368469268372268708)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368471060056268709)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(27368470792205268709)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368471445676268709)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(27368471238915268709)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368471627885268709)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(27368470792205268709)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368471871087268709)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(27368471238915268709)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368472006067268709)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(27368470792205268709)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368472256772268709)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(27368471238915268709)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368472458605268710)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(27368470792205268709)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368472651990268710)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(27368471238915268709)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368473061953268710)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(27368472841487268710)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368473463983268710)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(27368473193214268710)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368473795673268710)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(27368473615983268710)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368474195023268711)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(27368473981159268710)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368474598337268711)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(27368474446129268711)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368475072425268711)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(27368474791927268711)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368475448031268712)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(27368475207886268711)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368475670670268712)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(27368475207886268711)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368475833773268712)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(27368473193214268710)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368476059037268712)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(27368473615983268710)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368476239642268712)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(27368473981159268710)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368476438260268712)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(27368474446129268711)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368476849877268712)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(27368476619408268712)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368477076227268713)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(27368476619408268712)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368477251215268713)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(27368476619408268712)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368477434372268713)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(27368472841487268710)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368477632662268713)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(27368475207886268711)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368477858991268713)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(27368474791927268711)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368478217719268713)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(27368478018850268713)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368478407486268713)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(27368472841487268710)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368478602217268713)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(27368474791927268711)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368478871128268714)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(27368472841487268710)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368479192257268714)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(27368479041639268714)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368479601661268714)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(27368479445542268714)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368480048635268714)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(27368479835956268714)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368480433053268715)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(27368480181706268714)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368480642921268715)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(27368480181706268714)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368481006236268715)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(27368480859692268715)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368481225978268715)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(27368479445542268714)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368481624517268715)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(27368481468304268715)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368482033365268715)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(27368481838118268715)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368482421328268716)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(27368482267377268716)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368482794437268716)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(27368482672749268716)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368482996851268716)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368483267082268716)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(27368481468304268715)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27368483639651268716)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(27368483432297268716)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(39543275652958066776)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(27368487181504268724)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(27368345470575268612)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/public_access
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(39397475013820571440)
,p_name=>'Public Access'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/always_true
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(39397525116861578822)
,p_name=>'Always True'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'alwaysTrue'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function alwaysTrue(p_username in varchar2,',
'                    p_password in varchar2) return boolean',
'is begin',
'  return true;',
'end;',
'',
'',
'',
''))
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/application_managed
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(39423933497473832083)
,p_name=>'Application Managed'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'custom_authentication'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function custom_authentication (p_username in varchar2,',
'                                p_password in varchar2) return boolean',
'is',
'    v_userName     varchar2(20) := upper(p_username);',
'    v_valuesToHash apex_t_varchar2 := apex_t_varchar2(v_username, p_password);',
'    v_userCount    int;',
'begin',
'    select count(*) into v_userCount',
'    from USERS',
'    where UserName = v_userName',
'    and   Password = apex_util.get_hash(v_valuesToHash, null);',
' ',
'    return v_userCount = 1;',
'end;',
''))
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(27368484284343268717)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(27368346242994268612)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(27368451443393268694)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--classic'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(27368484033557268717)
,p_nav_bar_list_template_id=>wwv_flow_api.id(27368451068719268694)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200315172923'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Home'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200607132528'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146526304533811579048)
,p_plug_name=>'Demo Application'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Welcome, &APP_USER.! The purpose of this application is to demonstrate the various',
'techniques used in APEX applications. Please feel free to explore its pages.',
'',
'The regions on this page illustrate ways that static content regions get used. Most regions',
'format their content using HTML tags such as <a>, <img>, and <table>. This region does not.'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146527137230219612889)
,p_plug_name=>'Sample Database'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<b>DEPT</b>(<u>DeptNo</u>, DName, Loc)',
'</p><p>',
'<table border=0>',
'<tr>',
'      <td><b>EMP</b>(</td>',
'      <td><u>EmpNo</u>, EName, Job, Mgr, HireDate, </td>',
'</tr>',
'<tr>',
'     <td> </td>',
'      <td>Sal, Comm, <i>DeptNo</i>, Offsite) </td>',
'</tr>',
'</table>',
'</p>',
'<ul>',
'<li> The underlined fields DeptNo and EmpNo are keys.',
'<li> The italicized field DeptNo is a foreign key of DEPT.',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146527138248251614220)
,p_plug_name=>'References'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'<li><a href="https://docs.oracle.com/en/database/oracle/application-express/20.1/htmdb/index.html">',
'      APEX App Builder Guide </a></li>',
'<li><a href="http://asktom.oracle.com/pls/apex/f?p=100:1">',
'      Ask Tom: An Oracle Help Site </a></li>',
'<li><a href="understanding_apex/r/employee-demo/2?session=&APP_SESSION.">',
'      The Region Practice page</a></li>',
'</ul>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146528128023618063628)
,p_plug_name=>'Quick Link'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align=center>',
'<a href="f?p=&APP_ID.:3:&APP_SESSION.">',
'<img src="&APP_IMAGES.employees.jpg">',
'</a><br>',
'Employees',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Region Practice'
,p_alias=>'REGION-PRACTICE'
,p_step_title=>'Region Practice'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200510171611'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86873493285883880685)
,p_plug_name=>'<I>My First Region</i>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>'This is my first region.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86873493407830880686)
,p_plug_name=>'<b>My Second Region</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>9
,p_plug_display_point=>'BODY'
,p_plug_source=>'This is my second region. It is no longer in the right sidebar. '
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(86873493497993880687)
,p_name=>'<span style="color:red">My Third Region</span>'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_display_column=>3
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from DEPT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41335725930071550387)
,p_query_column_id=>1
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>1
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41335726336378550388)
,p_query_column_id=>2
,p_column_alias=>'DNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dname'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41335726724176550388)
,p_query_column_id=>3
,p_column_alias=>'LOC'
,p_column_display_sequence=>3
,p_column_heading=>'Loc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Classic Reports'
,p_alias=>'CLASSIC-REPORTS'
,p_step_title=>'Classic Reports'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200327010657'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(54528008376058475151)
,p_name=>'Formatted Report'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.*,',
'     case when e.Sal>2500 then ''red'' else ''black'' end as SalColor,',
'     case when e.Offsite = ''Y'' then ''checkgreen.jpg''',
'          else ''checkred.jpg'' end as OffsiteImage,',
'     extract(year from e.HireDate) as HireYear',
'from EMP e'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427110523722976532)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427110962290976533)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-size:150%;',
'             font-weight:bold">#ENAME#</span> the #JOB#'))
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427111351486976533)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427111720837976534)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427112069008976534)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'<i>Hiredate</i>'
,p_use_as_row_header=>'N'
,p_column_format=>'Mon DD, YYYY'
,p_column_link=>'http://infoplease.com/year/#HIREYEAR#.html'
,p_column_linktext=>'#HIREDATE#'
,p_column_link_attr=>'target="_blank"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427112463249976534)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:#SALCOLOR#">#SAL#</span>',
''))
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427112841974976535)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427113188283976535)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'Department'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo ',
'from DEPT'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427113595370976535)
,p_query_column_id=>9
,p_column_alias=>'OFFSITE'
,p_column_display_sequence=>9
,p_column_heading=>'Offsite'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="&APP_IMAGES.#OFFSITEIMAGE#">'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427113984953976536)
,p_query_column_id=>10
,p_column_alias=>'SALCOLOR'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427114413863976536)
,p_query_column_id=>11
,p_column_alias=>'OFFSITEIMAGE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27427114864319976536)
,p_query_column_id=>12
,p_column_alias=>'HIREYEAR'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(54528009509513475162)
,p_name=>'Default Report'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from EMP'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27408969238160310125)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27408969312475310126)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27408969426651310127)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27408969545776310128)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'Mgr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27408969640184310129)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Hiredate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27408969755482310130)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27408969826277310131)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'Comm'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27408969905893310132)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27408969991347310133)
,p_query_column_id=>9
,p_column_alias=>'OFFSITE'
,p_column_display_sequence=>9
,p_column_heading=>'Offsite'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Charts'
,p_alias=>'CHARTS'
,p_step_title=>'Charts'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200510182458'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27956241812053250918)
,p_plug_name=>'Salary Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Job, Min(Sal) as MinSal, Max(Sal) as MaxSal',
'from EMP',
'group by Job',
'order by MinSal'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(27956242052936250920)
,p_region_id=>wwv_flow_api.id(27956241812053250918)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(27956242094045250921)
,p_chart_id=>wwv_flow_api.id(27956242052936250920)
,p_seq=>10
,p_name=>'MinSal'
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'MINSAL'
,p_items_label_column_name=>'JOB'
,p_color=>'MAROON'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_style=>'normal'
,p_items_label_font_size=>'12'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(27956242780363250928)
,p_chart_id=>wwv_flow_api.id(27956242052936250920)
,p_seq=>20
,p_name=>'MaxSal'
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'MAXSAL'
,p_items_label_column_name=>'JOB'
,p_color=>'GOLD'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(27956244241293250942)
,p_chart_id=>wwv_flow_api.id(27956242052936250920)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(27956242206072250922)
,p_chart_id=>wwv_flow_api.id(27956242052936250920)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(27956242344683250923)
,p_chart_id=>wwv_flow_api.id(27956242052936250920)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27956241890149250919)
,p_plug_name=>'Employee Counts'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Job, count(*) as EmpCount,',
'case Job when ''ANALYST''   then ''#D6EAF8''',
'         when ''CLERK''     then ''#AED6F1''',
'         when ''MANAGER''   then ''#5DADE2''',
'         when ''PRESIDENT'' then ''#3498DB''',
'         when ''SALESMAN''  then ''#1B4F72'' ',
'         end as JobColor',
'from EMP',
'group by Job',
'order by EmpCount desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(27956242449898250924)
,p_region_id=>wwv_flow_api.id(27956241890149250919)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(27956242527334250925)
,p_chart_id=>wwv_flow_api.id(27956242449898250924)
,p_seq=>10
,p_name=>'EmpCount'
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'EMPCOUNT'
,p_items_label_column_name=>'JOB'
,p_color=>'&JOBCOLOR.'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LBL_VAL'
,p_threshold_display=>'onIndicator'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Interactive Reports'
,p_alias=>'INTERACTIVE-REPORTS'
,p_step_title=>'Interactive Reports'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200327015849'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27956244827892250948)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368397789414268654)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from EMP'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employees'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27956244955535250949)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'SCIORE@BC.EDU'
,p_internal_uid=>997690877853521640
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27956245074571250950)
,p_db_column_name=>'EMPNO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Empno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27956245087089250951)
,p_db_column_name=>'ENAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ename'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27956245215093250952)
,p_db_column_name=>'JOB'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Job'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27956245315269250953)
,p_db_column_name=>'MGR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mgr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27956245468476250954)
,p_db_column_name=>'HIREDATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27956245574399250955)
,p_db_column_name=>'SAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Sal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27956245587315250956)
,p_db_column_name=>'COMM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Comm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27956245690965250957)
,p_db_column_name=>'DEPTNO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Deptno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27956245841774250958)
,p_db_column_name=>'OFFSITE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Offsite'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(28263770247600100500)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'13052162'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO:OFFSITE'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Contact Info'
,p_alias=>'CONTACT-INFO'
,p_page_mode=>'MODAL'
,p_step_title=>'Contact Info'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(27368360376854268625)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200508204723'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56325677498660974829)
,p_plug_name=>'Message'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Alert--removeHeading:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(27368368599150268632)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'You can email the author at sciore@bc.edu.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'List Practice'
,p_alias=>'LIST-PRACTICE'
,p_step_title=>'List Practice'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200327135317'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27956245941657250959)
,p_plug_name=>'References using Cards'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--compact:t-Cards--cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(28390167259694791353)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(27368439401189268686)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28424240926114680110)
,p_plug_name=>'References using Links'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(28390167259694791353)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(27368445051044268690)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28424240989627680111)
,p_plug_name=>'References as a Menu Bar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(28390167259694791353)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(27368449420270268693)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28424241174541680112)
,p_plug_name=>'Navigation Menu'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368406540362268661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(27368346242994268612)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(27368451068719268694)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28424241185175680113)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-Form--large:margin-top-sm:margin-bottom-sm:margin-left-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368372303878268635)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(27368345701959268612)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27368463265909268703)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Item Sampler'
,p_alias=>'PAGE-SAMPLER'
,p_step_title=>'Item Sampler'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200804225658'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57998921076150213942)
,p_plug_name=>'Text-Based Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57998921079386213943)
,p_plug_name=>'Single-Value List Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57998921236556213944)
,p_plug_name=>'Radio Groups'
,p_parent_plug_id=>wwv_flow_api.id(57998921079386213943)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57998921352181213945)
,p_plug_name=>'Select Lists'
,p_parent_plug_id=>wwv_flow_api.id(57998921079386213943)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57998921415414213946)
,p_plug_name=>'Popup Lists'
,p_parent_plug_id=>wwv_flow_api.id(57998921079386213943)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57998921481830213947)
,p_plug_name=>'Multi-Value List Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57998921606723213948)
,p_plug_name=>'Yes/No Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57998921766185213949)
,p_plug_name=>'Some Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28526975789426032796)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57998921766185213949)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_EMPNO,P8_JOB,P8_SALARY:9999,CLERK,'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28526976211435032797)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(57998921766185213949)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526973542796032793)
,p_name=>'P8_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57998921076150213942)
,p_prompt=>'Emp No'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo',
'from EMP',
'where Job = ''PRESIDENT'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_cMaxlength=>5
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_02=>'9999'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526973910791032794)
,p_name=>'P8_JOB'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57998921076150213942)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job',
'from EMP',
'order by Job'))
,p_cSize=>10
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460840302268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'EXACT_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526974290050032794)
,p_name=>'P8_SALARY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(57998921076150213942)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>6
,p_cMaxlength=>6
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526974717988032795)
,p_name=>'P8_HIREDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(57998921076150213942)
,p_prompt=>'Hire Date'
,p_format_mask=>'Month DD, YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>18
,p_cMaxlength=>18
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'-5y'
,p_attribute_03=>'+5y'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526975107168032795)
,p_name=>'P8_COLOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(57998921076150213942)
,p_prompt=>'Favorite Color'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_colspan=>7
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Maroon'
,p_quick_pick_value_01=>'MAROON'
,p_quick_pick_label_02=>'Gold'
,p_quick_pick_value_02=>'GOLD'
,p_quick_pick_label_03=>'Royal Blue'
,p_quick_pick_value_03=>'#3235EB'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526976902137032798)
,p_name=>'P8_YN_SELECT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57998921606723213948)
,p_prompt=>'Email Me'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:No,Yes'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526977332361032799)
,p_name=>'P8_YN_CHECKBOX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(57998921606723213948)
,p_prompt=>'Email Me'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC: ;Yes'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526977726094032799)
,p_name=>'P8_YN_RADIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57998921606723213948)
,p_prompt=>'Email Me'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:No;No,Yes;Yes'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526978097527032799)
,p_name=>'P8_YN_SWITCH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(57998921606723213948)
,p_prompt=>'Email Me'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526978831908032800)
,p_name=>'P8_M_SELECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57998921481830213947)
,p_prompt=>'Depts'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_cHeight=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526979261773032801)
,p_name=>'P8_CHECKBOX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(57998921481830213947)
,p_prompt=>'Depts'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'2'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526979589122032801)
,p_name=>'P8_SHUTTLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(57998921481830213947)
,p_prompt=>'Depts'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526980017769032802)
,p_name=>'P8_LIST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(57998921481830213947)
,p_prompt=>'Depts'
,p_display_as=>'NATIVE_LIST_MANAGER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'FIRST_ROWSET'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526981061305032803)
,p_name=>'P8_POPUP_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57998921415414213946)
,p_prompt=>'Dept Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_cSize=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526981303690032803)
,p_name=>'P8_POPUP_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57998921415414213946)
,p_prompt=>'Dept No'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DeptNo as DisplayVal, DeptNo as ResultVal',
'from DEPT',
'order by DisplayVal'))
,p_cSize=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526981739921032804)
,p_name=>'P8_POPUP_INFO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(57998921415414213946)
,p_prompt=>'Dept Info'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.DName || '' ('' || count(e.EmpNo) || '' employees)'' as DisplayVal,',
'       d.DeptNo as ResultVal',
'from DEPT d left join EMP e on d.DeptNo = e.DeptNo',
'group by d.DeptNo, d.DName',
'order by DisplayVal'))
,p_cSize=>20
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526982413163032805)
,p_name=>'P8_SELECT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57998921352181213945)
,p_prompt=>'Dept Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526982806250032805)
,p_name=>'P8_SELECT_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57998921352181213945)
,p_prompt=>'Dept No'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DeptNo as DisplayVal, DeptNo as ResultVal',
'from DEPT',
'order by DisplayVal'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526983228251032805)
,p_name=>'P8_SELECT_INFO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(57998921352181213945)
,p_prompt=>'Dept Info'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.DName || '' ('' || count(e.EmpNo) || '' employees)'' as DisplayVal,',
'       d.DeptNo as ResultVal',
'from DEPT d left join EMP e on d.DeptNo = e.DeptNo',
'group by d.DeptNo, d.DName',
'order by DisplayVal'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526983967440032806)
,p_name=>'P8_RADIO_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57998921236556213944)
,p_prompt=>'Dept Name'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526984361126032807)
,p_name=>'P8_RADIO_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57998921236556213944)
,p_prompt=>'Dept No'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DeptNo as DisplayVal, DeptNo as ResultVal',
'from DEPT',
'order by DisplayVal'))
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28526984715093032807)
,p_name=>'P8_RADIO_INFO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(57998921236556213944)
,p_prompt=>'Dept Info'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.DName || '' ('' || count(e.EmpNo) || '' employees)'' as DisplayVal,',
'       d.DeptNo as ResultVal',
'from DEPT d left join EMP e on d.DeptNo = e.DeptNo',
'group by d.DeptNo, d.DName',
'order by DisplayVal'))
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43209805088258499117)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SampleProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Filter by Job and Department'
,p_alias=>'FILTER-BY-JOB-AND-DEPARTMENT'
,p_step_title=>'Filter by Job and Department'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713015640'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28424242449744680125)
,p_plug_name=>'Select Values'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28424242760519680128)
,p_name=>'Matching Employees'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo, EName, Job, Sal, DeptNo',
'from EMP',
'where (:P9_JOB is null  or  Job = :P9_JOB)',
'and   (:P9_DEPTNO is null  or  DeptNo = :P9_DEPTNO)',
'order by EName',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424242791711680129)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424242881380680130)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424242999219680131)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424243173243680132)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424243202792680133)
,p_query_column_id=>5
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>5
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28424243320016680134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(28424242449744680125)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28424242534912680126)
,p_name=>'P9_JOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28424242449744680125)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job as DisplayVal, Job as ResultVal',
'from EMP',
'order by DisplayVal'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28424242584775680127)
,p_name=>'P9_DEPTNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28424242449744680125)
,p_prompt=>'Dept'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Filter by Possible Department'
,p_alias=>'FILTER-BY-POSSIBLE-DEPARTMENT'
,p_step_title=>'Filter by Possible Department'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713013755'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28424243451092680135)
,p_plug_name=>'Select Some Departments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28424243480393680136)
,p_name=>'Matching Employees'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo, EName, Job, Sal, DeptNo',
'from EMP',
'where InStr( '':'' || :P10_DEPTNO || '':'',    '':'' || DeptNo || '':'' )  >  0',
'order by EName',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424243734491680138)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424243786769680139)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424243909516680140)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424243980940680141)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424244139347680142)
,p_query_column_id=>5
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>5
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28424244245626680143)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(28424243451092680135)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28424243619294680137)
,p_name=>'P10_DEPTNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28424243451092680135)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName',
''))
,p_field_template=>wwv_flow_api.id(27368460418311268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Filter by Salary Range'
,p_alias=>'FILTER-BY-SALARY-RANGE'
,p_step_title=>'Filter by Salary Range'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713013855'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28424244335705680144)
,p_plug_name=>'Employees Filtered by Salary Range'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(28424244448764680145)
,p_region_id=>wwv_flow_api.id(28424244335705680144)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(28424244550433680146)
,p_chart_id=>wwv_flow_api.id(28424244448764680145)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Job, count(*) as EmpCount',
'from EMP',
'where (:P11_MINSAL is null  or  :P11_MINSAL <= Sal)',
'and   (:P11_MAXSAL is null  or  :P11_MAXSAL >= Sal)',
'group by Job',
'order by EmpCount',
''))
,p_items_value_column_name=>'EMPCOUNT'
,p_items_label_column_name=>'JOB'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(28424244649733680147)
,p_chart_id=>wwv_flow_api.id(28424244448764680145)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(28424244691503680148)
,p_chart_id=>wwv_flow_api.id(28424244448764680145)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Count of Employees'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_min_step=>1
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28424245077475680151)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(28424244335705680144)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28424244873130680149)
,p_name=>'P11_MINSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28424244335705680144)
,p_prompt=>'Min Sal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28424244906800680150)
,p_name=>'P11_MAXSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28424244335705680144)
,p_prompt=>'Max Sal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Employees by Department'
,p_alias=>'EMPLOYEES-BY-DEPARTMENT'
,p_step_title=>'Employees by Department'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200529184521'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28424245153189680152)
,p_name=>'Departments'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.DName,  d.Loc,  count(e.EmpNo) as EmpCount,  d.DeptNo',
'from EMP e  right join  DEPT d',
'on  e.DeptNo = d.DeptNo',
'group by d.DeptNo, d.DName, d.Loc',
'order by DName'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424245827699680159)
,p_query_column_id=>1
,p_column_alias=>'DNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Dname'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833607051998018010)
,p_query_column_id=>2
,p_column_alias=>'LOC'
,p_column_display_sequence=>2
,p_column_heading=>'Loc'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833607090638018011)
,p_query_column_id=>3
,p_column_alias=>'EMPCOUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Empcount'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833607239783018012)
,p_query_column_id=>4
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::P12_DEPTNO,P12_DNAME:#DEPTNO#,#DNAME#'
,p_column_linktext=>'Click for details'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28424245290676680154)
,p_name=>'Employee Details: &P12_DNAME. department'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo, EName, Job, Sal',
'from EMP',
'where DeptNo = :P12_DEPTNO',
'order by EName'))
,p_display_when_condition=>':P12_DEPTNO is not null'
,p_display_condition_type=>'SQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424245465378680155)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424245528206680156)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424245656043680157)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28424245732110680158)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28424245181774680153)
,p_name=>'P12_DEPTNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28424245153189680152)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28833608518699018025)
,p_name=>'P12_DNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28424245153189680152)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Employees by Job'
,p_alias=>'EMPLOYEES-BY-JOB'
,p_step_title=>'Employees by Job'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200427022016'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28833607291441018013)
,p_plug_name=>'Employee Count by Job'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Job, count(*) as EmpCount',
'from EMP',
'group by Job',
'order by EmpCount desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(28833607389232018014)
,p_region_id=>wwv_flow_api.id(28833607291441018013)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(28833607529937018015)
,p_chart_id=>wwv_flow_api.id(28833607389232018014)
,p_seq=>10
,p_name=>'EmployeeCount'
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'EMPCOUNT'
,p_items_label_column_name=>'JOB'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'VALUE'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_JOB:&JOB.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28833607878676018019)
,p_name=>'Employee Details: &P13_JOB.'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.EmpNo, e.EName, d.DName, e.Sal',
'from EMP e join DEPT d',
'on    e.DeptNo = d.DeptNo',
'where e.Job = :P13_JOB',
'order by EName'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833608024861018020)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833608164947018021)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833608271456018022)
,p_query_column_id=>3
,p_column_alias=>'DNAME'
,p_column_display_sequence=>3
,p_column_heading=>'Dname'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833608308145018023)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28833607816121018018)
,p_name=>'P13_JOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28833607291441018013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Cascading Lists'
,p_alias=>'CASCADING-LISTS'
,p_step_title=>'Cascading Lists'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200323224611'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28833608675315018026)
,p_name=>'Get Employee Info'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.EmpNo,  d.DName,  e.Job,  e.Sal,  d.Loc',
'from EMP e join DEPT d',
'on    e.DeptNo = d.DeptNo',
'where e.EmpNo = :P14_EMPNO',
'order by EmpNo'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833608818922018028)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833608976850018029)
,p_query_column_id=>2
,p_column_alias=>'DNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dname'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833609047915018030)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833609100897018031)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833609187752018032)
,p_query_column_id=>5
,p_column_alias=>'LOC'
,p_column_display_sequence=>5
,p_column_heading=>'Loc'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28833609291511018033)
,p_name=>'Get Employee Info Cascaded'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.EmpNo,  d.DName,  e.Job,  e.Sal,  d.Loc',
'from EMP e join DEPT d',
'on    e.DeptNo = d.DeptNo',
'where e.EmpNo = :P14_EMPNO_CASCADE',
'order by EmpNo'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833609607368018036)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833609741896018037)
,p_query_column_id=>2
,p_column_alias=>'DNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dname'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833609819908018038)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833609958620018039)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833610032234018040)
,p_query_column_id=>5
,p_column_alias=>'LOC'
,p_column_display_sequence=>5
,p_column_heading=>'Loc'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28833608683398018027)
,p_name=>'P14_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28833608675315018026)
,p_prompt=>'Choose Employee'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo',
'from EMP',
'order by EName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28833609451239018034)
,p_name=>'P14_FIRST_LETTER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28833609291511018033)
,p_prompt=>'First Letter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FirstLetter as DisplayVal, FirstLetter as ResultVal',
'from  (select distinct substr(EName, 1, 1) as FirstLetter',
'       from EMP)',
'order by DisplayVal'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28833609520652018035)
,p_name=>'P14_EMPNO_CASCADE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28833609291511018033)
,p_prompt=>'Choose Employee'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo',
'from EMP',
'where substr(EName, 1, 1) = :P14_FIRST_LETTER',
'order by EName'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P14_FIRST_LETTER'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Display Table'
,p_alias=>'DISPLAY-TABLE'
,p_step_title=>'Display Table'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200324012838'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57638370433221977043)
,p_plug_name=>'Select Table(s) to Display'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(57638370453537977044)
,p_name=>'Employee Information'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from EMP'
,p_display_when_condition=>'InStr(:P15_CHOICE, ''Employee'') > 0'
,p_display_condition_type=>'SQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869076134346796847)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869076527317796848)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869076917716796848)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869077313231796848)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'Mgr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869077753443796849)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Hiredate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869078109081796849)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869078484717796850)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'Comm'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869078946832796850)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869079329413796850)
,p_query_column_id=>9
,p_column_alias=>'OFFSITE'
,p_column_display_sequence=>9
,p_column_heading=>'Offsite'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(57638370568277977045)
,p_name=>'Department Information'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from DEPT'
,p_display_when_condition=>'InStr(:P15_CHOICE, ''Department'') > 0'
,p_display_condition_type=>'SQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869074613472796845)
,p_query_column_id=>1
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>1
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869074981962796846)
,p_query_column_id=>2
,p_column_alias=>'DNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dname'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28869075386673796846)
,p_query_column_id=>3
,p_column_alias=>'LOC'
,p_column_display_sequence=>3
,p_column_heading=>'Loc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28833610338130018043)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57638370433221977043)
,p_button_name=>'Display'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Display Selection'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28869080058905796851)
,p_name=>'P15_CHOICE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57638370433221977043)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Department,Employee'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Select Region'
,p_alias=>'SELECT-REGION'
,p_step_title=>'Select Region'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200324014531'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28833610383713018044)
,p_plug_name=>'Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368373362431268635)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28833610570845018045)
,p_name=>'Employee'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from EMP'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833610612508018046)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833610735497018047)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833610841568018048)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833610917263018049)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'Mgr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833611019010018050)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Hiredate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833611161025018051)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833611203558018052)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'Comm'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833611329779018053)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833611465308018054)
,p_query_column_id=>9
,p_column_alias=>'OFFSITE'
,p_column_display_sequence=>9
,p_column_heading=>'Offsite'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28833611572464018055)
,p_name=>'Department'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from DEPT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833611627901018056)
,p_query_column_id=>1
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>1
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833611747290018057)
,p_query_column_id=>2
,p_column_alias=>'DNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dname'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28833611831636018058)
,p_query_column_id=>3
,p_column_alias=>'LOC'
,p_column_display_sequence=>3
,p_column_heading=>'Loc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Employee Data Entry'
,p_alias=>'EMPLOYEE-DATA-ENTRY'
,p_step_title=>'Employee Data Entry'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200612164108'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(88528271758460500237)
,p_name=>'Employees'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EMP'
,p_query_order_by=>'EName'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30947650571226198262)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30947650950218198263)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30947651300621198263)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30947651774943198263)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'Mgr'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30947652084755198263)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Hiredate'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30947652528287198264)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30947652943818198264)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'Comm'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30947653307155198264)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30947653742740198265)
,p_query_column_id=>9
,p_column_alias=>'OFFSITE'
,p_column_display_sequence=>9
,p_column_heading=>'Offsite'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88528271874171500238)
,p_plug_name=>'Delete Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88528271933049500239)
,p_plug_name=>'Insert Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88528272012797500240)
,p_plug_name=>'Update Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30947654434674198266)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(88528272012797500240)
,p_button_name=>'GetInfo'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Get Info'
,p_button_position=>'ABOVE_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30947657114126198271)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(88528271933049500239)
,p_button_name=>'Insert'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Insert'
,p_button_position=>'ABOVE_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30947654875519198266)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(88528272012797500240)
,p_button_name=>'Update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Update'
,p_button_position=>'ABOVE_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30947659835275198275)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(88528271874171500238)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30947655221875198267)
,p_name=>'P17_UPDATE_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88528272012797500240)
,p_prompt=>'Emp'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo from EMP',
'order by EName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30947655654298198268)
,p_name=>'P17_UPDATE_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(88528272012797500240)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job as DisplayVal, Job as ResultVal',
'from EMP',
'order by Job'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30947656054467198269)
,p_name=>'P17_UPDATE_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(88528272012797500240)
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30947656476375198270)
,p_name=>'P17_UPDATE_DEPTNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(88528272012797500240)
,p_prompt=>'Dept'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DName as DisplayVal, DeptNo as ResultVal',
'from DEPT',
'order by DisplayVal'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30947657494135198271)
,p_name=>'P17_INSERT_ENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88528271933049500239)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30947657973051198272)
,p_name=>'P17_INSERT_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(88528271933049500239)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job as DisplayVal,',
'Job as ResultVal',
'from EMP',
'order by Job'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30947658339578198272)
,p_name=>'P17_INSERT_MGR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(88528271933049500239)
,p_prompt=>'Mgr'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct EName, EmpNo',
'from EMP',
'where Job = ''MANAGER'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30947658763094198273)
,p_name=>'P17_INSERT_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(88528271933049500239)
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30947659168072198273)
,p_name=>'P17_INSERT_DEPTNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(88528271933049500239)
,p_prompt=>'Dept'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DName, DeptNo',
'from DEPT',
'order by DName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30947660185463198275)
,p_name=>'P17_DELETE_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88528271874171500238)
,p_prompt=>'Emp'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo from EMP',
'order by EName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30947661778916198279)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DeleteEmp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete from EMP',
'    where EmpNo = :P17_DELETE_EMPNO;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30947659835275198275)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30947660582331198278)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InsertEmp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into EMP (EName, Job, Mgr, Sal, DeptNo, HireDate, Comm, Offsite)',
'    values (:P17_INSERT_ENAME,',
'            :P17_INSERT_JOB,',
'            :P17_INSERT_MGR,',
'            :P17_INSERT_SAL,',
'            :P17_INSERT_DEPTNO,',
'            current_date,  0,  ''N'');',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30947657114126198271)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30947661065840198278)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetEmpInfo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select  Job, Sal, DeptNo',
'    into :P17_UPDATE_JOB, :P17_UPDATE_SAL, :P17_UPDATE_DEPTNO',
'    from EMP',
'    where EmpNo = :P17_UPDATE_EMPNO;',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30947654434674198266)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30947661477220198279)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateEmp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update EMP',
'    set Job    = :P17_UPDATE_JOB,',
'        Sal    = :P17_UPDATE_SAL,',
'        DeptNo = :P17_UPDATE_DEPTNO',
'    where EmpNo = :P17_UPDATE_EMPNO;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30947654875519198266)
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Sales Commission'
,p_alias=>'SALES-COMMISSION'
,p_step_title=>'Sales Commission'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200607230634'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59811315277671646256)
,p_plug_name=>'Solo Commission'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59816138462731072107)
,p_plug_name=>'Enter Sale'
,p_parent_plug_id=>wwv_flow_api.id(59811315277671646256)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59816138941282072112)
,p_plug_name=>'Commission Info'
,p_parent_plug_id=>wwv_flow_api.id(59811315277671646256)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59816138480315072108)
,p_plug_name=>'Shared Commission'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59816138620246072109)
,p_plug_name=>'Enter Sale'
,p_parent_plug_id=>wwv_flow_api.id(59816138480315072108)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59816138717698072110)
,p_plug_name=>'Commission Info'
,p_parent_plug_id=>wwv_flow_api.id(59816138480315072108)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31023183036997889321)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(59816138462731072107)
,p_button_name=>'SubmitSolo'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'ABOVE_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31023187783278889328)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(59816138620246072109)
,p_button_name=>'SubmitShared'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'ABOVE_BOX'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31023183471556889321)
,p_name=>'P18_SOLO_SALESMAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(59816138462731072107)
,p_prompt=>'Salesman'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo ',
'from EMP',
'where Job = ''SALESMAN''',
'order by EName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31023183809741889323)
,p_name=>'P18_SOLO_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(59816138462731072107)
,p_prompt=>'Sale Amt'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31023184553738889324)
,p_name=>'P18_SOLO_PREV_COMMISSION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(59816138941282072112)
,p_prompt=>'Previous<br>Commission'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31023184879407889324)
,p_name=>'P18_SOLO_SALE_COMMISSION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(59816138941282072112)
,p_prompt=>'Commission From Sale'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31023185369057889325)
,p_name=>'P18_SOLO_NEW_COMMISSION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(59816138941282072112)
,p_prompt=>'New Commission'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31023186353331889326)
,p_name=>'P18_SHARED_SALE_COMMISSION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(59816138717698072110)
,p_prompt=>'Commission From Sale'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31023186698263889326)
,p_name=>'P18_SHARED_COMMISSION_EACH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(59816138717698072110)
,p_prompt=>'Commission Each'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31023187171937889327)
,p_name=>'P18_SHARED_NEW_COMMISSIONS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(59816138717698072110)
,p_prompt=>'New<br>Commissions'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>12
,p_cHeight=>3
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31023188248002889328)
,p_name=>'P18_SHARED_SALESMAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(59816138620246072109)
,p_prompt=>'Salesman'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo ',
'from EMP',
'where Job = ''SALESMAN''',
'order by EName'))
,p_cHeight=>4
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31023188605278889328)
,p_name=>'P18_SHARED_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(59816138620246072109)
,p_prompt=>'Sale Amt'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31023189039638889329)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SoloSale'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_amount int := :P18_SOLO_AMOUNT;',
'    v_saleCommission number(7,2);',
'    v_prevCommission number(7,2);',
'    v_newCommission  number(7,2);',
'begin',
'    -- Step 1: Calculate the new commission as 15% of the first $100',
'    -- and then 10% of the remaining sale price.',
'',
'if v_amount > 100 then',
'            v_amount := v_amount - 100;',
'            v_saleCommission := 15 + (v_amount * 0.1);',
'    else',
'            v_saleCommission := v_amount * 0.15;',
'    end if;',
'    -- Step 2: Retrieve the previous commission from EMP',
'    -- and calculate the new commission.',
'    select Comm',
'    into v_prevCommission',
'    from EMP',
'    where EmpNo = :P18_SOLO_SALESMAN; -- add "for update"',
'    v_newCommission := v_prevCommission + v_saleCommission; ',
'    ',
'--      DBMS_SESSION.sleep(10); -- for testing purposes',
'    ',
'    -- Step 3: Update the employee''s record.',
'    update EMP',
'    set Comm = v_newCommission',
'    where EmpNo = :P18_SOLO_SALESMAN;',
'    -- Step 4: Compute the item values.',
'    :P18_SOLO_SALE_COMMISSION := v_saleCommission;',
'    :P18_SOLO_PREV_COMMISSION := v_prevCommission;',
'    :P18_SOLO_NEW_COMMISSION  := v_newCommission;',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31023183036997889321)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31023189474347889329)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SharedSale'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_saleCommission number(7,2);',
'    v_amount         int := :P18_SHARED_AMOUNT;',
'    v_empCount       int;',
'    v_commissionEach number(7,2);',
'    v_empInfo        varchar2(25);',
'    v_output         varchar2(250) := '''';',
'begin',
'    -- Step 1: Calculate the new commission as 15% of the first $100',
'    -- and then 10% of the remaining sale price.',
'    if v_amount > 100 then',
'          v_amount := v_amount - 100;',
'          v_saleCommission := 15 + (v_amount * 0.1);',
'    else',
'          v_saleCommission := v_amount * 0.15;',
'    end if;',
'    -- Step 2: Determine the shared commission.',
'    v_empcount := 1 + length(:P18_SHARED_SALESMAN)',
'                    - length(replace(:P18_SHARED_SALESMAN, '':'', '''' ));',
'    v_commissionEach := v_saleCommission / v_empcount;',
'    -- Step 3: Update the EMP table.',
'    update EMP',
'    set Comm = Comm + v_commissionEach',
'    where instr( '':''||:P18_SHARED_SALESMAN||'':'',  '':''||EmpNo||'':'' ) > 0;',
'    -- Step 4: Use a loop to collect employee info.',
'    for row in (',
'        select EName, Comm',
'        from EMP',
'        where instr( '':''||:P18_SHARED_SALESMAN||'':'',  '':''||EmpNo||'':'' ) > 0 )',
'    loop',
'          v_empInfo := row.EName || '': '' || row.Comm || chr(13);',
'          v_output := v_output || v_empInfo;',
'end loop;',
'    -- Step 5: Write the item values.',
'    :P18_SHARED_SALE_COMMISSION := v_saleCommission;',
'    :P18_SHARED_COMMISSION_EACH  := v_commissionEach;',
'    :P18_SHARED_NEW_COMMISSIONS  := v_output;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31023187783278889328)
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Revised Emp Data Entry'
,p_alias=>'REVISED-EMP-DATA-ENTRY'
,p_step_title=>'Revised Emp Data Entry'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200816122817'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(92617247740593125613)
,p_name=>'Employees'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EMP'
,p_query_order_by=>'EName'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31047538743198358686)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31047539100106358687)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31047539572574358687)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31047539964994358687)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'Mgr'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31047540328061358688)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Hiredate'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31047537088257358684)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31047537479262358685)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'Comm'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31047537946760358686)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31047538290077358686)
,p_query_column_id=>9
,p_column_alias=>'OFFSITE'
,p_column_display_sequence=>9
,p_column_heading=>'Offsite'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92617247856304125614)
,p_plug_name=>'Delete Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92617247915182125615)
,p_plug_name=>'Insert Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92617247994930125616)
,p_plug_name=>'Update Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31047543754604358693)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(92617247915182125615)
,p_button_name=>'Insert'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Insert'
,p_button_position=>'ABOVE_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31047546393748358695)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(92617247856304125614)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31047541442970358689)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(92617247994930125616)
,p_button_name=>'Update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Update'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29469880477520997032)
,p_name=>'P19_ORIGINAL_JOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(92617247994930125616)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29469880552945997033)
,p_name=>'P19_ORIGINAL_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(92617247994930125616)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29469880583253997034)
,p_name=>'P19_ORIGINAL_DEPTNO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(92617247994930125616)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29469880768346997035)
,p_name=>'P19_HASH'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(92617247994930125616)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29469881095727997039)
,p_name=>'P19_DELETE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(92617247856304125614)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31047541794790358690)
,p_name=>'P19_UPDATE_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(92617247994930125616)
,p_prompt=>'Select Employee'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo from EMP',
'order by EName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31047542250049358691)
,p_name=>'P19_UPDATE_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(92617247994930125616)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job as DisplayVal, Job as ResultVal',
'from EMP',
'order by Job'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31047542626068358691)
,p_name=>'P19_UPDATE_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(92617247994930125616)
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31047543052093358691)
,p_name=>'P19_UPDATE_DEPTNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(92617247994930125616)
,p_prompt=>'Dept'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DName as DisplayVal, DeptNo as ResultVal',
'from DEPT',
'order by DisplayVal'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31047544103934358693)
,p_name=>'P19_INSERT_ENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(92617247915182125615)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>50
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31047544568915358693)
,p_name=>'P19_INSERT_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(92617247915182125615)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job as DisplayVal,',
'Job as ResultVal',
'from EMP',
'order by Job'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31047544926912358694)
,p_name=>'P19_INSERT_MGR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(92617247915182125615)
,p_prompt=>'Mgr'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct EName, EmpNo',
'from EMP',
'where Job = ''MANAGER'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31047545331819358694)
,p_name=>'P19_INSERT_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(92617247915182125615)
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31047545679596358694)
,p_name=>'P19_INSERT_DEPTNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(92617247915182125615)
,p_prompt=>'Dept'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DName, DeptNo',
'from DEPT',
'order by DName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31047546820832358696)
,p_name=>'P19_DELETE_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(92617247856304125614)
,p_prompt=>'Emp'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo from EMP',
'order by EName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33282080264050732521)
,p_validation_name=>'DontDeleteThePresident'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from EMP',
'where EmpNo = :P19_DELETE_EMPNO',
'and Job = ''PRESIDENT'''))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'You cannot delete the president''s record'
,p_when_button_pressed=>wwv_flow_api.id(31047546393748358695)
,p_associated_item=>wwv_flow_api.id(31047546820832358696)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33282080401473732523)
,p_validation_name=>'DontUpdateThePresident'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from EMP',
'where EmpNo = :P19_UPDATE_EMPNO',
'and Job = ''PRESIDENT'''))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'You cannot update the president''s record'
,p_when_button_pressed=>wwv_flow_api.id(31047541442970358689)
,p_associated_item=>wwv_flow_api.id(31047541794790358690)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33282080346405732522)
,p_validation_name=>'InsertedSalaryNotTooLarge'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from EMP',
'where Job = ''PRESIDENT'' and :P19_INSERT_SAL > Sal'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'The salary cannot be higher than the president''s'
,p_when_button_pressed=>wwv_flow_api.id(31047543754604358693)
,p_associated_item=>wwv_flow_api.id(31047545331819358694)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33282080541843732524)
,p_validation_name=>'UpdatedSalaryNotTooLarge'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from EMP',
'where Job = ''PRESIDENT'' and :P19_UPDATE_SAL > Sal'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'The salary cannot be higher than the president''s'
,p_when_button_pressed=>wwv_flow_api.id(31047541442970358689)
,p_associated_item=>wwv_flow_api.id(31047542626068358691)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33282080673492732525)
,p_validation_name=>'WorkingHoursOnly'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'extract(hour from current_timestamp) >= 9',
'and',
'extract(hour from current_timestamp) < 17'))
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'You can change the database only ',
'between 9am and 5pm'))
,p_validation_condition=>':REQUEST in (''Insert'', ''Update'', ''Delete'')'
,p_validation_condition_type=>'SQL_EXPRESSION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33282080912722732528)
,p_validation_name=>'SalaryFormat'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'regexp_like( :P19_INSERT_SAL, ',
'            ''^\d{0,5}\.{0,1}\d{0,2}$'' )'))
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>'Salary must have the format NUMBER(7,2)'
,p_when_button_pressed=>wwv_flow_api.id(31047543754604358693)
,p_associated_item=>wwv_flow_api.id(31047545331819358694)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43209805193827499118)
,p_validation_name=>'DetectLostUpdate'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      v_valuesToHash apex_t_varchar2;',
'begin',
'      -- first re-read the data',
'      select apex_t_varchar2(Job, Sal, DeptNo)',
'      into v_valuesToHash',
'      from EMP',
'      where EmpNo = :P19_UPDATE_EMPNO for update;',
' ',
'      -- then compare it with the original data',
'      if :P19_HASH = apex_util.get_hash(v_valuesToHash) then',
'            return TRUE;',
'      else',
'            return FALSE;',
'      end if;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The record is out of date. Please get it again.'
,p_when_button_pressed=>wwv_flow_api.id(31047541442970358689)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31047548471192358698)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DeleteEmp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete from EMP',
'    where EmpNo = :P19_DELETE_EMPNO;',
'',
':P19_DELETE_COUNT := SQL%RowCount;',
'end;'))
,p_process_error_message=>'There was a problem deleting your record.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31047546393748358695)
,p_process_success_message=>'Your record was deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31047547221830358697)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InsertEmp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into EMP (EName, Job, Mgr, Sal, DeptNo, HireDate, Comm, Offsite)',
'    values (:P19_INSERT_ENAME,',
'            :P19_INSERT_JOB,',
'            :P19_INSERT_MGR,',
'            :P19_INSERT_SAL,',
'            :P19_INSERT_DEPTNO,',
'            current_date,  0,  ''N'');',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31047543754604358693)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31047547607249358697)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetEmpInfoOriginal'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- The original version that saved each',
'-- modifiable value in its own hidden item.',
'',
'begin',
'    -- First retrieve the data.',
'    select Job, Sal, DeptNo',
'    into :P19_UPDATE_JOB, :P19_UPDATE_SAL, :P19_UPDATE_DEPTNO',
'    from EMP',
'    where EmpNo = :P19_UPDATE_EMPNO;',
' ',
'    -- Then use hidden items to save a copy of the data.',
'    :P19_ORIGINAL_JOB  := :P19_UPDATE_JOB;',
'    :P19_ORIGINAL_SAL  := :P19_UPDATE_SAL;',
'    :P19_ORIGINAL_DEPTNO := :P19_UPDATE_DEPTNO;',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29469880832204997036)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetEmpInfo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- The improved version, which saves the',
'-- modifiable values as a hash value.',
'',
'declare',
'    v_valuesToHash apex_t_varchar2;',
'begin',
'    -- First retrieve the data.',
'    select Job, Sal, DeptNo',
'    into :P19_UPDATE_JOB,',
'         :P19_UPDATE_SAL,',
'         :P19_UPDATE_DEPTNO',
'    from EMP',
'    where EmpNo = :P19_UPDATE_EMPNO;',
' ',
'    -- Then save the hash of these values.',
'    v_valuesToHash := apex_t_varchar2(:P19_UPDATE_JOB, :P19_UPDATE_SAL,                               :P19_UPDATE_DEPTNO);',
'    :P19_HASH := apex_util.get_hash(v_valuesToHash);',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''P19_UPDATE_EMPNO'''
,p_process_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31047548034230358697)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateEmpOriginal'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- The original version, which retrieved the',
'-- original values from their hidden items.',
'',
'declare',
'    v_newjob  varchar2(9);',
'    v_newsal  number(7,2);',
'    v_newdept number(4,0);',
'begin',
'    -- First re-read the data.',
'    select Job, Sal, DeptNo',
'    into v_newjob, v_newsal, v_newdept',
'    from EMP',
'    where EmpNo = :P19_UPDATE_EMPNO for update;',
'   ',
'    -- Then compare it with the original data.',
'    if :P19_ORIGINAL_JOB = v_newjob and',
'       :P19_ORIGINAL_SAL  = v_newsal and',
'       :P19_ORIGINAL_DEPTNO = v_newdept',
'    then',
'         -- The record hasn''t changed, so update it.',
'         update EMP',
'         set Job    = :P19_UPDATE_JOB,',
'             Sal    = :P19_UPDATE_SAL,',
'             DeptNo = :P19_UPDATE_DEPTNO',
'         where EmpNo = :P19_UPDATE_EMPNO;',
' ',
'    else',
'         -- The record has changed, so abort.',
'         raise_application_error(-20000,',
'                      ''The record is out of date. Get it again.'');',
'    end if;',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29469880919762997037)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateEmp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- The improved version, which retrieves the',
'-- saved hash value.',
'',
'declare',
'    v_valuesToHash apex_t_varchar2;',
'begin',
'    -- First re-read the data.',
'    select apex_t_varchar2(Job, Sal, DeptNo)',
'    into v_valuesToHash',
'    from EMP',
'    where EmpNo = :P19_UPDATE_EMPNO for update;',
' ',
'    -- Then compare it with the original data.',
'    if :P19_HASH = apex_util.get_hash(v_valuesToHash)',
'    then',
'        -- The record hasn''t changed, so update it.',
'        update EMP',
'        set Job    = :P19_UPDATE_JOB,',
'            Sal    = :P19_UPDATE_SAL,',
'            DeptNo = :P19_UPDATE_DEPTNO',
'        where EmpNo = :P19_UPDATE_EMPNO;',
'    else',
'        -- The record has changed, so abort.',
'        raise_application_error(-20000,',
'                     ''The record is out of date. Get it again.'');',
'    end if;',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31047548778904358698)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LogChanges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into EMPLOG (Request, UserName, RequestDate)',
'    values (:REQUEST, :APP_USER, sysdate);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST in (''Insert'', ''Delete'', ''Update'')'
,p_process_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29469881262095997040)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SendSuspiciousEmail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_action varchar2(40);',
'begin',
'  if :REQUEST = ''Delete'' then',
'    v_action := '' deleted the record for emp '' || :P19_DELETE_EMPNO;',
'  else',
'    v_action := '' modified the record for emp '' || :P19_UPDATE_EMPNO;',
'  end if;',
'  apex_mail.send(',
'     p_from => ''APEX@MyCompany.com'',',
'     p_to   => ''sciore@bc.edu'',',
'     p_subj => ''Suspicious changes to EMP'',',
'     p_body => :APP_USER || v_action);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:REQUEST = ''Delete'' or :REQUEST = ''Update'') ',
'and ',
'(extract(HOUR from current_timestamp) > 16  ',
' or ',
' extract(HOUR from current_timestamp) < 9)'))
,p_process_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43209805359643499119)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateEmpNoValidation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'dbms_session.sleep(10);',
'update EMP',
'      set Job    = :P19_UPDATE_JOB,',
'          Sal    = :P19_UPDATE_SAL,',
'          DeptNo = :P19_UPDATE_DEPTNO',
'      where EmpNo = :P19_UPDATE_EMPNO;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31047541442970358689)
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Single Row View'
,p_alias=>'SINGLE-ROW-VIEW'
,p_step_title=>'Single Row View'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200612130114'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69491766866383133066)
,p_name=>'Employees'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>7
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo, EName, Job, Sal, DeptNo',
'from EMP',
'order by EName'))
,p_display_when_condition=>':P20_EMPNO is null'
,p_display_condition_type=>'SQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31681211145726654322)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP,:P20_EMPNO:#EMPNO#'
,p_column_linktext=>'View'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31681211489590654325)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31681211963826654325)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31681212359811654326)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31681212728832654326)
,p_query_column_id=>5
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>5
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69491766941723133067)
,p_plug_name=>'Emp Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'SQL_EXPRESSION'
,p_plug_display_when_condition=>':P20_EMPNO is not null'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31681207244327654318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69491766941723133067)
,p_button_name=>'ReportView'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Report View'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:P20_EMPNO:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31681207632042654318)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(69491766941723133067)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(27368461167068268702)
,p_button_image_alt=>'Previous'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_EMPNO:&P20_PREV.'
,p_button_condition=>':P20_PREV is not null'
,p_button_condition_type=>'SQL_EXPRESSION'
,p_icon_css_classes=>'fa-sm fa-arrow-circle-o-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31681207989516654318)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(69491766941723133067)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--padLeft'
,p_button_template_id=>wwv_flow_api.id(27368461167068268702)
,p_button_image_alt=>'Next'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:P20_EMPNO:&P20_NEXT.'
,p_button_condition=>':P20_NEXT is not null'
,p_button_condition_type=>'SQL_EXPRESSION'
,p_icon_css_classes=>'fa-sm fa-arrow-circle-o-right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681208414923654319)
,p_name=>'P20_ENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69491766941723133067)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681208829634654320)
,p_name=>'P20_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(69491766941723133067)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681209195209654320)
,p_name=>'P20_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(69491766941723133067)
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681209592326654320)
,p_name=>'P20_DEPTNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(69491766941723133067)
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681209981360654321)
,p_name=>'P20_PREV'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(69491766941723133067)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681210422209654321)
,p_name=>'P20_NEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(69491766941723133067)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681213077732654327)
,p_name=>'P20_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69491766866383133066)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31681213538495654328)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchRow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P20_EMPNO is not null then',
'    select EName, Job, Sal, DeptNo',
'    into :P20_ENAME, :P20_JOB, :P20_SAL, :P20_DEPTNO',
'    from EMP',
'    where EmpNo = :P20_EMPNO;',
'  end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31681213882001654328)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FindPreviousNext'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P20_EMPNO is not null then',
'    select PrevEmp, NextEmp',
'    into :P20_PREV, :P20_NEXT',
'    from (select EmpNo, lag(EmpNo)  over (order by EName) as PrevEmp,',
'                        lead(EmpNo) over (order by EName) as NextEmp',
'          from EMP)',
'    where EmpNo = :P20_EMPNO;',
'  end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29469881460005997042)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OldPreviousRow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- This is another, less good way to',
'-- calculate the previous row. It requires',
'-- the "Previous" button to submit',
'',
'declare',
'    v_prevEmp number(4,0);',
'begin',
'    select PrevEmp into v_prevEmp',
'    from (select EmpNo, lag(EmpNo) over (order by EName) as PrevEmp',
'          from EMP)',
'    where EmpNo = :P20_EMPNO;',
'   ',
'    if v_prevEmp is not null then',
'          :P20_EMPNO := v_prevEmp;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31681207632042654318)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29469881479881997043)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OldNextRow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- This is another, less good way to',
'-- calculate the next row. It requires',
'-- the "Next" button to submit',
'',
'declare',
'    v_nextEmp number(4,0);',
'begin',
'    select NextEmp into v_nextEmp',
'    from (select EmpNo, lead(EmpNo) over (order by EName) as NextEmp',
'          from EMP)',
'    where EmpNo = :P20_EMPNO;',
'   ',
'    if v_nextEmp is not null then',
'          :P20_EMPNO := v_nextEmp;',
'    end if;',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31681207989516654318)
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Single Row Update'
,p_alias=>'SINGLE-ROW-UPDATE'
,p_step_title=>'Single Row Update'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713014027'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(60503108307690418119)
,p_name=>'Employees'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo, EName, Job, Mgr, Sal, DeptNo',
'from EMP'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_MODE = ''Report''',
'or :P21_MODE is null'))
,p_display_condition_type=>'SQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31710160215743235495)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_EMPNO,P21_MODE:#EMPNO#,Update'
,p_column_linktext=>'Update'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31710160673427235498)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31710161063919235498)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31710161286951235499)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'Mgr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31710161716709235499)
,p_query_column_id=>5
,p_column_alias=>'SAL'
,p_column_display_sequence=>5
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31710162160679235500)
,p_query_column_id=>6
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>6
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60503108455473418120)
,p_plug_name=>'Insert Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'SQL_EXPRESSION'
,p_plug_display_when_condition=>':P21_MODE = ''Insert'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60503108516170418121)
,p_plug_name=>'Update/Delete Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'SQL_EXPRESSION'
,p_plug_display_when_condition=>':P21_MODE = ''Update'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31710164060438235507)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60503108516170418121)
,p_button_name=>'Update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Update'
,p_button_position=>'ABOVE_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31710167498257235511)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60503108455473418120)
,p_button_name=>'Create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Create'
,p_button_position=>'ABOVE_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31710164454120235508)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(60503108516170418121)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'ABOVE_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31710167958928235511)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(60503108455473418120)
,p_button_name=>'CancelInsert'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Back'
,p_button_position=>'ABOVE_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,:P21_MODE:Report'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31710164871666235508)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(60503108516170418121)
,p_button_name=>'CancelUpdate'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Back'
,p_button_position=>'ABOVE_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,:P21_EMPNO,P21_MODE:,Report'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31710162542259235502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60503108307690418119)
,p_button_name=>'Insert'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Insert'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,:P21_MODE:Insert'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710162909708235503)
,p_name=>'P21_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(60503108307690418119)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710163327347235505)
,p_name=>'P21_EMPNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(60503108307690418119)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710165178986235508)
,p_name=>'P21_UPDATE_ENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(60503108516170418121)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710165648298235509)
,p_name=>'P21_UPDATE_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(60503108516170418121)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job as DisplayVal, Job as ResultVal ',
'from EMP',
'order by DisplayVal'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710166047002235509)
,p_name=>'P21_UPDATE_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(60503108516170418121)
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710166443464235509)
,p_name=>'P21_UPDATE_DEPTNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(60503108516170418121)
,p_prompt=>'Dept'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710166849508235510)
,p_name=>'P21_HASH'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(60503108516170418121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710168346779235512)
,p_name=>'P21_INSERT_ENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(60503108455473418120)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710168756114235512)
,p_name=>'P21_INSERT_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(60503108455473418120)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job as DisplayVal, Job as ResultVal ',
'from EMP',
'order by DisplayVal'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710169089060235512)
,p_name=>'P21_INSERT_MGR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(60503108455473418120)
,p_prompt=>'Mgr'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo ',
'from EMP',
'where Job = ''MANAGER'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710169534505235513)
,p_name=>'P21_INSERT_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(60503108455473418120)
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31710169941513235513)
,p_name=>'P21_INSERT_DEPTNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(60503108455473418120)
,p_prompt=>'Dept'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31710170685626235514)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchRowForUpdate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_valuesToHash apex_t_varchar2;',
'begin',
'  if :P21_EMPNO is not null then',
'    -- First, fetch the employee record and save its values.',
'    select EName, Job, Sal, DeptNo',
'    into :P21_UPDATE_ENAME,',
'         :P21_UPDATE_JOB,',
'         :P21_UPDATE_SAL,',
'         :P21_UPDATE_DEPTNO',
'    from EMP',
'    where EmpNo = :P21_EMPNO;',
'    -- Then save the hash of the updatable values.',
'    v_valuesToHash := apex_t_varchar2(:P21_UPDATE_JOB, :P21_UPDATE_SAL,',
'                                      :P21_UPDATE_DEPTNO);',
'    :P21_HASH := apex_util.get_hash(v_valuesToHash);',
'  end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31710170319837235514)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InsertEmp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into EMP(EName, Job, Mgr, Sal, DeptNo, HireDate, Comm, Offsite)',
'    values (:P21_INSERT_ENAME,',
'            :P21_INSERT_JOB,',
'            :P21_INSERT_MGR,',
'            :P21_INSERT_SAL,',
'            :P21_INSERT_DEPTNO,',
'            current_date,  0,  ''N'');',
'',
'    -- Clear the region''s visible items.',
'    :P21_INSERT_ENAME   := null;',
'    :P21_INSERT_JOB     := null;',
'    :P21_INSERT_MGR := null;',
'    :P21_INSERT_SAL  := null;',
'    :P21_INSERT_DEPTNO  := null;',
'    -- But do not change the mode.',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31710167498257235511)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31710171090941235515)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DeleteEmp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- First, delete the record.',
'    delete from EMP',
'    where EmpNo = :P21_EMPNO;',
'    -- Then return to report mode.',
'    :P21_EMPNO := null;',
'    :P21_MODE := ''Report'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31710164454120235508)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31710171551924235515)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateEmp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_valuesToHash apex_t_varchar2;',
'begin',
'    -- First re-read the data.',
'    select apex_t_varchar2(Job, Sal, DeptNo)',
'    into v_valuesToHash',
'    from EMP',
'    where EmpNo = :P21_EMPNO for update;',
'    -- Then compare it with the original data.',
'    if :P21_HASH = apex_util.get_hash(v_valuesToHash) then',
'        -- The record hasn''t changed, so update it.',
'        update EMP',
'        set Job    = :P21_UPDATE_JOB,',
'            Sal    = :P21_UPDATE_SAL,',
'            DeptNo = :P21_UPDATE_DEPTNO',
'        where EmpNo = :P21_EMPNO;',
'    else',
'        -- The record has changed, so abort.',
'        raise_application_error(-20000,',
'                     ''The record is out of date. Get it again.'');',
'    end if; ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31710164060438235507)
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Filter and Branch'
,p_alias=>'FILTER-AND-BRANCH'
,p_step_title=>'Filter and Branch'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713014142'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33282080985358732529)
,p_plug_name=>'Select Values'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33282081560776732534)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33282080985358732529)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33282082298817732542)
,p_branch_name=>'GoToReport'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(33282081560776732534)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33282081148002732530)
,p_name=>'P22_JOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33282080985358732529)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job as DisplayVal, Job as ResultVal',
'from EMP',
'order by DisplayVal'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33282081261085732531)
,p_name=>'P22_DEPTNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33282080985358732529)
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33282082412640732543)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateRegionTitle'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_title varchar(100);',
'begin',
'    if :P22_JOB is not null and :P22_DEPTNO is not null',
'    then',
'          v_title := ''Job='' || :P22_JOB  || '' and Dept='' || :P22_DEPTNO;',
'    elsif :P22_JOB is not null then',
'          v_title := ''Job='' || :P22_JOB;',
'    elsif :P22_DEPTNO is not null then',
'          v_title := ''Dept='' || :P22_DEPTNO;',
'    else',
'          v_title := ''All Employees'';',
'    end if;',
'    :P23_REGION_TITLE := ''Filter by '' ||  v_title;',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33282081560776732534)
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Filtered Employees'
,p_alias=>'FILTERED-EMPLOYEES'
,p_step_title=>'Filtered Employees'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713014313'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33282081621542732535)
,p_name=>'&P23_REGION_TITLE.'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo, EName, Job, Sal, DeptNo',
'from EMP',
'where (:P22_JOB is null  or  Job = :P22_JOB)',
'and   (:P22_DEPTNO is null  or  DeptNo = :P22_DEPTNO)',
'order by EName'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33282081725543732536)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33282081855245732537)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33282081908709732538)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33282081993821732539)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33282082096535732540)
,p_query_column_id=>5
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>5
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33282082220630732541)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33282081621542732535)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33282082530817732544)
,p_name=>'P23_REGION_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33282081621542732535)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Preference Chooser'
,p_alias=>'PREFERENCE-CHOOSER'
,p_step_title=>'Preference Chooser'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713014502'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33282082696527732546)
,p_plug_name=>'Specify Your Preferences'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33282083004344732549)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33282082696527732546)
,p_button_name=>'TakeMeThere'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Take Me There'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33282083105221732550)
,p_branch_name=>'Compact'
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'SQL_EXPRESSION'
,p_branch_condition=>':P24_COMPACT = ''Yes'' and :P24_SEE_TABLE = ''No'''
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33282083263652732551)
,p_branch_name=>'NotCompact'
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'SQL_EXPRESSION'
,p_branch_condition=>':P24_COMPACT = ''No'' or :P24_SEE_TABLE = ''Yes'''
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33282082835139732547)
,p_name=>'P24_COMPACT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33282082696527732546)
,p_prompt=>'Do you like compact user interfaces?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes,No'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33282082888176732548)
,p_name=>'P24_SEE_TABLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33282082696527732546)
,p_prompt=>'Do you want to see the table as you modify it?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes,No'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'New Employee Wizard 1'
,p_alias=>'NEW-EMPLOYEE-WIZARD-1'
,p_step_title=>'New Employee Wizard 1'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713014600'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33282083372904732552)
,p_plug_name=>'New Employee Wizard'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:js-wizardProgressLinks:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(34460521442322139632)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(27368459035565268700)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34461969388489201318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33282083372904732552)
,p_button_name=>'Continue'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Continue'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34461971261388201336)
,p_branch_name=>'GoToPage26'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34461969388489201318)
,p_branch_sequence=>10
,p_branch_condition_type=>'SQL_EXPRESSION'
,p_branch_condition=>':P25_JOB = ''CLERK'''
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34461971327575201337)
,p_branch_name=>'GoToPage27'
,p_branch_action=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34461969388489201318)
,p_branch_sequence=>20
,p_branch_condition_type=>'SQL_EXPRESSION'
,p_branch_condition=>':P25_JOB <> ''CLERK'' and :P25_HIRED_TODAY is null'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34461971438254201338)
,p_branch_name=>'GoToPage28'
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34461969388489201318)
,p_branch_sequence=>30
,p_branch_condition_type=>'SQL_EXPRESSION'
,p_branch_condition=>':P25_JOB <> ''CLERK'' and :P25_HIRED_TODAY = ''Yes'''
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461968900252201313)
,p_name=>'P25_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33282083372904732552)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#:margin-top-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461968983194201314)
,p_name=>'P25_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33282083372904732552)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job as DisplayVal,',
'                Job as ResultVal',
'from EMP',
'order by DisplayVal'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#:margin-top-lg'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461969117287201315)
,p_name=>'P25_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33282083372904732552)
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_cMaxlength=>6
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461969226218201316)
,p_name=>'P25_DEPTNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33282083372904732552)
,p_prompt=>'Dept'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461969331722201317)
,p_name=>'P25_HIRED_TODAY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(33282083372904732552)
,p_prompt=>'Use today as the hire date'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC: ;Yes'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34461970994930201334)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ComputeManager'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  case :P25_JOB',
'  when ''PRESIDENT'' then --the president has no manager',
'        :P26_MGR := null;',
'  when ''MANAGER'' then --a manager''s manager is the president',
'        select EmpNo into :P26_MGR',
'        from EMP',
'        where Job = ''PRESIDENT'';',
'  else --the employee''s manager is the manager of the dept',
'        select EmpNo into :P26_MGR',
'        from EMP',
'        where Job = ''MANAGER'' and DeptNo = :P25_DEPTNO;',
'  end case;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34461969388489201318)
,p_process_when=>':P25_JOB <> ''CLERK'''
,p_process_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34461971108198201335)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ComputeHireDate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P27_HIREDATE := sysdate;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34461969388489201318)
,p_process_when=>':P25_HIRED_TODAY = ''Yes'''
,p_process_when_type=>'SQL_EXPRESSION'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'New Employee Wizard 2'
,p_alias=>'NEW-EMPLOYEE-WIZARD-2'
,p_step_title=>'New Employee Wizard 2'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713014620'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33282083392758732553)
,p_plug_name=>'New Employee Wizard'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:js-wizardProgressLinks:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(34460521442322139632)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(27368459035565268700)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34461969757125201321)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33282083392758732553)
,p_button_name=>'Continue'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Continue'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34461971505562201339)
,p_branch_name=>'GoToPage27'
,p_branch_action=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34461969757125201321)
,p_branch_sequence=>10
,p_branch_condition_type=>'SQL_EXPRESSION'
,p_branch_condition=>':P25_HIRED_TODAY is null'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34461971672094201340)
,p_branch_name=>'GoToPage28'
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34461969757125201321)
,p_branch_sequence=>20
,p_branch_condition_type=>'SQL_EXPRESSION'
,p_branch_condition=>':P25_HIRED_TODAY = ''Yes'''
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461969620617201320)
,p_name=>'P26_MGR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33282083392758732553)
,p_prompt=>'Select Manager'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo',
'from EMP',
'where DeptNo = :P25_DEPTNO and Job <> ''CLERK'''))
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#:margin-top-lg'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'New Employee Wizard 3'
,p_alias=>'NEW-EMPLOYEE-WIZARD-3'
,p_step_title=>'New Employee Wizard 3'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713014634'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33282083502569732554)
,p_plug_name=>'New Employee Wizard'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:js-wizardProgressLinks:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(34460521442322139632)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(27368459035565268700)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34461969881308201323)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33282083502569732554)
,p_button_name=>'Continue'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Continue'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34461971723309201341)
,p_branch_name=>'GoToPage28'
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34461969881308201323)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461969993377201324)
,p_name=>'P27_HIREDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33282083502569732554)
,p_prompt=>'Select Hire Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'New Employee Wizard 4'
,p_alias=>'NEW-EMPLOYEE-WIZARD-4'
,p_step_title=>'New Employee Wizard 4'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713014700'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33282083591676732555)
,p_plug_name=>'New Employee Wizard'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:js-wizardProgressLinks:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(34460521442322139632)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(27368459035565268700)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34461970209760201326)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33282083591676732555)
,p_button_name=>'OK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'OK'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34461970958676201333)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33282083591676732555)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:CR,25,26,27,28::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34461971898778201343)
,p_branch_name=>'GoToPage25'
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:CR,25,26,27,28::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34461970209760201326)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461970287165201327)
,p_name=>'P28_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33282083591676732555)
,p_prompt=>'Name'
,p_source=>':P25_NAME'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#:margin-top-lg'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461970418941201328)
,p_name=>'P28_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33282083591676732555)
,p_prompt=>'Sal'
,p_source=>':P25_SAL'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#:margin-top-lg'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461970548982201329)
,p_name=>'P28_JOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33282083591676732555)
,p_prompt=>'Job'
,p_source=>':P25_JOB'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461970627282201330)
,p_name=>'P28_MGR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33282083591676732555)
,p_prompt=>'Mgr'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName',
'from EMP',
'where EmpNo = :P26_MGR'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461970721631201331)
,p_name=>'P28_DEPTNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(33282083591676732555)
,p_prompt=>'Dept'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName',
'from DEPT',
'where DeptNo = :P25_DEPTNO'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34461970790763201332)
,p_name=>'P28_HIREDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(33282083591676732555)
,p_prompt=>'Hire Date'
,p_source=>':P27_HIREDATE'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34461971838400201342)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InsertRecord'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into EMP (EName, Job, Sal, DeptNo, Mgr, HireDate, Comm, Offsite)',
'    values (:P25_NAME, :P25_JOB, :P25_SAL, :P25_DEPTNO, ',
'            :P26_MGR, :P27_HIREDATE, 0, ''N'');',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34461970209760201326)
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Form View'
,p_alias=>'FORM-VIEW'
,p_step_title=>'Form View'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200614134622'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(91170389674069370034)
,p_plug_name=>'Browse Employees'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo, EName, Job, Sal, DeptNo',
'from EMP',
'order by EName'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50939295619242622800)
,p_button_sequence=>75
,p_button_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Previous'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_EMPNO:&P29_PREV.'
,p_button_condition=>':P29_PREV is not null'
,p_button_condition_type=>'SQL_EXPRESSION'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50939296045819622801)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Next'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_EMPNO:&P29_NEXT.'
,p_button_condition=>':P29_NEXT is not null'
,p_button_condition_type=>'SQL_EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50939296411285622801)
,p_name=>'P29_EMPNO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_item_source_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_prompt=>'Select Emp'
,p_source=>'EMPNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo',
'from EMP',
'order by EName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50939296863075622802)
,p_name=>'P29_ENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_item_source_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_source=>'ENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50939297200181622802)
,p_name=>'P29_JOB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_item_source_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50939297603671622803)
,p_name=>'P29_SAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_item_source_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_prompt=>'Sal'
,p_source=>'SAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50939297985383622803)
,p_name=>'P29_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_item_source_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_prompt=>'Deptno'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50939298390787622803)
,p_name=>'P29_PREV'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50939298848930622804)
,p_name=>'P29_NEXT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50939299208170622804)
,p_name=>'P29_COUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(91170389674069370034)
,p_prompt=>'Count'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(27368460418311268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50939299532591622805)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(91170389674069370034)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form View'
,p_attribute_01=>'P29_NEXT'
,p_attribute_02=>'P29_PREV'
,p_attribute_03=>'P29_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Form Update'
,p_alias=>'FORM-UPDATE'
,p_step_title=>'Form Update'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713014750'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47679613932610175318)
,p_plug_name=>'Update Employees'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo, Job, Sal, DeptNo',
'from EMP',
'order by EName'))
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47679616771438175346)
,p_plug_name=>'Insert Employees'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from EMP'
,p_is_editable=>true
,p_edit_operations=>'i'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34781759077114879283)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_button_name=>'Insert'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Insert'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34781764361297879301)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34781764732319879301)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_button_name=>'Update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Update'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781759390733879290)
,p_name=>'P30_INSERT_EMPNO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_item_source_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_source=>'EMPNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781759831559879291)
,p_name=>'P30_INSERT_ENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_item_source_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_prompt=>'Ename'
,p_source=>'ENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>50
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781760270251879292)
,p_name=>'P30_INSERT_JOB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_item_source_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CLERK,SALESMAN,MANAGER,ANALYST,INTERN'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781760691369879292)
,p_name=>'P30_INSERT_MGR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_item_source_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_prompt=>'Mgr'
,p_source=>'MGR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Ename, EmpNo',
'from EMP',
'where Job = ''MANAGER'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781761091573879293)
,p_name=>'P30_INSERT_HIREDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_item_source_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_source=>'HIREDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781761584497879293)
,p_name=>'P30_INSERT_SAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_item_source_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_prompt=>'Sal'
,p_source=>'SAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781761988686879294)
,p_name=>'P30_INSERT_COMM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_item_source_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_source=>'COMM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781762389903879294)
,p_name=>'P30_INSERT_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_item_source_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_prompt=>'Dept'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781762866229879294)
,p_name=>'P30_INSERT_OFFSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_item_source_plug_id=>wwv_flow_api.id(47679616771438175346)
,p_source=>'OFFSITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781765139705879302)
,p_name=>'P30_EMPNO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_item_source_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_prompt=>'Choose Employee'
,p_source=>'EMPNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo',
'from EMP',
'order by EName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781765557390879302)
,p_name=>'P30_JOB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_item_source_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct Job as DV, Job as RV',
'from EMP',
'order by DV'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781765878953879303)
,p_name=>'P30_SAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_item_source_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_prompt=>'Sal'
,p_source=>'SAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781766280580879303)
,p_name=>'P30_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_item_source_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_prompt=>'Dept'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34781766772527879303)
,p_name=>'P30_EMAIL_OP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(47679613932610175318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(34781771959047879311)
,p_computation_sequence=>10
,p_computation_item=>'P30_INSERT_HIREDATE'
,p_computation=>'current_date'
,p_compute_when=>':REQUEST = ''Insert'''
,p_compute_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(34781772306751879311)
,p_computation_sequence=>20
,p_computation_item=>'P30_INSERT_COMM'
,p_computation=>'0'
,p_compute_when=>':REQUEST = ''Insert'''
,p_compute_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(34781772731334879312)
,p_computation_sequence=>30
,p_computation_item=>'P30_INSERT_OFFSITE'
,p_computation=>'''N'''
,p_compute_when=>':REQUEST = ''Insert'''
,p_compute_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(34781773086388879312)
,p_computation_sequence=>40
,p_computation_item=>'P30_EMAIL_OP'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case :REQUEST ',
'  when ''Update'' then ''updated''',
'  when ''Delete'' then ''deleted''  ',
'end '))
,p_compute_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
':REQUEST = ''Update'' ',
'or "REQUEST = ''Delete'''))
,p_compute_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34781767533601879304)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(47679613932610175318)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Update Employees'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''Update'' or :REQUEST = ''Delete'''
,p_process_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34781763661613879299)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(47679616771438175346)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Insert Employees'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34781759077114879283)
,p_process_success_message=>'A record for employee &P30_INSERT_EMPNO. has been successfully created.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34781773865511879313)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'SendSuspiciousEmail'
,p_attribute_01=>'EmployeeDemo@MyCompany.com'
,p_attribute_02=>'&APP_USER.'
,p_attribute_06=>'Suspicious changes to EMP'
,p_attribute_07=>'&APP_USER. &P30_EMAIL_OP. employee &P30_EMPNO.''s record.'
,p_attribute_10=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:REQUEST = ''Delete'' or :REQUEST = ''Update'') ',
'and ',
'(extract(HOUR from current_timestamp) > 16  ',
' or ',
' extract(HOUR from current_timestamp) < 9)'))
,p_process_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34781773473630879312)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'ClearEmpNo'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P30_EMPNO'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34781764361297879301)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34781767147062879304)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(47679613932610175318)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Update Employees'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34781763266967879298)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(47679616771438175346)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Insert Employees'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Report with Form 1'
,p_alias=>'REPORT-WITH-FORM-1'
,p_step_title=>'Report with Form 1'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200420010751'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(35153350869606688386)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EMP'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35153351268962688387)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>0
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP,:P32_EMPNO:#EMPNO#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35153351609473688388)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35153351994603688388)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35153352458132688388)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35153352827820688389)
,p_query_column_id=>5
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>5
,p_column_heading=>'Deptno'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35153760210231692384)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(35153350869606688386)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32::'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Report with Form 2'
,p_alias=>'REPORT-WITH-FORM-2'
,p_step_title=>'Report with Form 2'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200626170814'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35153340875542688375)
,p_plug_name=>'Report with Form 2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'EMP'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35153348665739688384)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P32_EMPNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35153347476827688383)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35153349044264688385)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P32_EMPNO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35153348249833688384)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P32_EMPNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(35153349328080688385)
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35153341080277688375)
,p_name=>'P32_EMPNO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_item_source_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_source=>'EMPNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35153341534167688376)
,p_name=>'P32_ENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_item_source_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_prompt=>'Ename'
,p_source=>'ENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35153341921485688377)
,p_name=>'P32_JOB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_item_source_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35153342311507688377)
,p_name=>'P32_MGR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_item_source_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_prompt=>'Mgr'
,p_source=>'MGR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35153342726142688377)
,p_name=>'P32_HIREDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_item_source_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_prompt=>'Hiredate'
,p_source=>'HIREDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35153343170938688378)
,p_name=>'P32_SAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_item_source_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_prompt=>'Sal'
,p_source=>'SAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35153343479048688378)
,p_name=>'P32_COMM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_item_source_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_prompt=>'Comm'
,p_source=>'COMM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35153343956263688379)
,p_name=>'P32_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_item_source_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_prompt=>'Deptno'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35153344319268688379)
,p_name=>'P32_OFFSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_item_source_plug_id=>wwv_flow_api.id(35153340875542688375)
,p_prompt=>'Offsite'
,p_source=>'OFFSITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35153350198328688386)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(35153340875542688375)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Report with Form 2'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35153349853697688385)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(35153340875542688375)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Report with Form 2'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Management Hierarchy Tree'
,p_alias=>'MANAGEMENT-HIERARCHY-TREE'
,p_step_title=>'Management Hierarchy Tree'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200626173632'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34983134185204720613)
,p_plug_name=>'Management Hierarchy'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'EMP'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
,p_attribute_08=>'a-Icon'
,p_attribute_09=>'icon-tree-folder'
,p_attribute_10=>'ENAME'
,p_attribute_13=>'EMPNO'
,p_attribute_14=>'MGR'
,p_attribute_16=>'NULL'
,p_attribute_21=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::P34_EMPNO:&EMPNO.'
,p_attribute_23=>'SQL'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Management Hierarchy Form'
,p_alias=>'MANAGEMENT-HIERARCHY-FORM'
,p_step_title=>'Management Hierarchy Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200626175622'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35537892802150116208)
,p_plug_name=>'Employee Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo, EName, Job, Sal, DeptNo',
'from EMP'))
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35537900584048116220)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P34_EMPNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35537899395182116219)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Return'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35537901032781116220)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P34_EMPNO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35537900224562116220)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P34_EMPNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(35537901362228116221)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35537893101842116209)
,p_name=>'P34_EMPNO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_item_source_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Empno'
,p_source=>'EMPNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35537893513496116211)
,p_name=>'P34_ENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_item_source_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_prompt=>'Name'
,p_source=>'ENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>50
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35537893941403116211)
,p_name=>'P34_JOB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_item_source_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ANALYST,CLERK,INTERN,MANAGER,SALESMAN'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35537895137507116213)
,p_name=>'P34_SAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_item_source_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_prompt=>'Salary'
,p_source=>'SAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35537895880232116214)
,p_name=>'P34_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_item_source_plug_id=>wwv_flow_api.id(35537892802150116208)
,p_prompt=>'Department'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT',
'order by DName'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35537902209081116222)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(35537892802150116208)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Tree with Form 2'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35537901828235116222)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(35537892802150116208)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Tree with Form 2'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Master Report'
,p_alias=>'MASTER-REPORT'
,p_step_title=>'Master Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200423214802'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(36164982450893644797)
,p_name=>'Departments'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DEPT'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36164982844018644798)
,p_query_column_id=>1
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP:P36_DEPTNO:\#DEPTNO#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36164983201549644799)
,p_query_column_id=>2
,p_column_alias=>'DNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dname'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36164983529246644799)
,p_query_column_id=>3
,p_column_alias=>'LOC'
,p_column_display_sequence=>3
,p_column_heading=>'Loc'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34983136359139720634)
,p_query_column_id=>4
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>4
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::P37_DEPTNO,P37_DNAME:#DEPTNO#,#DNAME#'
,p_column_linktext=>'View Emps'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36164984393652644800)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(36164982450893644797)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:36'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Master Form'
,p_alias=>'MASTER-FORM'
,p_step_title=>'Master Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200423214830'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36164975845068644788)
,p_plug_name=>'Edit Department'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEPTNO, DNAME, LOC, DEPTNO as EMPS',
'from DEPT'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36164980235369644794)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(36164975845068644788)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P36_DEPTNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36164979017929644793)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36164975845068644788)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36164980596590644795)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(36164975845068644788)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P36_DEPTNO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36164979783280644794)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(36164975845068644788)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P36_DEPTNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36164980965546644795)
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164976187746644789)
,p_name=>'P36_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36164975845068644788)
,p_item_source_plug_id=>wwv_flow_api.id(36164975845068644788)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deptno'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164976596180644790)
,p_name=>'P36_DNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(36164975845068644788)
,p_item_source_plug_id=>wwv_flow_api.id(36164975845068644788)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dname'
,p_source=>'DNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164976987235644791)
,p_name=>'P36_LOC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(36164975845068644788)
,p_item_source_plug_id=>wwv_flow_api.id(36164975845068644788)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loc'
,p_source=>'LOC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36164981857215644797)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(36164975845068644788)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Master Report with Form 2'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36164981462480644796)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(36164975845068644788)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Master Report with Form 2'
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_api.create_page(
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Detail Report'
,p_alias=>'DETAIL-REPORT'
,p_step_title=>'Detail Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200423214844'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(36166254734777117907)
,p_name=>'Emps in &P37_DNAME.'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EMP'
,p_query_where=>'DeptNo = :P37_DEPTNO'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36166255080186117908)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP:P38_EMPNO:\#EMPNO#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36166255488892117910)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36166255884060117910)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36166256330883117911)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36166256764831117911)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36166257151874117912)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Sal'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36166257487006117912)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36166257950596117913)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'Deptno'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36166258285574117913)
,p_query_column_id=>9
,p_column_alias=>'OFFSITE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34983136101561720632)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(36166254734777117907)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'All Depts'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36166258873842117914)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(36166254734777117907)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34983135983471720631)
,p_name=>'P37_DEPTNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36166254734777117907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34983136200833720633)
,p_name=>'P37_DNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(36166254734777117907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Detail Form'
,p_alias=>'DETAIL-FORM'
,p_step_title=>'Detail Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200610133736'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36164744677575117897)
,p_plug_name=>'Edit Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from EMP'
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36164752515410117905)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P38_EMPNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36164751333076117904)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36164752894279117905)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P38_EMPNO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36164752173527117904)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P38_EMPNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36164753182758117905)
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164745020761117897)
,p_name=>'P38_EMPNO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_item_source_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Empno'
,p_source=>'EMPNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164745380347117898)
,p_name=>'P38_ENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_item_source_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ename'
,p_source=>'ENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164745867371117898)
,p_name=>'P38_JOB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_item_source_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164746186997117899)
,p_name=>'P38_MGR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_item_source_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_source=>'MGR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164746614889117899)
,p_name=>'P38_HIREDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_item_source_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_source=>'HIREDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164746991754117900)
,p_name=>'P38_SAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_item_source_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sal'
,p_source=>'SAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164747398463117900)
,p_name=>'P38_COMM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_item_source_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_source=>'COMM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164747844312117901)
,p_name=>'P38_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_item_source_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deptno'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36164748270119117901)
,p_name=>'P38_OFFSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_item_source_plug_id=>wwv_flow_api.id(36164744677575117897)
,p_source=>'OFFSITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36164754122707117906)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(36164744677575117897)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Detail Report with Form 2'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36164753709824117906)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(36164744677575117897)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Detail Report with Form 2'
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Master-Detail'
,p_alias=>'MASTER-DETAIL1'
,p_step_title=>'Master-Detail'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(27368346542484268613)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200424214853'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36433498970045776938)
,p_plug_name=>'Master-Detail'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27368390177402268648)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36433500154893776940)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27368372303878268635)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(36433500904236776941)
,p_name=>'Master Records'
,p_template=>wwv_flow_api.id(27368372512489268635)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "DEPTNO",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P39_DEPTNO'', p_values => "DEPTNO") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P39_DEPTNO,''0'') = "DEPTNO"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("DNAME", 1, 50)||( case when length("DNAME") > 50 then ''...'' end ) list_title,',
'    substr("LOC", 1, 50)||( case when length("LOC") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "DEPT" x',
'where (:P39_SEARCH is null',
'        or upper(x."DNAME") like ''%''||upper(:P39_SEARCH)||''%''',
'        or upper(x."LOC") like ''%''||upper(:P39_SEARCH)||''%''',
'    )',
'order by "DNAME"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P39_SEARCH'
,p_query_row_template=>wwv_flow_api.id(27368425433227268675)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433501599462776945)
,p_query_column_id=>1
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>1
,p_column_heading=>'Deptno'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433502073205776946)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433502394906776947)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433502837251776947)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433503196439776947)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433503591313776948)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433504030293776948)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433504459304776949)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433504863536776949)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433505198722776950)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(36433508596180776955)
,p_name=>'Dept'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DEPT'
,p_query_where=>'"DEPTNO" = :P39_DEPTNO'
,p_include_rowid_column=>false
,p_display_when_condition=>'P39_DEPTNO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368431641411268681)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433509293695776956)
,p_query_column_id=>1
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>1
,p_column_heading=>'Deptno'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "DEPT"',
'where "DEPTNO" is not null',
'and "DEPTNO" = :P39_DEPTNO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433509708689776956)
,p_query_column_id=>2
,p_column_alias=>'DNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dname'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "DEPT"',
'where "DNAME" is not null',
'and "DEPTNO" = :P39_DEPTNO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433510175669776957)
,p_query_column_id=>3
,p_column_alias=>'LOC'
,p_column_display_sequence=>3
,p_column_heading=>'Loc'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "DEPT"',
'where "LOC" is not null',
'and "DEPTNO" = :P39_DEPTNO'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36433513012473776962)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27368372303878268635)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P39_DEPTNO'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(36433513378051776963)
,p_name=>'Emp'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EMP'
,p_query_where=>'"DEPTNO" = :P39_DEPTNO'
,p_include_rowid_column=>true
,p_display_when_condition=>'P39_DEPTNO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433514251240776968)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,:P41_ROWID:#ROWID#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433514611765776969)
,p_query_column_id=>2
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>2
,p_column_heading=>'Empno'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433514989825776969)
,p_query_column_id=>3
,p_column_alias=>'ENAME'
,p_column_display_sequence=>3
,p_column_heading=>'Ename'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433515440257776970)
,p_query_column_id=>4
,p_column_alias=>'JOB'
,p_column_display_sequence=>4
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433515835504776970)
,p_query_column_id=>5
,p_column_alias=>'MGR'
,p_column_display_sequence=>5
,p_column_heading=>'Mgr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433516228210776971)
,p_query_column_id=>6
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>6
,p_column_heading=>'Hiredate'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433516656412776971)
,p_query_column_id=>7
,p_column_alias=>'SAL'
,p_column_display_sequence=>7
,p_column_heading=>'Sal'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433516992720776971)
,p_query_column_id=>8
,p_column_alias=>'COMM'
,p_column_display_sequence=>8
,p_column_heading=>'Comm'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433517392581776972)
,p_query_column_id=>9
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>9
,p_column_heading=>'Deptno'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36433517844597776972)
,p_query_column_id=>10
,p_column_alias=>'OFFSITE'
,p_column_display_sequence=>10
,p_column_heading=>'Offsite'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36433535895145777347)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27368372303878268635)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P39_DEPTNO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36433521970928776977)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36433513378051776963)
,p_button_name=>'POP_EMP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(27368461167068268702)
,p_button_image_alt=>'Add Emp'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,42:P41_DEPTNO:&P39_DEPTNO.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36433536403844777348)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(36433508596180776955)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(27368461884802268702)
,p_button_image_alt=>'Edit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP,40:P40_DEPTNO:&P39_DEPTNO.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36433499394645776939)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36433498970045776938)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(27368461884802268702)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&APP_SESSION.:RESET:&DEBUG.:RP,39::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36433499822275776940)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(36433498970045776938)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(27368461884802268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP,40::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36433500502147776941)
,p_name=>'P39_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36433500154893776940)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27368460418311268701)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36433512582670776961)
,p_name=>'P39_DEPTNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(36433508596180776955)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36433536767600777348)
,p_name=>'Edit Master Record'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(36433508596180776955)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36433537365495777349)
,p_event_id=>wwv_flow_api.id(36433536767600777348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(36433508596180776955)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36433537798534777349)
,p_event_id=>wwv_flow_api.id(36433536767600777348)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Dept\u0020updated'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36433513502181776963)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(36433513378051776963)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36433522673442776978)
,p_event_id=>wwv_flow_api.id(36433513502181776963)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(36433513378051776963)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36433523172816776979)
,p_event_id=>wwv_flow_api.id(36433513502181776963)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Emp updated'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36433536859080777348)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36433538663838777351)
,p_event_id=>wwv_flow_api.id(36433536859080777348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(36433500904236776941)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36433539130303777351)
,p_event_id=>wwv_flow_api.id(36433536859080777348)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_api.create_page(
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Dept Form'
,p_alias=>'DEPT-FORM1'
,p_page_mode=>'MODAL'
,p_step_title=>'Dept Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200424213543'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46105592464086394256)
,p_plug_name=>'Dept'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368372303878268635)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DEPT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46105594885132394261)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368373362431268635)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36630659347447346654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46105594885132394261)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36630659731896346655)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(46105594885132394261)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P40_DEPTNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36630660082492346656)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(46105594885132394261)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P40_DEPTNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36630660518976346656)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46105594885132394261)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P40_DEPTNO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36630663251080346664)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:RP:P39_DEPTNO:&P40_DEPTNO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36630660518976346656)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36630663638220346664)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:RP,39::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36630659731896346655)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630656884684346647)
,p_name=>'P40_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46105592464086394256)
,p_item_source_plug_id=>wwv_flow_api.id(46105592464086394256)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deptno'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630657353227346649)
,p_name=>'P40_DNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46105592464086394256)
,p_item_source_plug_id=>wwv_flow_api.id(46105592464086394256)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dname'
,p_source=>'DNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630657692893346650)
,p_name=>'P40_LOC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46105592464086394256)
,p_item_source_plug_id=>wwv_flow_api.id(46105592464086394256)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loc'
,p_source=>'LOC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36630662255662346661)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(36630659347447346654)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36630662739882346663)
,p_event_id=>wwv_flow_api.id(36630662255662346661)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36630658579837346653)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46105592464086394256)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dept'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36630661854212346660)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36630660082492346656)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36630658127823346653)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(46105592464086394256)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dept'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_api.create_page(
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Emp Form'
,p_alias=>'EMP-FORM1'
,p_page_mode=>'MODAL'
,p_step_title=>'Emp Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200616011332'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46105955137856951382)
,p_plug_name=>'Emp'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368372303878268635)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'EMP'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46105962298681951391)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368373362431268635)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36630991389667903369)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(46105962298681951391)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P41_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36630991826415903370)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(46105962298681951391)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P41_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36630992255997903370)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46105962298681951391)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P41_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630985955271903362)
,p_name=>'P41_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_item_source_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630986288480903363)
,p_name=>'P41_EMPNO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_item_source_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Empno'
,p_source=>'EMPNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460999029268702)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630986686180903364)
,p_name=>'P41_ENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_item_source_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ename'
,p_source=>'ENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630987113315903364)
,p_name=>'P41_JOB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_item_source_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630987483821903364)
,p_name=>'P41_MGR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_item_source_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mgr'
,p_source=>'MGR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630987948281903365)
,p_name=>'P41_HIREDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_item_source_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hiredate'
,p_source=>'HIREDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630988354280903365)
,p_name=>'P41_SAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_item_source_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sal'
,p_source=>'SAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630988746076903366)
,p_name=>'P41_COMM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_item_source_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm'
,p_source=>'COMM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630989122769903366)
,p_name=>'P41_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_item_source_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deptno'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630989539844903366)
,p_name=>'P41_OFFSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_item_source_plug_id=>wwv_flow_api.id(46105955137856951382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Offsite'
,p_source=>'OFFSITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460736708268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36630990293712903368)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46105955137856951382)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Emp'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36630995635046903376)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P41_ROWID,REQUEST'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36630989971272903367)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(46105955137856951382)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Emp'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_api.create_page(
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Interactive Grids'
,p_alias=>'INTERACTIVE-GRIDS'
,p_step_title=>'Interactive Grids'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200809142857'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38393356624575481416)
,p_plug_name=>'Employees by Department'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37484412584286081437)
,p_plug_name=>'Departments'
,p_parent_plug_id=>wwv_flow_api.id(38393356624575481416)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368397789414268654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from DEPT'
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Departments'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484412863035081439)
,p_name=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPTNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Deptno'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484412931525081440)
,p_name=>'DNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dname'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484413032231081441)
,p_name=>'LOC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Loc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37926677326671635657)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37926677391874635658)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(37484412774379081438)
,p_internal_uid=>10525858696697352129
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(37872454721732698472)
,p_interactive_grid_id=>wwv_flow_api.id(37484412774379081438)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(37872454858612698472)
,p_report_id=>wwv_flow_api.id(37872454721732698472)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37872455327094698474)
,p_view_id=>wwv_flow_api.id(37872454858612698472)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(37484412863035081439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37872455782716698477)
,p_view_id=>wwv_flow_api.id(37872454858612698472)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(37484412931525081440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37872456322091698479)
,p_view_id=>wwv_flow_api.id(37872454858612698472)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(37484413032231081441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38393364210455481816)
,p_view_id=>wwv_flow_api.id(37872454858612698472)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(37926677326671635657)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37484413123370081442)
,p_plug_name=>'Employees'
,p_parent_plug_id=>wwv_flow_api.id(38393356624575481416)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368397789414268654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMP.*,',
'  case Job ',
'     when ''PRESIDENT'' then ''''',
'     when ''MANAGER'' then ''U''',
'     else ''UD''',
'  end as Status',
'from EMP'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(37484412584286081437)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employees'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484413349013081444)
,p_name=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'EmpNo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484413441232081445)
,p_name=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ename'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'SQL_EXPRESSION'
,p_readonly_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APEX$ROW_STATUS <> ''C'' or ',
':APEX$ROW_STATUS is null'))
,p_readonly_for_each_row=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484413545574081446)
,p_name=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Job'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:ANALYST,CLERK,MANAGER,PRESIDENT,SALESMAN'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484413674118081447)
,p_name=>'MGR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mgr'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo',
'from EMP',
'where Job <> ''CLERK''',
'order by EName'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484413728757081448)
,p_name=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HIREDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Hiredate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'PLSQL_EXPRESSION'
,p_default_expression=>'current_date'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484413866013081449)
,p_name=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sal'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484413919065081450)
,p_name=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMM'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Comm'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484414041485081451)
,p_name=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPTNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(37484412863035081439)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37484414158254081452)
,p_name=>'OFFSITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OFFSITE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Offsite'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'1'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'PLSQL_EXPRESSION'
,p_default_expression=>'''N'''
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37926673000634635614)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38393356364977481413)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38393356383948481414)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(37484413241232081443)
,p_internal_uid=>10525859163550352134
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_edit_row_operations_column=>'STATUS'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(37903322162663389204)
,p_interactive_grid_id=>wwv_flow_api.id(37484413241232081443)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(37903322255726389204)
,p_report_id=>wwv_flow_api.id(37903322162663389204)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37903322704606389206)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(37484413349013081444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37903323269040389209)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(37484413441232081445)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37903323741057389211)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(37484413545574081446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37903324256293389214)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(37484413674118081447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37903324755901389216)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(37484413728757081448)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37903325268051389217)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(37484413866013081449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37903325745745389219)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(37484413919065081450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37903326233054389222)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(37484414041485081451)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37903326765225389224)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(37484414158254081452)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37934719704747494280)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(37926673000634635614)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38393365174029481821)
,p_view_id=>wwv_flow_api.id(37903322255726389204)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(38393356364977481413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51213797439854046817)
,p_plug_name=>'Custom Emps'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EmpNo, EName, Job, Sal, DeptNo ',
'from EMP',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Custom Emps'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51213797666721046819)
,p_name=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Empno'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51213797727169046820)
,p_name=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ename'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51213797823095046821)
,p_name=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Job'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51213797975614046822)
,p_name=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sal'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51213798067711046823)
,p_name=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPTNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Deptno'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51213798173527046824)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51213798219051046825)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(51213797508946046818)
,p_internal_uid=>24255243431264317509
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(52824935538441099866)
,p_interactive_grid_id=>wwv_flow_api.id(51213797508946046818)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(52824935658317099866)
,p_report_id=>wwv_flow_api.id(52824935538441099866)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52824936089280099868)
,p_view_id=>wwv_flow_api.id(52824935658317099866)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(51213797666721046819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52824936612324099871)
,p_view_id=>wwv_flow_api.id(52824935658317099866)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(51213797727169046820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52824937104926099873)
,p_view_id=>wwv_flow_api.id(52824935658317099866)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(51213797823095046821)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52824937674754099874)
,p_view_id=>wwv_flow_api.id(52824935658317099866)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(51213797975614046822)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52824938088497099876)
,p_view_id=>wwv_flow_api.id(52824935658317099866)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(51213798067711046823)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52825672858019003637)
,p_view_id=>wwv_flow_api.id(52824935658317099866)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(51213798173527046824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38393356682969481417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38393356624575481416)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'RIGHT_OF_TITLE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38393356862963481418)
,p_tabular_form_region_id=>wwv_flow_api.id(37484413123370081442)
,p_validation_name=>'Positive Salary'
,p_validation_sequence=>10
,p_validation=>':Sal > 0'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>'Salaries must be positive.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38393356923614481419)
,p_tabular_form_region_id=>wwv_flow_api.id(37484413123370081442)
,p_validation_name=>'Mgr in Same Dept'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from EMP',
'where EmpNo = :MGR',
'and (DeptNo = :DEPTNO or Job = ''PRESIDENT'')'))
,p_validation_type=>'EXISTS'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The manager of an employee must be in',
'the same department, or the president'))
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37926677518095635659)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(37484412584286081437)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Departments - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38393356571634481415)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(37484413123370081442)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Employees - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38393357832851481428)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(37484413123370081442)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LogChanges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  insert into EMPLOG (Request, UserName, RequestDate)',
'  values (:REQUEST, :APP_USER, sysdate);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38393357154967481421)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(37484413123370081442)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Revised LogChanges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_request varchar(20);',
'begin',
'  case :APEX$ROW_STATUS',
'    when ''U'' then v_request := ''Update '';',
'    when ''C'' then v_request := ''Insert '';',
'    when ''D'' then v_request := ''Delete '';',
'  end case;',
'  v_request := v_request || :EMPNO;',
'',
'  insert into EMPLOG (Request, UserName, RequestDate)',
'  values (v_request, :APP_USER, sysdate);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51213798349984046826)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51213797439854046817)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Custom Emps - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'        insert into EMP(EName, Job, Sal, DeptNo,',
'                        Mgr, HireDate, Comm, Offsite)',
'        values (:ENAME, :JOB, :SAL, :DEPTNO,',
'                7839, sysdate, 0, ''N'')',
'        returning EmpNo into :EMPNO;',
'    when ''U'' then',
'        update emp',
'        set EName  = :ENAME,',
'            Job    = :JOB,',
'            Sal    = :SAL,',
'            DeptNo = :DEPTNO',
'        where EmpNo  = :EMPNO;',
'    when ''D'' then',
'        delete emp',
'        where EmpNo = :EMPNO;',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
null;
end;
/
prompt --application/pages/page_00043
begin
wwv_flow_api.create_page(
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Report Builder'
,p_alias=>'REPORT-BUILDER'
,p_step_title=>'Report Builder'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200818210914'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38393358919064481439)
,p_plug_name=>'Specify your Report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(38393359389392481444)
,p_name=>'Your Report is'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_table varchar2(20)  := :P43_TABLE;',
'  v_cols  varchar2(100) := replace(:P43_COLS, '':'', '','');',
'  v_where varchar2(100) := '''';',
'begin',
'  if :P43_WHERE is not null then',
'     v_where := '' where '' || :P43_WHERE;',
'  end if;',
'  return ''select '' || v_cols || '' from '' || v_table || v_where;',
'end;'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_plug_query_max_columns=>9
,p_query_headings=>'return :P43_COLS'
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38393359572236481445)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Col01'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38393359632789481446)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Col02'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38393359694332481447)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'Col03'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38393359850418481448)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Col04'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38393359945857481449)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Col05'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38393360066349481450)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Col06'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38393360107125481451)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38393360196649481452)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38393360307138481453)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38393359283561481443)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38393358919064481439)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38393358983941481440)
,p_name=>'P43_TABLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38393358919064481439)
,p_prompt=>'Select Table'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:DEPT,EMP'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38393359099185481441)
,p_name=>'P43_COLS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(38393358919064481439)
,p_prompt=>'Select<br>Columns'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Column_Name as DisplayVal, Column_Name as ResultVal',
'from User_Tab_Cols',
'where Table_Name = :P43_TABLE',
'order by DisplayVal',
''))
,p_lov_cascade_parent_items=>'P43_TABLE'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38393359197774481442)
,p_name=>'P43_WHERE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(38393358919064481439)
,p_prompt=>'Enter<br>Condition'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>15
,p_cHeight=>3
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
end;
/
prompt --application/pages/page_00044
begin
wwv_flow_api.create_page(
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Count and Delete'
,p_alias=>'COUNT-AND-DELETE'
,p_step_title=>'Count and Delete'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713014958'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38393360629626481456)
,p_plug_name=>'Version 1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39023928447900795613)
,p_plug_name=>'Version 2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39023928182073795611)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38393360629626481456)
,p_button_name=>'Count1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Count'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39023928788593795617)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39023928447900795613)
,p_button_name=>'Count2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Count'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39023928348070795612)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(38393360629626481456)
,p_button_name=>'Delete1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39023928893772795618)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39023928447900795613)
,p_button_name=>'Delete2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38393360825012481458)
,p_name=>'P44_TABLE1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38393360629626481456)
,p_prompt=>'Choose Table'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:DEPT,EMP'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38393360919937481459)
,p_name=>'P44_WHERE1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(38393360629626481456)
,p_prompt=>'Enter Condition'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>15
,p_cHeight=>2
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023928172248795610)
,p_name=>'P44_RESULT1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(38393360629626481456)
,p_prompt=>'Result'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023928500689795614)
,p_name=>'P44_TABLE2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39023928447900795613)
,p_prompt=>'Choose Table'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:DEPT,EMP'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023928641785795615)
,p_name=>'P44_COLUMN2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39023928447900795613)
,p_prompt=>'Column'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Column_Name as DisplayVal, Column_Name as ResultVal',
'from User_Tab_Cols',
'where Table_Name = :P44_TABLE2',
'order by DisplayVal'))
,p_lov_cascade_parent_items=>'P44_TABLE2'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>8
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023928767696795616)
,p_name=>'P44_RESULT2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39023928447900795613)
,p_prompt=>'Result'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023929073771795619)
,p_name=>'P44_OP2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39023928447900795613)
,p_prompt=>'Op'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:<,=,>'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023929123128795620)
,p_name=>'P44_VALUE2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39023928447900795613)
,p_prompt=>'Value'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39023929274099795621)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cmd varchar2(100);',
'begin',
'  v_cmd := ''delete from '' || :P44_TABLE1 || '' where '' || :P44_WHERE1;',
' ',
'  execute immediate v_cmd;',
' ',
'  :P44_RESULT1 := SQL%rowcount || '' records were deleted.'';',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39023928348070795612)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39023929323379795622)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Count1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_query varchar2(100);',
'  v_count integer;',
'begin',
'  v_query := ''select count(*) from '' || :P44_TABLE1 ||',
'             '' where '' || :P44_WHERE1;',
' ',
'  execute immediate v_query',
'  into v_count;',
' ',
' :P44_RESULT1 := ''There are '' || v_count || '' records.'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39023928182073795611)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39023929405392795623)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cmd varchar2(100);',
'begin',
'  v_cmd := ''delete from '' || :P44_TABLE2 ||',
'           '' where '' || :P44_COLUMN2 || :P44_OP2 || '' :1'';',
' ',
'  execute immediate v_cmd',
'  using :P44_VALUE2;',
' ',
'  :P44_RESULT2 := SQL%rowcount || '' records were deleted.'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39023928893772795618)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39023929484753795624)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Count2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_query varchar2(100);',
'  v_count int;',
'begin',
'  v_query := ''select count(*) from '' || :P44_TABLE2 ||',
'             '' where '' || :P44_COLUMN2 || :P44_OP2 || '' :1'';',
' ',
'  execute immediate v_query',
'  into v_count',
'  using :P44_VALUE2;',
' ',
'  :P44_RESULT2 := ''There are '' || v_count || '' records.'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39023928788593795617)
);
end;
/
prompt --application/pages/page_00045
begin
wwv_flow_api.create_page(
 p_id=>45
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Sortable Single Row View'
,p_alias=>'SORTABLE-SINGLE-ROW-VIEW'
,p_step_title=>'Sortable Single Row View'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200629013005'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95565272443541881014)
,p_name=>'Employees'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_sort varchar2(20);',
'begin',
'  if :P45_SORTFIELD is null then',
'    v_sort := ''EName'';',
'  else',
'    v_sort := :P45_SORTFIELD;',
'  end if;',
'  return ''select EmpNo, EName, Job, Sal, DeptNo from EMP '' ||',
'         ''order by '' || v_sort;',
'end;',
''))
,p_display_when_condition=>':P45_EMPNO is null'
,p_display_condition_type=>'SQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_plug_query_max_columns=>5
,p_query_headings=>'return '':EName:Job:Sal:DeptNo'';'
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>5
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53044547245523359119)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_EMPNO:#COL01#'
,p_column_linktext=>'View'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53044547293419359120)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'EName'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53044547472050359121)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53044547568223359122)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53044547606460359123)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'DeptNo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95565272518881881015)
,p_plug_name=>'Emp Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'SQL_EXPRESSION'
,p_plug_display_when_condition=>':P45_EMPNO is not null'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53032075399850481133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(95565272518881881015)
,p_button_name=>'ReportView'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Report View'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:RP:P45_EMPNO:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53032075793812481134)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(95565272518881881015)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(27368461167068268702)
,p_button_image_alt=>'Previous'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_EMPNO:&P45_PREV.'
,p_button_condition=>':P45_PREV is not null'
,p_button_condition_type=>'SQL_EXPRESSION'
,p_icon_css_classes=>'fa-sm fa-arrow-circle-o-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53032076261327481134)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(95565272518881881015)
,p_button_name=>'Next'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--padLeft'
,p_button_template_id=>wwv_flow_api.id(27368461167068268702)
,p_button_image_alt=>'Next'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:RP:P45_EMPNO:&P45_NEXT.'
,p_button_condition=>':P45_NEXT is not null'
,p_button_condition_type=>'SQL_EXPRESSION'
,p_icon_css_classes=>'fa-sm fa-arrow-circle-o-right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51213798458963046827)
,p_name=>'P45_SORTFIELD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(95565272443541881014)
,p_prompt=>'Sort Field'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:EName,Job,Sal,DeptNo'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53032076646686481135)
,p_name=>'P45_ENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95565272518881881015)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53032077018620481136)
,p_name=>'P45_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(95565272518881881015)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53032077463861481136)
,p_name=>'P45_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(95565272518881881015)
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53032077811120481136)
,p_name=>'P45_DEPTNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(95565272518881881015)
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53032078217861481137)
,p_name=>'P45_PREV'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(95565272518881881015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53032078632572481137)
,p_name=>'P45_NEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(95565272518881881015)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53032081342704481141)
,p_name=>'P45_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95565272443541881014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53032082546264481147)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FetchRow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P45_EMPNO is not null then',
'    select EName, Job, Sal, DeptNo',
'    into :P45_ENAME, :P45_JOB, :P45_SAL, :P45_DEPTNO',
'    from EMP',
'    where EmpNo = :P45_EMPNO;',
'  end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53032082896362481147)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FindPreviousNext'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_subquery varchar2(200);',
'  v_query    varchar2(250);',
'  v_sort     varchar2(20);',
'begin',
'  if :P45_EMPNO is not null then',
'    if :P45_SORTFIELD is null then',
'      v_sort := ''EName'';',
'    else',
'      v_sort := :P45_SORTFIELD;',
'    end if;',
' ',
'    v_subquery :=',
'      ''select EmpNo, '' ||',
'             ''lag(EmpNo)  over (order by '' || v_sort || '') as PrevEmp, '' ||',
'             ''lead(EmpNo) over (order by '' || v_sort || '') as NextEmp '' ||',
'      ''from EMP'';',
'     ',
'    v_query := ''select PrevEmp, NextEmp '' ||',
'               ''from ('' || v_subquery || '') '' ||',
'               ''where EmpNo = :1'';',
' ',
'    execute immediate v_query',
'    into :P45_PREV, :P45_NEXT',
'    using :P45_EMPNO;',
'  end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00046
begin
wwv_flow_api.create_page(
 p_id=>46
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Manage Users'
,p_alias=>'MANAGE-USERS'
,p_step_title=>'Manage Users'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713015047'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39023930746427795636)
,p_name=>'All Users'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UserName, IsAdministrator, Password',
'from USERS',
'order by UserName'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39023930883843795638)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39023931058039795639)
,p_query_column_id=>2
,p_column_alias=>'ISADMINISTRATOR'
,p_column_display_sequence=>2
,p_column_heading=>'Isadministrator'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39023931096148795640)
,p_query_column_id=>3
,p_column_alias=>'PASSWORD'
,p_column_display_sequence=>3
,p_column_heading=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Password'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39023930877283795637)
,p_plug_name=>'Create User'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39023931674991795645)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39023930877283795637)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023931199014795641)
,p_name=>'P46_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39023930877283795637)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023931309074795642)
,p_name=>'P46_ADMIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39023930877283795637)
,p_prompt=>'Administrator?'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>7
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023931465050795643)
,p_name=>'P46_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39023930877283795637)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023931558504795644)
,p_name=>'P46_CONFIRM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39023930877283795637)
,p_prompt=>'Confirm<br>Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39023931734611795646)
,p_validation_name=>'Unique User'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from USERS',
'where Username = upper(:P46_NAME)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'A user with this name already exists'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39023931842259795647)
,p_validation_name=>'Identical Passwords'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:P46_PASSWORD = :P46_CONFIRM) or',
'(:P46_PASSWORD is null and :P46_CONFIRM is null)'))
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>'The passwords are not identical'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39023931933276795648)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create User'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_username     varchar2(20) := upper(:P46_NAME);',
'   v_valuesToHash apex_t_varchar2 := apex_t_varchar2(v_username, :P46_PASSWORD);',
'begin',
'   insert into USERS (UserName, Password, IsAdministrator)',
'   values (v_username,',
'           apex_util.get_hash(v_valuesToHash, null),',
'           :P46_ADMIN);',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00047
begin
wwv_flow_api.create_page(
 p_id=>47
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Change Password'
,p_alias=>'CHANGE-PASSWORD'
,p_step_title=>'Change Password'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'!'||wwv_flow_api.id(39589964255665149436)
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713015134'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39023932047632795649)
,p_plug_name=>'Change Password'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39023932373116795652)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39023932047632795649)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023932122937795650)
,p_name=>'P47_PASSWORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39023932047632795649)
,p_prompt=>'Change Password To'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023932232253795651)
,p_name=>'P47_CONFIRM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39023932047632795649)
,p_prompt=>'Confirm Changed Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27368460630778268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39023932400221795653)
,p_validation_name=>'Identical passwords'
,p_validation_sequence=>10
,p_validation=>':P47_PASSWORD = :P47_CONFIRM'
,p_validation_type=>'SQL_EXPRESSION'
,p_error_message=>'The two passwords don''t match'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39023932542848795654)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Modify Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_valuesToHash apex_t_varchar2 := apex_t_varchar2(:APP_USER, :P47_PASSWORD);',
'begin',
'  update USERS',
'  set Password = apex_util.get_hash(v_valuesToHash, null)',
'  where UserName = :APP_USER;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00048
begin
wwv_flow_api.create_page(
 p_id=>48
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'SQL Injection'
,p_alias=>'SQL-INJECTION'
,p_step_title=>'SQL Injection'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713015239'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39023932663375795655)
,p_name=>'Show Employee Values'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_source=>'return ''select distinct '' || replace(:P48_COLUMN1, '' '', '''')  || '' from EMP'';'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_plug_query_max_columns=>1
,p_query_headings=>'return :P48_COLUMN1;'
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39023932886242795658)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Col01'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39023932720844795656)
,p_plug_name=>'Get Employee Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39023933062055795659)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39023932663375795655)
,p_button_name=>'Submit1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39621128766225276713)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39023932720844795656)
,p_button_name=>'Submit2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023932816869795657)
,p_name=>'P48_COLUMN1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39023932663375795655)
,p_prompt=>'Column Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39621128397402276710)
,p_name=>'P48_COLUMN2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39023932720844795656)
,p_prompt=>'Column Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39621128485170276711)
,p_name=>'P48_EMPNO2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39023932720844795656)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EName, EmpNo',
'from EMP',
'order by EName'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39621128657169276712)
,p_name=>'P48_VALUE2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39023932720844795656)
,p_prompt=>'Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39621128778169276714)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetValue'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_query varchar2(100);',
'begin',
'  v_query := ''select '' || :P48_COLUMN2 || '' from EMP where EmpNo = :1'';',
' ',
'  execute immediate v_query',
'  into  :P48_VALUE2',
'  using :P48_EMPNO2;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39621128766225276713)
);
end;
/
prompt --application/pages/page_00049
begin
wwv_flow_api.create_page(
 p_id=>49
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Cross-Site Scripting'
,p_alias=>'CROSS-SITE-SCRIPTING'
,p_step_title=>'Cross-Site Scripting'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200713015509'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39621128895428276715)
,p_name=>'Departments'
,p_template=>wwv_flow_api.id(27368399759077268655)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DeptNo, DName, ''<b>'' || Loc || ''</b>'' as Loc',
'from DEPT',
'order by DName'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27368428637096268678)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39621129037742276716)
,p_query_column_id=>1
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>1
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39621129170514276717)
,p_query_column_id=>2
,p_column_alias=>'DNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dname'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39621129193366276718)
,p_query_column_id=>3
,p_column_alias=>'LOC'
,p_column_display_sequence=>3
,p_column_heading=>'Loc'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39621129299097276719)
,p_plug_name=>'Update Location'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(27368399759077268655)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DeptNo, Loc',
'from DEPT'))
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39621129584238276722)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39621129299097276719)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39621129873355276724)
,p_name=>'P49_DEPTNO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39621129299097276719)
,p_item_source_plug_id=>wwv_flow_api.id(39621129299097276719)
,p_prompt=>'Choose<br>Dept'
,p_source=>'DEPTNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DName, DeptNo',
'from DEPT'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39621129923037276725)
,p_name=>'P49_LOC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39621129299097276719)
,p_item_source_plug_id=>wwv_flow_api.id(39621129299097276719)
,p_prompt=>'New<br>Location'
,p_source=>'LOC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>80
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(27368460565201268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39621130097845276727)
,p_validation_name=>'ValidLocation'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_LocEscaped varchar2(100);',
'begin',
'  v_LocEscaped := apex_escape.html(:P49_LOC);',
'  if :P49_LOC = v_LocEscaped then',
'    return true;',
'  else',
'    return false;',
'  end if;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'A location cannot contain HTML characters'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39621129995871276726)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(39621129299097276719)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Update Location'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39621130244959276728)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EscapeBeforeSaving'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update DEPT',
'  set Loc = APEX_ESCAPE.HTML(:P49_LOC)',
'  where DeptNo = :P49_DEPTNO;',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39621129768099276723)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(39621129299097276719)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Cross-Site Scripting'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(27368484284343268717)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Employee Demo - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(27368352394614268618)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'SCIORE@BC.EDU'
,p_last_upd_yyyymmddhh24miss=>'20200315172923'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27368488284561268726)
,p_plug_name=>'Employee Demo'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27368398402463268654)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27368493008936268732)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(27368488284561268726)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27368372303878268635)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27368491088584268730)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27368488284561268726)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27368461833467268702)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27368488698943268727)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27368488284561268726)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460418311268701)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27368489125572268728)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27368488284561268726)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27368460418311268701)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27368490208355268729)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27368488284561268726)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(27368489459646268728)||'.'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(27368460418311268701)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27368491932211268730)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27368491487013268730)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27368492748903268731)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27368492322865268731)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
