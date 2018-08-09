view: coupons_posted {
  sql_table_name: core.coupons_posted ;;

  dimension: coupon_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.coupon_id ;;
  }

  dimension: posted {
    type: yesno
    sql: ${TABLE}.posted ;;
  }

  measure: count {
    type: count
    drill_fields: [coupons.coupon_id, coupons.purchaser_name]
  }
}
