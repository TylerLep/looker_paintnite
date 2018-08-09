view: email_shares {
  sql_table_name: core.email_shares ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: date_sent {
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
    sql: ${TABLE}.date_sent ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: event_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: quantity_sent {
    type: number
    sql: ${TABLE}.quantity_sent ;;
  }

  dimension: sender_full_name {
    type: string
    sql: ${TABLE}.sender_full_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sender_full_name, events.event_id]
  }
}
