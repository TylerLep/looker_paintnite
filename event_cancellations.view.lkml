view: event_cancellations {
  sql_table_name: core.event_cancellations ;;

  dimension: cancellation_id {
    type: number
    sql: ${TABLE}.cancellation_id ;;
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

  dimension: email_1_template {
    type: number
    sql: ${TABLE}.email_1_template ;;
  }

  dimension: email_2_template {
    type: number
    sql: ${TABLE}.email_2_template ;;
  }

  dimension: email_3_template {
    type: number
    sql: ${TABLE}.email_3_template ;;
  }

  dimension: email_customers_body {
    type: string
    sql: ${TABLE}.email_customers_body ;;
  }

  dimension: email_customers_subject {
    type: string
    sql: ${TABLE}.email_customers_subject ;;
  }

  dimension: email_staff_body {
    type: string
    sql: ${TABLE}.email_staff_body ;;
  }

  dimension: email_staff_subject {
    type: string
    sql: ${TABLE}.email_staff_subject ;;
  }

  dimension: email_venues_body {
    type: string
    sql: ${TABLE}.email_venues_body ;;
  }

  dimension: email_venues_subject {
    type: string
    sql: ${TABLE}.email_venues_subject ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: send_email {
    type: yesno
    sql: ${TABLE}.send_email ;;
  }

  measure: count {
    type: count
    drill_fields: [events.event_id]
  }
}
