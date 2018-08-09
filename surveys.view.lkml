view: surveys {
  sql_table_name: core.surveys ;;

  dimension: survey_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.survey_id ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: survey_name {
    type: string
    sql: ${TABLE}.survey_name ;;
  }

  dimension: survey_text {
    type: string
    sql: ${TABLE}.survey_text ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      survey_id,
      survey_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      survey_answers.count,
      survey_questions.count
    ]
  }
}
