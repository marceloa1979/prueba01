FUNCTION z_suppl_0447.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IT_SUPPLEMENTS) TYPE  ZTT_SUPPL_0447
*"     REFERENCE(IV_OP_TYPE) TYPE  ZDE_FLAG
*"  EXPORTING
*"     REFERENCE(EV_UPDATED) TYPE  ZDE_FLAG
*"----------------------------------------------------------------------
  CHECK NOT it_supplements IS INITIAL.
  CASE iv_op_type.
    WHEN 'C'.
      INSERT ztb_bksp_usr0447 FROM TABLE @it_supplements.
    WHEN 'U'.
      UPDATE ztb_bksp_usr0447 FROM TABLE @it_supplements.
    WHEN 'D'.
      DELETE ztb_bksp_usr0447 FROM TABLE @it_supplements.
  ENDCASE.

  IF sy-subrc EQ 0.
    ev_updated = abap_true.
  ENDIF.

ENDFUNCTION.
