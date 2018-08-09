view: survey_questions {
  sql_table_name: core.survey_questions ;;

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

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
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
    type: yesno
    sql: ${TABLE}.question_type ;;
  }

  dimension: radio3 {
    type: string
    sql: ${TABLE}.radio3 ;;
  }

  dimension: radio4 {
    type: string
    sql: ${TABLE}.radio4 ;;
  }

  dimension: required {
    type: yesno
    sql: ${TABLE}.required ;;
  }

  dimension: slider1 {
    type: string
    sql: ${TABLE}.slider1 ;;
  }

  dimension: slider2 {
    type: string
    sql: ${TABLE}.slider2 ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: subject_code {
    type: yesno
    sql: ${TABLE}.subject_code ;;
  }

  dimension: survey_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_id ;;
  }

  dimension: translation_id {
    type: number
    sql: ${TABLE}.translation_id ;;
  }

  measure: count {
    type: count
    drill_fields: [surveys.survey_id, surveys.survey_name, paintnites.paintnite_id, paintnites.name, paintnites.state_name]
  }
}
