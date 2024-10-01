@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Startup Travel Projection'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGP_SU_C_TRAVEL as projection on ZGP_SU_I_TRAVEL
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
    _booking:redirected to composition child ZGP_SU_C_Booking
}
