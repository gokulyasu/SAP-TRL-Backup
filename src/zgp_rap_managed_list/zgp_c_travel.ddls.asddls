@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Travel'
@Metadata.allowExtensions: true
define root view entity ZGP_C_Travel 
    provider contract transactional_query
  as projection on zgp_cds_dvw_travel 
  

{
    key TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    BookingFee,
     @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    booking: redirected to composition child ZGP_C_Booking 
}
