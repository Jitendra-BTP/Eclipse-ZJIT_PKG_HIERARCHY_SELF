@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Draft: Agency'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZJIT_R_HD_AgencyTP
  as select from zjit_i_hd_agency
  composition of exact one to many ZJIT_R_HD_EmployeeTP as _Employee
{
  key Agency,
      Name,
      Street,
      PostalCode,
      City,
      CountryCode,
      PhoneNumber,
      EMailAddress,
      WebAddress,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Country,
      _Employee // Make association public
}
