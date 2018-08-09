view: checkout_log {
  sql_table_name: core.checkout_log ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: page_url {
    type: string
    sql: ${TABLE}.page_url ;;
  }

  dimension: transaction_page {
    type: string
    sql: ${TABLE}.transaction_page ;;
  }

  dimension: user_city {
    type: string
    sql: ${TABLE}.user_city ;;
  }

  dimension: user_country {
    type: string
    sql: ${TABLE}.user_country ;;
  }

  dimension: user_ip {
    type: string
    sql: ${TABLE}.user_ip ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
