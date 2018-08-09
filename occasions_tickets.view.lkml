view: occasions_tickets {
  sql_table_name: core.occasions_tickets ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: occasion_id {
    type: yesno
    # hidden: yes
    sql: ${TABLE}.occasion_id ;;
  }

  dimension: other_occasion {
    type: string
    sql: ${TABLE}.other_occasion ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, occasions.id, occasions.name, tickets.ticket_id]
  }
}
