view: transaction_log {
  sql_table_name: core.transaction_log ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}.processedAt ;;
  }

  dimension: purchase_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.purchaseId ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, purchases.id]
  }
}
