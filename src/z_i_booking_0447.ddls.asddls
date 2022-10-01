@AbapCatalog.sqlViewName: 'ZVBOOK_0447'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Booking'
define view Z_I_BOOKING_0447
  as select from ztb_bkng_usr0447 as Booking

  composition [0..*] of Z_I_BOOKSUPPL_0447 as _BookingSupplement

  association        to parent Z_I_TRAVEL_0447 as _Travel     on $projection.travel_id = _Travel.travel_id

  association [1..1] to /DMO/I_Customer        as _Customer   on $projection.customer_id = _Customer.CustomerID
  association [1..1] to /DMO/I_Carrier         as _Carrier    on $projection.carrier_id = _Carrier.AirlineID
  association [1..*] to /DMO/I_Connection      as _Connection on $projection.connection_id = _Connection.ConnectionID

{
  key travel_id,
  key booking_id,
      booking_date,
      customer_id,
      carrier_id,
      connection_id,
      flight_date,
      flight_price,
      currency_code,
      booking_status,
      last_changed_at as last_change_at,

      /* Associations */
      _Travel,
      _BookingSupplement,
      _Customer,
      _Carrier,
      _Connection
}
