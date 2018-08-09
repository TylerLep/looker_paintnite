view: analytics_store_values {
  sql_table_name: core.analytics_store_values ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: analytics_store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.analytics_store_id ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, analytics_store.id]
  }
}
