view: charity_events {
  sql_table_name: core.charity_events ;;

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: alcohol_served {
    type: yesno
    sql: ${TABLE}.alcohol_served ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}.charge_id ;;
  }

  dimension: charity_addr_line1 {
    type: string
    sql: ${TABLE}.charity_addr_line1 ;;
  }

  dimension: charity_addr_line2 {
    type: string
    sql: ${TABLE}.charity_addr_line2 ;;
  }

  dimension: charity_city {
    type: string
    sql: ${TABLE}.charity_city ;;
  }

  dimension: charity_contact {
    type: string
    sql: ${TABLE}.charity_contact ;;
  }

  dimension: charity_contact_email {
    type: string
    sql: ${TABLE}.charity_contact_email ;;
  }

  dimension: charity_country {
    type: string
    sql: ${TABLE}.charity_country ;;
  }

  dimension: charity_description {
    type: string
    sql: ${TABLE}.charity_description ;;
  }

  dimension: charity_first_name {
    type: string
    sql: ${TABLE}.charity_first_name ;;
  }

  dimension: charity_id {
    type: number
    sql: ${TABLE}.charity_id ;;
  }

  dimension: charity_last_name {
    type: string
    sql: ${TABLE}.charity_last_name ;;
  }

  dimension: charity_name {
    type: string
    sql: ${TABLE}.charity_name ;;
  }

  dimension: charity_per_ticket {
    type: number
    sql: ${TABLE}.charity_per_ticket ;;
  }

  dimension: charity_state {
    type: string
    sql: ${TABLE}.charity_state ;;
  }

  dimension: charity_street {
    type: string
    sql: ${TABLE}.charity_street ;;
  }

  dimension: charity_zip {
    type: string
    sql: ${TABLE}.charity_zip ;;
  }

  dimension: check_amount {
    type: number
    sql: ${TABLE}.check_amount ;;
  }

  dimension_group: check {
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
    sql: ${TABLE}.check_date ;;
  }

  dimension: check_number {
    type: string
    sql: ${TABLE}.check_number ;;
  }

  dimension: cont_dist {
    type: yesno
    sql: ${TABLE}.cont_dist ;;
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

  dimension: deposit_amount {
    type: number
    sql: ${TABLE}.deposit_amount ;;
  }

  dimension: deposit_refunded {
    type: string
    sql: ${TABLE}.deposit_refunded ;;
  }

  dimension: depositor_email {
    type: string
    sql: ${TABLE}.depositor_email ;;
  }

  dimension: depositor_name {
    type: string
    sql: ${TABLE}.depositor_name ;;
  }

  dimension: disbursement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.disbursement_id ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: file_501c3 {
    type: yesno
    sql: ${TABLE}.file_501c3 ;;
  }

  dimension: file_url_501c3 {
    type: string
    sql: ${TABLE}.file_url_501c3 ;;
  }

  dimension: is_bar {
    type: yesno
    sql: ${TABLE}.is_bar ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.memo ;;
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

  dimension_group: refund {
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
    sql: ${TABLE}.refund_date ;;
  }

  dimension: refund_id {
    type: string
    sql: ${TABLE}.refund_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      charity_name,
      charity_first_name,
      charity_last_name,
      depositor_name,
      events.event_id,
      disbursements.disbursement_id,
      accounts.id
    ]
  }
}
