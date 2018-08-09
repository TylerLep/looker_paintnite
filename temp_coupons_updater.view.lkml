view: temp_coupons_updater {
  sql_table_name: core.temp_coupons_updater ;;

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: charity {
    type: number
    sql: ${TABLE}.charity ;;
  }

  dimension: checkout_flag {
    type: yesno
    sql: ${TABLE}.checkout_flag ;;
  }

  dimension: comission {
    type: number
    sql: ${TABLE}.comission ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: coupon_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.coupon_id ;;
  }

  dimension: coupon_transaction_id {
    type: number
    sql: ${TABLE}.coupon_transaction_id ;;
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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: deal_price {
    type: number
    sql: ${TABLE}.deal_price ;;
  }

  dimension: deal_site {
    type: string
    sql: ${TABLE}.deal_site ;;
  }

  dimension: dscnt_dollars {
    type: number
    sql: ${TABLE}.dscnt_dollars ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension_group: exp {
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
    sql: ${TABLE}.exp_date ;;
  }

  dimension: expired_to_cash {
    type: yesno
    sql: ${TABLE}.expired_to_cash ;;
  }

  dimension: is_gift {
    type: yesno
    sql: ${TABLE}.is_gift ;;
  }

  dimension: landing_source {
    type: string
    sql: ${TABLE}.landing_source ;;
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

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: pct {
    type: number
    sql: ${TABLE}.pct ;;
  }

  dimension: pn_dollars {
    type: number
    sql: ${TABLE}.pn_dollars ;;
  }

  dimension: pn_dollars_hq {
    type: number
    sql: ${TABLE}.pn_dollars_hq ;;
  }

  dimension_group: purchase {
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
    sql: ${TABLE}.purchase_date ;;
  }

  dimension: purchaser_name {
    type: string
    sql: ${TABLE}.purchaser_name ;;
  }

  dimension: rescheduled_email {
    type: string
    sql: ${TABLE}.rescheduled_email ;;
  }

  dimension: sold {
    type: yesno
    sql: ${TABLE}.sold ;;
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

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  dimension: used {
    type: number
    sql: ${TABLE}.used ;;
  }

  dimension: uses {
    type: yesno
    sql: ${TABLE}.uses ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      purchaser_name,
      coupons.coupon_id,
      coupons.purchaser_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      campaigns.campaign_id,
      campaigns.name,
      campaigns.campaign_name,
      licensees.licensee_id,
      licensees.first_name,
      licensees.last_name,
      licensees.bank_name,
      licensees.bank_verification_name,
      licensees.business_name,
      licensees.team_name,
      customers.first_name,
      customers.last_name,
      customers.shipping_first_name,
      customers.shipping_last_name,
      customers.cc_name,
      customers.customer_id
    ]
  }
}
