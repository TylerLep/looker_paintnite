view: exception_log {
  sql_table_name: core.exception_log ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: exception {
    type: string
    sql: ${TABLE}.exception ;;
  }

  dimension: exception_details {
    type: string
    sql: ${TABLE}.exception_details ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
