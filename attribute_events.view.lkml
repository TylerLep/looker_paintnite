view: attribute_events {
  sql_table_name: core.attribute_events ;;

  dimension: attribute_id {
    type: yesno
    # hidden: yes
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  measure: count {
    type: count
    drill_fields: [events.event_id, attributes.attribute_id, attributes.attribute_name]
  }
}
