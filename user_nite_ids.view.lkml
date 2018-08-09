view: user_nite_ids {
  sql_table_name: core.user_nite_ids ;;

  dimension: nite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.nite_id ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [username, nites.id, nites.name]
  }
}
