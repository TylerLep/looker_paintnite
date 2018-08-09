view: canceled_order_lines {
  sql_table_name: core.canceled_order_lines ;;

  dimension: canceled_order_line_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.canceled_order_line_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: cancelation_reason {
    type: string
    sql: ${TABLE}.cancelation_reason ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
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
    sql: ${TABLE}.created_date ;;
  }

  dimension: expense_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.expense_id ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: refund_payment_id {
    type: number
    sql: ${TABLE}.refund_payment_id ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  measure: count {
    type: count
    drill_fields: [canceled_order_line_id, orders.order_id, expenses.expense_id]
  }
}
