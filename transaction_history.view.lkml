view: transaction_history {
  sql_table_name: core.transaction_history ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: card_type {
    type: string
    sql: ${TABLE}.card_type ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}.charge_id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: fee {
    type: number
    sql: ${TABLE}.fee ;;
  }

  dimension: last4 {
    type: number
    sql: ${TABLE}.last4 ;;
  }

  dimension: livemode {
    type: string
    sql: ${TABLE}.livemode ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
