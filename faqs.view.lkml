view: faqs {
  sql_table_name: core.faqs ;;

  dimension: faq_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.faq_id ;;
  }

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: sort_order {
    type: yesno
    sql: ${TABLE}.sort_order ;;
  }

  measure: count {
    type: count
    drill_fields: [faq_id]
  }
}
