@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMVN_C_Booking as projection on ZMVN_R_Booking
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
    _travel: redirected to parent ZMVN_C_TRAVEL
}
