view: vw_transaction_data {
  sql_table_name: core.vw_transaction_data ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: card_number {
    type: string
    sql: ${TABLE}.cardNumber ;;
  }

  dimension: card_type {
    type: string
    sql: ${TABLE}.cardType ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}.chargeId ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
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

  dimension: processor {
    type: string
    sql: ${TABLE}.processor ;;
  }

  dimension: purchase_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.purchaseId ;;
  }

  dimension: refund_id {
    type: string
    sql: ${TABLE}.refundId ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: taxes_per_ticket {
    type: string
    sql: ${TABLE}.taxesPerTicket ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionId ;;
  }

  dimension: update_tax {
    type: string
    sql: ${TABLE}.updateTax ;;
  }

  measure: count {
    type: count
    drill_fields: [id, purchases.id]
  }
}
