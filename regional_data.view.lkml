view: regional_data {
  sql_table_name: core.regional_data ;;

  dimension: group_max {
    type: number
    sql: ${TABLE}.group_max ;;
  }

  dimension: group_min {
    type: number
    sql: ${TABLE}.group_min ;;
  }

  dimension: group_percent_max {
    type: number
    sql: ${TABLE}.group_percent_max ;;
  }

  dimension: group_percent_min {
    type: number
    sql: ${TABLE}.group_percent_min ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  measure: count {
    type: count
    drill_fields: [paintnites.paintnite_id, paintnites.name, paintnites.state_name]
  }
}
