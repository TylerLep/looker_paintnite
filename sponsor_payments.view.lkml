view: sponsor_payments {
  sql_table_name: core.sponsor_payments ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}.charge_id ;;
  }

  dimension: charged {
    type: number
    sql: ${TABLE}.charged ;;
  }

  dimension: cheque_no {
    type: string
    sql: ${TABLE}.cheque_no ;;
  }

  dimension: contract_id {
    type: number
    sql: ${TABLE}.contract_id ;;
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

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: method {
    type: number
    sql: ${TABLE}.method ;;
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

  dimension_group: payment {
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
    sql: ${TABLE}.payment_date ;;
  }

  dimension: payment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.payment_id ;;
  }

  dimension: stripe_charge_email {
    type: string
    sql: ${TABLE}.stripe_charge_email ;;
  }

  dimension: stripe_token {
    type: string
    sql: ${TABLE}.stripe_token ;;
  }

  dimension: stripe_token_type {
    type: string
    sql: ${TABLE}.stripe_token_type ;;
  }

  measure: count {
    type: count
    drill_fields: [payments.payment_id]
  }
}
