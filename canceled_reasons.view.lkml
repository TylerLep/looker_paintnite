view: canceled_reasons {
  sql_table_name: core.canceled_reasons ;;

  dimension: canceled_reason_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.canceled_reason_id ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: reason_name {
    type: string
    sql: ${TABLE}.reason_name ;;
  }

  measure: count {
    type: count
    drill_fields: [canceled_reason_id, reason_name, canceled_events.count]
  }
}
