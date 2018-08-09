view: special_classification {
  sql_table_name: core.special_classification ;;

  dimension: classification_id {
    type: number
    sql: ${TABLE}.classification_id ;;
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
