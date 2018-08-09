view: list_of_value_types {
  sql_table_name: core.list_of_value_types ;;

  dimension: attribute1 {
    type: string
    sql: ${TABLE}.attribute1 ;;
  }

  dimension: attribute2 {
    type: string
    sql: ${TABLE}.attribute2 ;;
  }

  dimension: attribute3 {
    type: string
    sql: ${TABLE}.attribute3 ;;
  }

  dimension: parent_type {
    type: number
    sql: ${TABLE}.parent_type ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }

  dimension: type_name {
    type: string
    sql: ${TABLE}.type_name ;;
  }

  measure: count {
    type: count
    drill_fields: [type_name]
  }
}
