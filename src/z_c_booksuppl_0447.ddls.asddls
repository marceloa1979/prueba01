@EndUserText.label: 'Consumption - Booking Supplement'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity Z_C_BOOKSUPPL_0447
  as projection on Z_I_BOOKSUPPL_0447
{
  key travel_id                   as TravelID,
  key booking_id                  as BookingID,
  key booking_supplement_id       as BookingSupplementID,
      @ObjectModel.text.element: ['SupplementDescription']
      supplement_id               as SupplementID,
      _SupplementText.Description as SupplementDescription : localized,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      price                       as Price,
      @Semantics.currencyCode: true
      currency                    as CurrencyCode,
      last_changed_at             as LastChangedAt,

      /* Associations */
      _Travel : redirected to  Z_C_TRAVEL_0447, 
      _Booking  : redirected to parent Z_C_BOOKING_0447,
      _Product,
      _SupplementText
}
