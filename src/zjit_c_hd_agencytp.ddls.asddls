@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Draft: Agency'

@Metadata.allowExtensions: true

define root view entity ZJIT_C_HD_AgencyTP
  provider contract transactional_query
  as projection on ZJIT_R_HD_AgencyTP
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
      _Employee : redirected to composition child ZJIT_C_HD_EmployeeTP
}
