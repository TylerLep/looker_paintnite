view: purchase_tickets {
  sql_table_name: core.purchase_tickets ;;

  dimension: purchase_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.purchase_id ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: [purchases.id, tickets.ticket_id]
  }
}
