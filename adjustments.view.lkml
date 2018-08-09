view: adjustments {
  sql_table_name: core.adjustments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: adj_row {
    type: yesno
    sql: ${TABLE}.adj_row ;;
  }

  dimension: adjustment_amount {
    type: number
    sql: ${TABLE}.adjustment_amount ;;
  }

  dimension: adjustment_amount_inverse {
    type: number
    sql: ${TABLE}.adjustment_amount_inverse ;;
  }

  dimension_group: adjustment {
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
    sql: ${TABLE}.adjustment_date ;;
  }

  dimension: adjustment_type {
    type: string
    sql: ${TABLE}.adjustment_type ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: amount_inverse {
    type: number
    sql: ${TABLE}.amount_inverse ;;
  }

  dimension: amount_oc {
    type: number
    sql: ${TABLE}.amount_oc ;;
  }

  dimension: amount_oc_inverse {
    type: number
    sql: ${TABLE}.amount_oc_inverse ;;
  }

  dimension: created_by {
    type: number
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

  dimension: disbursement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.disbursement_id ;;
  }

  dimension: doc_ref_detail_id {
    type: number
    sql: ${TABLE}.doc_ref_detail_id ;;
  }

  dimension: document_ref_id {
    type: number
    sql: ${TABLE}.document_ref_id ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: licensee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.licensee_id ;;
  }

  dimension: modified_by {
    type: number
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

  dimension_group: period_from {
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
    sql: ${TABLE}.period_from_date ;;
  }

  dimension_group: period_to {
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
    sql: ${TABLE}.period_to_date ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: tax_inverse {
    type: number
    sql: ${TABLE}.tax_inverse ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      licensees.licensee_id,
      licensees.first_name,
      licensees.last_name,
      licensees.bank_name,
      licensees.bank_verification_name,
      licensees.business_name,
      licensees.team_name,
      disbursements.disbursement_id,
      event_additional_fees.count
    ]
  }
}
