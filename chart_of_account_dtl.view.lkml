view: chart_of_account_dtl {
  sql_table_name: core.chart_of_account_dtl ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: account_refernce_number {
    type: string
    sql: ${TABLE}.account_refernce_number ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.modified_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account_name, chart_of_accounts.id]
  }
}
