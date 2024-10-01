@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Startup Booking'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZGP_SU_I_Booking as  select from /dmo/booking_m
association  to parent ZGP_SU_I_TRAVEL as _Travel
    on $projection.TravelId = _Travel.TravelId
{
    key travel_id as TravelId,
    key booking_id as BookingId,
    booking_date as BookingDate,
    customer_id as CustomerId,
    carrier_id as CarrierId,
    connection_id as ConnectionId,
    flight_date as FlightDate,
    
    @Semantics.amount.currencyCode: 'CurrencyCode'
    flight_price as FlightPrice,
    currency_code as CurrencyCode,
    booking_status as BookingStatus,
    last_changed_at as LastChangedAt,
    _Travel // Make association public
}
