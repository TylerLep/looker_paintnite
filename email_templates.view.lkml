view: email_templates {
  sql_table_name: core.email_templates ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
