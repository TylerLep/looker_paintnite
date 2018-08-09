view: sponsor_contracts {
  sql_table_name: core.sponsor_contracts ;;

  dimension: balance {
    type: string
    sql: ${TABLE}.balance ;;
  }

  dimension: contract_id {
    type: number
    sql: ${TABLE}.contract_id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension: dates_of_events {
    type: string
    sql: ${TABLE}.dates_of_events ;;
  }

  dimension: deposit {
    type: string
    sql: ${TABLE}.deposit ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
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

  dimension: num_events {
    type: string
    sql: ${TABLE}.num_events ;;
  }

  dimension: num_reg_attendees {
    type: string
    sql: ${TABLE}.num_reg_attendees ;;
  }

  dimension: ppc {
    type: string
    sql: ${TABLE}.ppc ;;
  }

  dimension: sponsor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sponsor_id ;;
  }

  dimension: total_cost {
    type: string
    sql: ${TABLE}.total_cost ;;
  }

  measure: count {
    type: count
    drill_fields: [sponsors.sponsor_id, sponsors.company_name]
  }
}
