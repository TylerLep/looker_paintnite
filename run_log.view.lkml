view: run_log {
  sql_table_name: core.run_log ;;

  dimension: run_log_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.run_log_id ;;
  }

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

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}.job_id ;;
  }

  dimension: last_updated_by {
    type: string
    sql: ${TABLE}.last_updated_by ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.last_updated_date ;;
  }

  dimension: stage {
    type: number
    sql: ${TABLE}.stage ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [run_log_id, error_log.count]
  }
}
