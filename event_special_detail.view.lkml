view: event_special_detail {
  sql_table_name: core.event_special_detail ;;

  dimension: detail_id {
    type: number
    sql: ${TABLE}.detail_id ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  measure: count {
    type: count
    drill_fields: [events.event_id]
  }
}
