view: session_attachments {
  sql_table_name: core.session_attachments ;;

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

  dimension: session_uuid {
    type: string
    sql: ${TABLE}.session_uuid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
