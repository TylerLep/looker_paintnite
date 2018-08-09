view: tracking_tempdata {
  sql_table_name: core.tracking_tempdata ;;

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
    sql: ${TABLE}.created ;;
  }

  dimension: tracking_data {
    type: string
    sql: ${TABLE}.tracking_data ;;
  }

  dimension: tracking_id {
    type: number
    sql: ${TABLE}.tracking_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
