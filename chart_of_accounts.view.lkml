view: chart_of_accounts {
  sql_table_name: core.chart_of_accounts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: chart_of_account {
    type: string
    sql: ${TABLE}.chart_of_account ;;
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

  dimension_group: effective_from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.effective_from ;;
  }

  dimension_group: effective_to {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.effective_to ;;
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

  dimension: qb_access_token {
    type: string
    sql: ${TABLE}.qb_access_token ;;
  }

  dimension: qb_access_token_secret {
    type: string
    sql: ${TABLE}.qb_access_token_secret ;;
  }

  dimension: qb_consumer_key {
    type: string
    sql: ${TABLE}.qb_consumer_key ;;
  }

  dimension: qb_consumer_secret {
    type: string
    sql: ${TABLE}.qb_consumer_secret ;;
  }

  dimension: qb_realm_id {
    type: string
    sql: ${TABLE}.qb_realm_id ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, chart_of_account_dtl.count, organizations.count]
  }
}
