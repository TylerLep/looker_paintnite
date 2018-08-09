view: ticket_status {
  sql_table_name: core.ticket_status ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.memo ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
