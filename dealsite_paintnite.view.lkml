view: dealsite_paintnite {
  sql_table_name: core.dealsite_paintnite ;;

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

  dimension: deal_price {
    type: number
    sql: ${TABLE}.deal_price ;;
  }

  dimension: dealsite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dealsite_id ;;
  }

  dimension: is_flate_rate {
    type: string
    sql: ${TABLE}.Is_FlateRate ;;
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

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: pn_dollars {
    type: number
    sql: ${TABLE}.pn_dollars ;;
  }

  dimension: pn_dollars_hq {
    type: number
    sql: ${TABLE}.pn_dollars_hq ;;
  }

  dimension: sales_tax_collected {
    type: string
    sql: ${TABLE}.sales_tax_collected ;;
  }

  dimension: status {
    type: string
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
      dealsites.dealsite_id,
      dealsites.name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name
    ]
  }
}
