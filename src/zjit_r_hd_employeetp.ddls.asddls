@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Draft: Employee'

define view entity ZJIT_R_HD_EmployeeTP
  as select from zjit_i_hd_employee
  association to parent ZJIT_R_HD_AgencyTP as _Agency on $projection.Agency = _Agency.Agency
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
      _Currency,
      _Agency
}
