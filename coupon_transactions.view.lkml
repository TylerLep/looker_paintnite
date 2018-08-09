view: coupon_transactions {
  sql_table_name: core.coupon_transactions ;;

  dimension: transaction_data {
    type: string
    sql: ${TABLE}.transaction_data ;;
  }

  dimension_group: transaction {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
