@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Draft: Employee HierarchyNode'

define hierarchy ZJIT_I_HD_EMPLOYEEHN
  with parameters
    P_Agency : /dmo/agency_id

  as parent child hierarchy(
    source zjit_i_hd_employee

    child to parent association _Manager

    directory _Agency filter by
      Agency = $parameters.P_Agency

    start where
      Manager is initial

    siblings order by
      SiblingOrderNumber ascending
  )
{
  key Agency,
  key Employee,
      Manager,
      SiblingOrderNumber

}
