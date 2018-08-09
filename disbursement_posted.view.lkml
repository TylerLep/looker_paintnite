view: disbursement_posted {
  sql_table_name: core.disbursement_posted ;;

  dimension: artist_fee_posted {
    type: yesno
    sql: ${TABLE}.artist_fee_posted ;;
  }

  dimension: disbursement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.disbursement_id ;;
  }

  measure: count {
    type: count
    drill_fields: [disbursements.disbursement_id]
  }
}
