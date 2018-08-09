view: checkout_answers {
  sql_table_name: core.checkout_answers ;;

  dimension: answer_id {
    type: number
    sql: ${TABLE}.answer_id ;;
  }

  dimension: answer_text {
    type: string
    sql: ${TABLE}.answer_text ;;
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

  dimension: question_id {
    type: number
    sql: ${TABLE}.question_id ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: [tickets.ticket_id]
  }
}
