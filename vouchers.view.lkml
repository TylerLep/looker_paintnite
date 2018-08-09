view: vouchers {
  sql_table_name: core.vouchers ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: guest_number {
    type: number
    sql: ${TABLE}.guest_number ;;
  }

  dimension: redeemed {
    type: yesno
    sql: ${TABLE}.redeemed ;;
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
