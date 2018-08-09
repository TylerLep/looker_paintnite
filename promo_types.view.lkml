view: promo_types {
  sql_table_name: core.promo_types ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: noun {
    type: string
    sql: ${TABLE}.noun ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
