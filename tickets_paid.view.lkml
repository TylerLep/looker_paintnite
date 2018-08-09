view: tickets_paid {
  sql_table_name: core.tickets_paid ;;

  dimension: paid {
    type: yesno
    sql: ${TABLE}.paid ;;
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
