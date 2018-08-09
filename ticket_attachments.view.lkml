view: ticket_attachments {
  sql_table_name: core.ticket_attachments ;;

  dimension: attachment_type {
    type: string
    sql: ${TABLE}.attachment_type ;;
  }

  dimension: attachment_value {
    type: string
    sql: ${TABLE}.attachment_value ;;
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

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: [tickets.ticket_id]
  }
}
