view: coupons_groupon {
  sql_table_name: core.coupons_groupon ;;

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: charity {
    type: number
    sql: ${TABLE}.charity ;;
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

  dimension: licensee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.licensee_id ;;
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
