view: card_logs {
  sql_table_name: core.card_logs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
