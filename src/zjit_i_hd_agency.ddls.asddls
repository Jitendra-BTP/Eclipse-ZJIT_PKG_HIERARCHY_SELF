@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Draft: Agency'

define view entity zjit_i_hd_agency
  as select from /dmo/agency_a_hd as Agency
//  association of exact one to many zjit_i_hd_employee as _Employee on $projection.Agency = _Employee.Agency

  association of one       to one I_Country           as _Country  on $projection.CountryCode = _Country.Country

{
  key Agency.agency                as Agency,
      Agency.name                  as Name,
      Agency.street                as Street,
      Agency.postal_code           as PostalCode,
      Agency.city                  as City,
      Agency.country_code          as CountryCode,
      Agency.phone_number          as PhoneNumber,
      Agency.email_address         as EMailAddress,
      Agency.web_address           as WebAddress,

      @Semantics.user.createdBy: true
      Agency.local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      Agency.local_created_at      as LocalCreatedAt,
      @Semantics.user.lastChangedBy: true
      Agency.local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      Agency.local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      Agency.last_changed_at       as LastChangedAt,

      /* Associations */
//      _Employee,
      _Country
}
