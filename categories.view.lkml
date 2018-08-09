view: categories {
  sql_table_name: core.categories ;;

  dimension: category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  measure: count {
    type: count
    drill_fields: [category_id, category_name]
  }
}
