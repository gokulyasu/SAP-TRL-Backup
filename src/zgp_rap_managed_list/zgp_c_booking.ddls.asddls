@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking projection'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZGP_C_Booking
 as projection on zgp_cds_dvw_booking
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
    travel: redirected to  parent  zgp_c_travel
}
