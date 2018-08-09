view: report_sales {
  sql_table_name: core.report_sales ;;

  dimension: partial {
    type: yesno
    sql: ${TABLE}.partial ;;
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
    sql: ${TABLE}.period_from ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: total_growth {
    type: number
    sql: ${TABLE}.total_growth ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
