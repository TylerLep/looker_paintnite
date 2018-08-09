view: special_detail {
  sql_table_name: core.special_detail ;;

  dimension: classification_id {
    type: number
    sql: ${TABLE}.classification_id ;;
  }

  dimension: detail_id {
    type: number
    sql: ${TABLE}.detail_id ;;
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
