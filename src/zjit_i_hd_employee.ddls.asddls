@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Draft: Employee'

define view entity zjit_i_hd_employee
  as select from /dmo/employ_a_hd

//  association of many to one zjit_i_hd_agency    as _Agency   on  $projection.Agency = _Agency.Agency
//  association of many to one zjit_i_hd_employee  as _Manager  on  $projection.Agency  = _Manager.Agency
//                                                              and $projection.Manager = _Manager.Employee
//  association of many to many zjit_i_hd_employee as _Employee on  $projection.Agency   = _Employee.Agency
//                                                              and $projection.Employee = _Employee.Manager
  association         to one I_Currency          as _Currency on  $projection.SalaryCurrency = _Currency.Currency
{
  key agency                as Agency,
  key employee              as Employee,
      first_name            as FirstName,
      last_name             as LastName,
      @Semantics.amount.currencyCode: 'SalaryCurrency'
      salary                as Salary,
      salary_currency       as SalaryCurrency,
      manager               as Manager,
      sibling_order_number  as SiblingOrderNumber,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,

//      _Agency,
//      _Manager,
//      _Employee,
      _Currency
}
