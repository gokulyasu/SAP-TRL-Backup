@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Log Travel View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}


define view entity zgp_cds_dvw_log_travel as select from /dmo/log_travel
{
    key change_id as ChangeId,
    travel_id as TravelId,
    changing_operation as ChangingOperation,
    changed_field_name as ChangedFieldName,
    changed_value as ChangedValue,
    created_at as CreatedAt
}
