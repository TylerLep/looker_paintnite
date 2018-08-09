view: filetags {
  sql_table_name: core.filetags ;;

  dimension: filetag_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.filetag_id ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  measure: count {
    type: count
    drill_fields: [filetag_id, files_filetags.count]
  }
}
