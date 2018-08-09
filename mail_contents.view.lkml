view: mail_contents {
  sql_table_name: core.mail_contents ;;

  dimension: mail1 {
    type: string
    sql: ${TABLE}.mail1 ;;
  }

  dimension: mail2 {
    type: string
    sql: ${TABLE}.mail2 ;;
  }

  dimension: mail3 {
    type: string
    sql: ${TABLE}.mail3 ;;
  }

  dimension: mail4 {
    type: string
    sql: ${TABLE}.mail4 ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
