view: colortags {
  sql_table_name: core.colortags ;;

  dimension: hexcode {
    type: string
    sql: ${TABLE}.hexcode ;;
  }

  dimension: rgb {
    type: string
    sql: ${TABLE}.rgb ;;
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
