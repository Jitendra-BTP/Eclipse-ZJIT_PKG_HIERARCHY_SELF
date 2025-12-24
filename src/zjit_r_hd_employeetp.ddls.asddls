@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Draft: Employee'

define view entity ZJIT_R_HD_EmployeeTP
  as select from zjit_i_hd_employee
  association         to parent ZJIT_R_HD_AgencyTP as _Agency   on  $projection.Agency = _Agency.Agency
  association of many to one ZJIT_R_HD_EmployeeTP  as _Manager  on  $projection.Agency  = _Manager.Agency
                                                                and $projection.Manager = _Manager.Employee
//  association of one  to many ZJIT_R_HD_EmployeeTP as _Employee on  $projection.Agency   = _Employee.Agency
//                                                                and $projection.Employee = _Employee.Manager
{
  key Agency,
  key Employee,
      FirstName,
      LastName,
      @Semantics.amount.currencyCode: 'SalaryCurrency'
      Salary,
      SalaryCurrency,
      Manager,
      SiblingOrderNumber,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      /* Associations */
      _Agency,
      _Manager,
//      _Employee,
      _Currency
}
