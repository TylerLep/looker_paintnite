view: password_history {
  sql_table_name: core.password_history ;;

  dimension: password_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.password_history_id ;;
  }

  dimension: admin_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.admin_id ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_date ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [password_history_id, username, admins.admin_id, admins.name, password_history_archive.count]
  }
}
