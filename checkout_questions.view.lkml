view: checkout_questions {
  sql_table_name: core.checkout_questions ;;

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

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.question_id ;;
  }

  dimension: question_type {
    type: string
    sql: ${TABLE}.question_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
