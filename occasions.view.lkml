view: occasions {
  sql_table_name: core.occasions ;;

  dimension: id {
    primary_key: yes
    type: yesno
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, occasions_tickets.count]
  }
}
