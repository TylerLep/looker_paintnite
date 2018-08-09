view: events_posted {
  sql_table_name: core.events_posted ;;

  dimension: artist_fee_posted {
    type: yesno
    sql: ${TABLE}.artist_fee_posted ;;
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
