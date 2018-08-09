view: virtual_fundraisers {
  sql_table_name: core.virtual_fundraisers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: campaign_title {
    type: string
    sql: ${TABLE}.campaign_title ;;
  }

  dimension: cause_name {
    type: string
    sql: ${TABLE}.cause_name ;;
  }

  dimension: charity_donation {
    type: number
    sql: ${TABLE}.charity_donation ;;
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

  dimension: check_memo {
    type: string
    sql: ${TABLE}.check_memo ;;
  }

  dimension: check_number {
    type: string
    sql: ${TABLE}.check_number ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: desired_code {
    type: string
    sql: ${TABLE}.desired_code ;;
  }

  dimension: display_first_name {
    type: string
    sql: ${TABLE}.display_first_name ;;
  }

  dimension: display_last_name {
    type: string
    sql: ${TABLE}.display_last_name ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: funding_goal {
    type: number
    sql: ${TABLE}.funding_goal ;;
  }

  dimension: fundraiser_code {
    type: string
    sql: ${TABLE}.fundraiser_code ;;
  }

  dimension: image_aspect {
    type: number
    sql: ${TABLE}.image_aspect ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
  }

  dimension: mailing_address {
    type: string
    sql: ${TABLE}.mailing_address ;;
  }

  dimension: mailing_city {
    type: string
    sql: ${TABLE}.mailing_city ;;
  }

  dimension: mailing_country {
    type: string
    sql: ${TABLE}.mailing_country ;;
  }

  dimension: mailing_state {
    type: string
    sql: ${TABLE}.mailing_state ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: pay_to_the_order_of {
    type: string
    sql: ${TABLE}.pay_to_the_order_of ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}.published_at ;;
  }

  dimension: recipient_name {
    type: string
    sql: ${TABLE}.recipient_name ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      display_first_name,
      display_last_name,
      cause_name,
      recipient_name,
      accounts.id
    ]
  }
}
