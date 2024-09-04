@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity zgp_cds_dvw_booking as select from /dmo/booking_m
association to parent zgp_cds_dvw_travel as travel on $projection.TravelId = travel.TravelId
{

@UI.facet: [{ type: #IDENTIFICATION_REFERENCE,id: 'BookingHeader', label: 'Booking' ,position: 10 }
]

    key travel_id as TravelId,
    @UI.identification:[{position: 10}]
    @UI.lineItem: [{ position: 10 }]
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
    
//    Association
    travel
    
}
