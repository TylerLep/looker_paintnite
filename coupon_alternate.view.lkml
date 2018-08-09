view: coupon_alternate {
  sql_table_name: core.coupon_alternate ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alternate {
    type: string
    sql: ${TABLE}.alternate ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
