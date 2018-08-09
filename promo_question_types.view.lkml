view: promo_question_types {
  sql_table_name: core.promo_question_types ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: qtype {
    type: number
    sql: ${TABLE}.qtype ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
