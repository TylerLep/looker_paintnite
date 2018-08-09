view: transaction_log_meta {
  sql_table_name: core.transaction_log_meta ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
