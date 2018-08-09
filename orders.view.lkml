view: orders {
  sql_table_name: core.orders ;;

  dimension: order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: amount_oc {
    type: number
    sql: ${TABLE}.amount_oc ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
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

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: licensee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.licensee_id ;;
  }

  dimension: line1 {
    type: string
    sql: ${TABLE}.line1 ;;
  }

  dimension: line2 {
    type: string
    sql: ${TABLE}.line2 ;;
  }

  dimension: method {
    type: string
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

  dimension: shipping {
    type: number
    sql: ${TABLE}.shipping ;;
  }

  dimension: shipping_address {
    type: string
    sql: ${TABLE}.shipping_address ;;
  }

  dimension: special_instructions {
    type: string
    sql: ${TABLE}.special_instructions ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.subtotal ;;
  }

  dimension: tax_doc_code {
    type: string
    sql: ${TABLE}.tax_doc_code ;;
  }

  dimension: tax_oc {
    type: number
    sql: ${TABLE}.tax_oc ;;
  }

  dimension: taxes {
    type: number
    sql: ${TABLE}.taxes ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_id,
      licensees.licensee_id,
      licensees.first_name,
      licensees.last_name,
      licensees.bank_name,
      licensees.bank_verification_name,
      licensees.business_name,
      licensees.team_name,
      canceled_order_lines.count,
      expenses.count
    ]
  }
}
