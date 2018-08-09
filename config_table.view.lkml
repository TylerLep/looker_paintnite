view: config_table {
  sql_table_name: core.config_table ;;

  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }

  dimension: pn_id {
    type: number
    sql: ${TABLE}.pn_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
