view: analytics_store {
  sql_table_name: core.analytics_store ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cookie_id {
    type: string
    sql: ${TABLE}.cookie_id ;;
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
    sql: ${TABLE}.createdAt ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: count {
    type: count
    drill_fields: [id, analytics_store_values.count]
  }
}
