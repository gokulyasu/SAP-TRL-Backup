@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Startup Booking Projection'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZGP_SU_C_Booking as projection on ZGP_SU_I_Booking
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    
    @Semantics.amount.currencyCode: 'CurrencyCode'
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    LastChangedAt,
    /* Associations */
    _Travel :redirected to parent ZGP_SU_C_TRAVEL
}
