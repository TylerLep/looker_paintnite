view: files {
  sql_table_name: core.files ;;

  dimension: file_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.file_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: file {
    type: string
    sql: ${TABLE}.file ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}.thumbnail ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [file_id, files_filetags.count]
  }
}
