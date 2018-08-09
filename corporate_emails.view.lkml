view: corporate_emails {
  sql_table_name: core.corporate_emails ;;

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: email_id {
    type: number
    sql: ${TABLE}.email_id ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }

  measure: count {
    type: count
    drill_fields: [events.event_id]
  }
}
