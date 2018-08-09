view: sales_rep {
  sql_table_name: core.sales_rep ;;

  dimension: sales_rep_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.sales_rep_id ;;
  }

  dimension: active_user {
    type: yesno
    sql: ${TABLE}.active_user ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [sales_rep_id, name, events.count]
  }
}
