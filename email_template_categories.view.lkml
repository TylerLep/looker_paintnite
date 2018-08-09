view: email_template_categories {
  sql_table_name: core.email_template_categories ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}.template_name ;;
  }

  measure: count {
    type: count
    drill_fields: [template_name]
  }
}
