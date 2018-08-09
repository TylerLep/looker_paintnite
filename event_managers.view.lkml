view: event_managers {
  sql_table_name: core.event_managers ;;

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: manager_id {
    type: number
    sql: ${TABLE}.manager_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
