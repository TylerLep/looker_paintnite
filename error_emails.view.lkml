view: error_emails {
  sql_table_name: core.error_emails ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attachments {
    type: string
    sql: ${TABLE}.attachments ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_date ;;
  }

  dimension: delivery_status {
    type: string
    sql: ${TABLE}.delivery_status ;;
  }

  dimension: dynamic_content {
    type: string
    sql: ${TABLE}.dynamic_content ;;
  }

  dimension: email_body {
    type: string
    sql: ${TABLE}.email_body ;;
  }

  dimension_group: email_send {
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
    sql: ${TABLE}.email_send_at ;;
  }

  dimension: email_subject {
    type: string
    sql: ${TABLE}.email_subject ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension: from_address {
    type: string
    sql: ${TABLE}.from_address ;;
  }

  dimension: from_name {
    type: string
    sql: ${TABLE}.from_name ;;
  }

  dimension: last_updated_by {
    type: string
    sql: ${TABLE}.last_updated_by ;;
  }

  dimension_group: last_updated {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_updated_date ;;
  }

  dimension: retry_count {
    type: number
    sql: ${TABLE}.retry_count ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}.template_name ;;
  }

  dimension: to_address {
    type: string
    sql: ${TABLE}.to_address ;;
  }

  measure: count {
    type: count
    drill_fields: [id, from_name, template_name]
  }
}
