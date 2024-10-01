@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Startup Travel'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZGP_SU_I_TRAVEL as select from /dmo/travel_m
composition [0..*] of ZGP_SU_I_Booking as _booking
{
    key travel_id as TravelId,
    agency_id as AgencyId,
    customer_id as CustomerId,
    begin_date as BeginDate,
    end_date as EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    booking_fee as BookingFee,
    
    @Semantics.amount.currencyCode: 'CurrencyCode'
    total_price as TotalPrice,
    currency_code as CurrencyCode,
    description as Description,
    overall_status as OverallStatus,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    _booking // Make association public
}
