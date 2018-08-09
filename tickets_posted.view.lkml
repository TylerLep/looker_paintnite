view: tickets_posted {
  sql_table_name: core.tickets_posted ;;

  dimension: commission_posted {
    type: yesno
    sql: ${TABLE}.commission_posted ;;
  }

  dimension: events_posted {
    type: yesno
    sql: ${TABLE}.events_posted ;;
  }

  dimension: licensees_posted {
    type: yesno
    sql: ${TABLE}.licensees_posted ;;
  }

  dimension: stripes_posted {
    type: yesno
    sql: ${TABLE}.stripes_posted ;;
  }

  dimension: tax_posted {
    type: yesno
    sql: ${TABLE}.tax_posted ;;
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
