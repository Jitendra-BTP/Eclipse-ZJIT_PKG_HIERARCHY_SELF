@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Draft: Employee'

@Metadata.allowExtensions: true

//@OData.hierarchy.recursiveHierarchy:[{ entity.name: 'ZJIT_I_HD_EmployeeHN' }]

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
      _Agency  : redirected to parent ZJIT_C_HD_AgencyTP,
//      _Manager : redirected to ZJIT_C_HD_EmployeeTP,
//      _Employee : redirected to ZJIT_C_HD_EmployeeTP,
      _Currency
}
