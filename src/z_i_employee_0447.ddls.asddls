@AbapCatalog.sqlViewName: 'ZV_EMPL_0447'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck:  #CHECK
@EndUserText.label: 'Employees'
define root view Z_I_employee_0447
  as select from zemployee_0447 as Employee
{
      //Employee
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
