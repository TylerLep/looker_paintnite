view: ticket_reschedule_group {
  sql_table_name: core.ticket_reschedule_group ;;

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
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

  dimension: original_ticket_id {
    type: number
    sql: ${TABLE}.original_ticket_id ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
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
