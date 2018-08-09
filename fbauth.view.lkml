view: fbauth {
  sql_table_name: core.fbauth ;;

  dimension: fbauth_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.fbauth_id ;;
  }

  dimension: fbauth_pageid {
    type: string
    sql: ${TABLE}.fbauth_pageid ;;
  }

  dimension: fbauth_token {
    type: string
    sql: ${TABLE}.fbauth_token ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  measure: count {
    type: count
    drill_fields: [fbauth_id, paintnites.paintnite_id, paintnites.name, paintnites.state_name]
  }
}
