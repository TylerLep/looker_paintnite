view: event_additional_fees {
  sql_table_name: core.event_additional_fees ;;

  dimension: adjustment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.adjustment_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: fee_type {
    type: yesno
    sql: ${TABLE}.fee_type ;;
  }

  dimension: licensee_percent {
    type: yesno
    sql: ${TABLE}.licensee_percent ;;
  }

  measure: count {
    type: count
    drill_fields: [adjustments.id, events.event_id]
  }
}
