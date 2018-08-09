view: promo_answers {
  sql_table_name: core.promo_answers ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: guest_number {
    type: number
    sql: ${TABLE}.guest_number ;;
  }

  dimension: promo_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.promo_id ;;
  }

  dimension: qorder {
    type: yesno
    sql: ${TABLE}.qorder ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension_group: submit {
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
    sql: ${TABLE}.submit_time ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: [promos.promo_id, tickets.ticket_id]
  }
}
