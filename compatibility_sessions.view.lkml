view: compatibility_sessions {
  sql_table_name: core.compatibility_sessions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: admin_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.admin_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension_group: ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ts ;;
  }

  measure: count {
    type: count
    drill_fields: [id, admins.admin_id, admins.name]
  }
}
