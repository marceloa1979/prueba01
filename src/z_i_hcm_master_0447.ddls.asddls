@AbapCatalog.sqlViewName: 'ZV_HCM_0447'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck:  #CHECK
@EndUserText.label: 'HCM - Master'
define root view z_i_hcm_master_0447
  as select from zhc_master_0447 as HCMMaster
{
      //HCMMaster
  key e_number,
      e_name,
      e_department,
      status,
      job_title,
      start_date,
      end_date,
      email,
      m_number,
      m_name,
      m_department,
      crea_date_time,
      crea_uname,
      lchg_date_time,
      lchg_uname
}
