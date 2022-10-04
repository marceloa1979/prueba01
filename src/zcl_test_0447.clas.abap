CLASS zcl_test_0447 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_test_0447 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*
*
*zcl_aux_travel_det_0447=>calculate_price(
*it_travel_id = VALUE #( FOR GROUPS <booking_suppl> OF booking_key IN keys
* GROUP BY booking_key-travel_id WITHOUT MEMBERS ( <booking_suppl> ) )
*).
data: vl_uno TYPE c.





  ENDMETHOD.

ENDCLASS.
