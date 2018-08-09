view: gifts {
  sql_table_name: core.gifts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: purchase_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.purchase_id ;;
  }

  dimension: recipient_id {
    type: number
    sql: ${TABLE}.recipient_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, purchases.id]
  }
}
