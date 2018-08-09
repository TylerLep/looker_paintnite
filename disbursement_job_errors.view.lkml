view: disbursement_job_errors {
  sql_table_name: core.disbursement_job_errors ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: details {
    type: string
    sql: ${TABLE}.details ;;
  }

  dimension: fatal {
    type: yesno
    sql: ${TABLE}.fatal ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}.job_id ;;
  }

  dimension: record_id {
    type: number
    sql: ${TABLE}.record_id ;;
  }

  dimension: record_type {
    type: string
    sql: ${TABLE}.record_type ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.scope ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
