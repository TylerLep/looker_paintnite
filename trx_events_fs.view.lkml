view: trx_events_fs {
  sql_table_name: core.trx_events_fs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: charity {
    type: number
    sql: ${TABLE}.charity ;;
  }

  dimension: coupon_revenue {
    type: number
    sql: ${TABLE}.coupon_revenue ;;
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

  dimension_group: event {
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
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_type {
    type: number
    sql: ${TABLE}.event_type ;;
  }

  dimension: hq_portion {
    type: number
    sql: ${TABLE}.hq_portion ;;
  }

  dimension: licensee_share {
    type: number
    sql: ${TABLE}.licensee_share ;;
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

  dimension: net_revenue {
    type: number
    sql: ${TABLE}.net_revenue ;;
  }

  dimension: painting_expense {
    type: number
    sql: ${TABLE}.painting_expense ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: ticket_revenue {
    type: number
    sql: ${TABLE}.ticket_revenue ;;
  }

  measure: count {
    type: count
    drill_fields: [id, events.event_id, paintnites.paintnite_id, paintnites.name, paintnites.state_name]
  }
}
