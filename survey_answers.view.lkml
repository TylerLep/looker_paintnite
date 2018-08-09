view: survey_answers {
  sql_table_name: core.survey_answers ;;

  dimension: answer_id {
    type: number
    sql: ${TABLE}.answer_id ;;
  }

  dimension: answer_radio {
    type: string
    sql: ${TABLE}.answer_radio ;;
  }

  dimension: answer_score {
    type: number
    sql: ${TABLE}.answer_score ;;
  }

  dimension: answer_text {
    type: string
    sql: ${TABLE}.answer_text ;;
  }

  dimension_group: datestamp {
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
    sql: ${TABLE}.datestamp ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.question_id ;;
  }

  dimension: survey_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_id ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: vf_id {
    type: number
    sql: ${TABLE}.vf_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      surveys.survey_id,
      surveys.survey_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      tickets.ticket_id,
      events.event_id
    ]
  }
}
