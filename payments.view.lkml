view: payments {
  sql_table_name: core.payments ;;

  dimension: payment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.payment_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: amount_oc {
    type: number
    sql: ${TABLE}.amount_oc ;;
  }

  dimension: cardtype {
    type: string
    sql: ${TABLE}.cardtype ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: disbursement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.disbursement_id ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: fee {
    type: number
    sql: ${TABLE}.fee ;;
  }

  dimension: last4 {
    type: string
    sql: ${TABLE}.last4 ;;
  }

  dimension: licensee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.licensee_id ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension: stripe_id {
    type: string
    sql: ${TABLE}.stripe_id ;;
  }

  dimension_group: trx {
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
    sql: ${TABLE}.trx_date ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      payment_id,
      licensees.licensee_id,
      licensees.first_name,
      licensees.last_name,
      licensees.bank_name,
      licensees.bank_verification_name,
      licensees.business_name,
      licensees.team_name,
      disbursements.disbursement_id,
      expenses.count,
      sponsor_payments.count,
      trx_sponsorships.count
    ]
  }
}
