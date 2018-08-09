view: files_filetags {
  sql_table_name: core.files_filetags ;;

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.file_id ;;
  }

  dimension: filetag_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.filetag_id ;;
  }

  measure: count {
    type: count
    drill_fields: [filetags.filetag_id, files.file_id]
  }
}
