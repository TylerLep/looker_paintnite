view: coupons_delete {
  sql_table_name: core.coupons_delete ;;

  dimension: coupon_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.coupon_id ;;
  }

  measure: count {
    type: count
    drill_fields: [coupons.coupon_id, coupons.purchaser_name]
  }
}
