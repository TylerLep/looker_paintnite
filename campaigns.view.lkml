view: campaigns {
  sql_table_name: core.campaigns ;;

  dimension: campaign_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.channel_id ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: coupon_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.coupon_id ;;
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

  dimension: creator_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.creator_id ;;
  }

  dimension: dealsite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dealsite_id ;;
  }

  dimension: default_campaign {
    type: number
    sql: ${TABLE}.default_campaign ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: landing_url {
    type: string
    sql: ${TABLE}.landing_url ;;
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

  dimension: nite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.nite_id ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      campaign_id,
      name,
      campaign_name,
      coupons.coupon_id,
      coupons.purchaser_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      creator.creator_id,
      creator.creator_name,
      channels.channel_id,
      channels.channel_name,
      licensees.licensee_id,
      licensees.first_name,
      licensees.last_name,
      licensees.bank_name,
      licensees.bank_verification_name,
      licensees.business_name,
      licensees.team_name,
      nites.id,
      nites.name,
      dealsites.dealsite_id,
      dealsites.name,
      cart_items.count,
      complimentary_region_deals.count,
      coupons.count,
      coupons_groupon.count,
      gift_cards.count,
      pass_region_deals.count,
      temp_coupons_updater.count,
      trx_coupons.count
    ]
  }
}
