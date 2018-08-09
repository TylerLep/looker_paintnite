view: redemptions {
  sql_table_name: core.redemptions ;;

  dimension: code_count {
    type: number
    sql: ${TABLE}.code_count ;;
  }

  dimension: gratuity {
    type: number
    sql: ${TABLE}.gratuity ;;
  }

  dimension: promo_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.promo_id ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.subtotal ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [promos.promo_id]
  }
}
