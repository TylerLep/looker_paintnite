view: themetags {
  sql_table_name: core.themetags ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tag_id {
    type: number
    sql: ${TABLE}.tag_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
