view: organizations {
  sql_table_name: core.organizations ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: calendar_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.calendar_id ;;
  }

  dimension: chart_of_account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.chart_of_account_id ;;
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

  dimension: currency_id {
    type: string
    sql: ${TABLE}.currency_id ;;
  }

  dimension: legal_name {
    type: string
    sql: ${TABLE}.legal_name ;;
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

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      legal_name,
      calendars.id,
      calendars.calendar_name,
      chart_of_accounts.id,
      paintnites.count
    ]
  }
}
