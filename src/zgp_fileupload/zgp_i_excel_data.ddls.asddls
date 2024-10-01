@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGP_I_EXCEL_DATA 
provider contract transactional_query
as projection on ZGP_C_EXCEL_DATA
{
    key Invoice,
    Comments,
    Attachment,
    MimeType,
    Filename,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt
}
