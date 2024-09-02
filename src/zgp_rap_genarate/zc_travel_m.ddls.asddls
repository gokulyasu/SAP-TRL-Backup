@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_TRAVEL_M
  provider contract transactional_query
  as projection on ZR_TRAVEL_M
{
  key TravelId,
  AgencyId,
  CustomerId,
  BeginDate,
  EndDate,
  BookingFee,
  TotalPrice,
  @Semantics.currencyCode: true
  CurrencyCode,
  Description,
  OverallStatus,
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  LastChangedAt
  
}
