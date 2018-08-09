view: error_log {
  sql_table_name: core.error_log ;;

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension: error_type {
    type: string
    sql: ${TABLE}.error_type ;;
  }

  dimension: run_log_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.run_log_id ;;
  }

  measure: count {
    type: count
    drill_fields: [run_log.run_log_id]
  }
}
