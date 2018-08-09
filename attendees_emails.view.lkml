view: attendees_emails {
  sql_table_name: core.attendees_emails ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: emails {
    type: string
    sql: ${TABLE}.emails ;;
  }

  dimension: guest_name {
    type: string
    sql: ${TABLE}.guest_name ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, guest_name, tickets.ticket_id]
  }
}
