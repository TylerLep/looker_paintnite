view: kit_items {
  sql_table_name: core.kit_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
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

  dimension: desc {
    type: string
    sql: ${TABLE}.`desc` ;;
  }

  dimension: email_desc {
    type: string
    sql: ${TABLE}.email_desc ;;
  }

  dimension: increment {
    type: number
    sql: ${TABLE}.increment ;;
  }

  dimension: intl_markup_currency {
    type: string
    sql: ${TABLE}.intl_markup_currency ;;
  }

  dimension: intl_markup_value {
    type: number
    sql: ${TABLE}.intl_markup_value ;;
  }

  dimension: markup {
    type: number
    sql: ${TABLE}.markup ;;
  }

  dimension: min_quan {
    type: number
    sql: ${TABLE}.min_quan ;;
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

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: reorder_from {
    type: yesno
    sql: ${TABLE}.reorder_from ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: sold_out {
    type: yesno
    sql: ${TABLE}.sold_out ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: startup {
    type: yesno
    sql: ${TABLE}.startup ;;
  }

  dimension: startup_section {
    type: string
    sql: ${TABLE}.startup_section ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}.taxable ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
