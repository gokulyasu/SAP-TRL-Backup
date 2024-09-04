@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Refrence View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZMVN_R_Booking as select from /dmo/booking_m
association to parent ZMVN_R_TRAVEL as _travel on $projection.TravelId = _travel.TravelId
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
    _travel
}
