view: promo_questions {
  sql_table_name: core.promo_questions ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: promo_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.promo_id ;;
  }

  dimension: qorder {
    type: number
    sql: ${TABLE}.qorder ;;
  }

  dimension: qtype {
    type: yesno
    sql: ${TABLE}.qtype ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.question_id ;;
  }

  measure: count {
    type: count
    drill_fields: [promos.promo_id]
  }
}
