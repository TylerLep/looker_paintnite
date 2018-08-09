view: private_events {
  sql_table_name: core.private_events ;;

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

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_manager_id {
    type: number
    sql: ${TABLE}.event_manager_id ;;
  }

  dimension: event_material_cost {
    type: number
    sql: ${TABLE}.event_material_cost ;;
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

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: pe_type {
    type: number
    sql: ${TABLE}.pe_type ;;
  }

  dimension: private_admin_fee {
    type: number
    sql: ${TABLE}.private_admin_fee ;;
  }

  dimension: private_commission_fee {
    type: number
    sql: ${TABLE}.private_commission_fee ;;
  }

  dimension: private_event_cost {
    type: number
    sql: ${TABLE}.private_event_cost ;;
  }

  dimension: private_holiday_split {
    type: yesno
    sql: ${TABLE}.private_holiday_split ;;
  }

  dimension: private_id {
    type: number
    sql: ${TABLE}.private_id ;;
  }

  dimension: private_pay_method {
    type: string
    sql: ${TABLE}.private_pay_method ;;
  }

  dimension: private_pay_received {
    type: yesno
    sql: ${TABLE}.private_pay_received ;;
  }

  measure: count {
    type: count
    drill_fields: [events.event_id]
  }
}
