view: gift_cards {
  sql_table_name: core.gift_cards ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}.charge_id ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
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

  dimension: disbursement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.disbursement_id ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: gift_card_code {
    type: string
    sql: ${TABLE}.gift_card_code ;;
  }

  dimension_group: issue {
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
    sql: ${TABLE}.issue_date ;;
  }

  dimension: lic_commission {
    type: number
    sql: ${TABLE}.lic_commission ;;
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

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  dimension: sold_by {
    type: number
    sql: ${TABLE}.sold_by ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      campaigns.campaign_id,
      campaigns.name,
      campaigns.campaign_name,
      disbursements.disbursement_id
    ]
  }
}
