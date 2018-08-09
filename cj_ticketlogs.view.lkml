view: cj_ticketlogs {
  sql_table_name: core.cj_ticketlogs ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: cj_processid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cj_processid ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: purchase_ts {
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
    sql: ${TABLE}.purchase_ts ;;
  }

  dimension: purchase_url {
    type: string
    sql: ${TABLE}.purchase_url ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [tickets.ticket_id]
  }
}
