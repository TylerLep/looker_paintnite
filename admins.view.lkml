view: admins {
  sql_table_name: core.admins ;;

  dimension: admin_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.admin_id ;;
  }

  dimension: admin_realm {
    type: number
    sql: ${TABLE}.admin_realm ;;
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

  dimension: is_active {
    type: string
    sql: ${TABLE}.is_active ;;
  }

  dimension: level {
    type: yesno
    sql: ${TABLE}.level ;;
  }

  dimension: licensee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.licensee_id ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: new_login_flag {
    type: string
    sql: ${TABLE}.new_login_flag ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: revenue_report {
    type: yesno
    sql: ${TABLE}.revenue_report ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_role {
    type: string
    sql: ${TABLE}.user_role ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      admin_id,
      name,
      licensees.licensee_id,
      licensees.first_name,
      licensees.last_name,
      licensees.bank_name,
      licensees.bank_verification_name,
      licensees.business_name,
      licensees.team_name,
      admin_profile.count,
      compatibility_sessions.count,
      featured_paintings.count,
      password_history.count,
      password_history_archive.count
    ]
  }
}
