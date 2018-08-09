view: canceled_events {
  sql_table_name: core.canceled_events ;;

  dimension: canceled_reason_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.canceled_reason_id ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  measure: count {
    type: count
    drill_fields: [events.event_id, canceled_reasons.canceled_reason_id, canceled_reasons.reason_name]
  }
}
