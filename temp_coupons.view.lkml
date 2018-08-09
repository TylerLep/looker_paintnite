view: temp_coupons {
  sql_table_name: core.temp_coupons ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: deal_site {
    type: string
    sql: ${TABLE}.deal_site ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, paintnites.paintnite_id, paintnites.name, paintnites.state_name]
  }
}
