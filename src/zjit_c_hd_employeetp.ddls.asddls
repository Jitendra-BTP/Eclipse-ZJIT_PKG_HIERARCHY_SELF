@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Draft: Employee'

@Metadata.allowExtensions: true

define view entity ZJIT_C_HD_EmployeeTP
  as projection on ZJIT_R_HD_EmployeeTP
{
  key Agency,
  key Employee,
      FirstName,
      LastName,
      Salary,
      SalaryCurrency,
      Manager,
      SiblingOrderNumber,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      /* Associations */
      _Agency : redirected to parent ZJIT_C_HD_AgencyTP,
      _Currency
}
