view: trx_tickets {
  sql_table_name: core.trx_tickets ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: amount_oc {
    type: number
    sql: ${TABLE}.amount_oc ;;
  }

  dimension: cc_charge {
    type: number
    sql: ${TABLE}.cc_charge ;;
  }

  dimension: cc_charge_oc {
    type: number
    sql: ${TABLE}.cc_charge_oc ;;
  }

  dimension: cc_pct {
    type: number
    sql: ${TABLE}.cc_pct ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}.charge_id ;;
  }

  dimension: comission {
    type: number
    sql: ${TABLE}.comission ;;
  }

  dimension: comission_hq {
    type: number
    sql: ${TABLE}.comission_hq ;;
  }

  dimension: comission_hq_oc {
    type: number
    sql: ${TABLE}.comission_hq_oc ;;
  }

  dimension: comission_oc {
    type: number
    sql: ${TABLE}.comission_oc ;;
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

  dimension: coupon_revenue {
    type: number
    sql: ${TABLE}.coupon_revenue ;;
  }

  dimension: coupon_revenue_hq {
    type: number
    sql: ${TABLE}.coupon_revenue_hq ;;
  }

  dimension: coupon_revenue_hq_oc {
    type: number
    sql: ${TABLE}.coupon_revenue_hq_oc ;;
  }

  dimension: coupon_revenue_oc {
    type: number
    sql: ${TABLE}.coupon_revenue_oc ;;
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

  dimension: dealprice_revenue {
    type: number
    sql: ${TABLE}.dealprice_revenue ;;
  }

  dimension: dealprice_revenue_oc {
    type: number
    sql: ${TABLE}.dealprice_revenue_oc ;;
  }

  dimension: dealsite_comission {
    type: number
    sql: ${TABLE}.dealsite_comission ;;
  }

  dimension: dealsite_comission_oc {
    type: number
    sql: ${TABLE}.dealsite_comission_oc ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: direct_ticket {
    type: yesno
    sql: ${TABLE}.direct_ticket ;;
  }

  dimension: discount_pct {
    type: number
    sql: ${TABLE}.discount_pct ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: fundraiser_ticket_revenue {
    type: number
    sql: ${TABLE}.fundraiser_ticket_revenue ;;
  }

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}.gross_revenue ;;
  }

  dimension: gross_revenue_oc {
    type: number
    sql: ${TABLE}.gross_revenue_oc ;;
  }

  dimension: is_presale {
    type: yesno
    sql: ${TABLE}.is_presale ;;
  }

  dimension: landing_source {
    type: string
    sql: ${TABLE}.landing_source ;;
  }

  dimension: last_four_cc_digits {
    type: number
    sql: ${TABLE}.last_four_cc_digits ;;
  }

  dimension: licensee_share_tix {
    type: number
    sql: ${TABLE}.licensee_share_tix ;;
  }

  dimension: licensee_share_tix_oc {
    type: number
    sql: ${TABLE}.licensee_share_tix_oc ;;
  }

  dimension: material_rate {
    type: number
    sql: ${TABLE}.material_rate ;;
  }

  dimension: material_total {
    type: number
    sql: ${TABLE}.material_total ;;
  }

  dimension: material_total_oc {
    type: number
    sql: ${TABLE}.material_total_oc ;;
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

  dimension: name1 {
    type: string
    sql: ${TABLE}.name1 ;;
  }

  dimension: name2 {
    type: string
    sql: ${TABLE}.name2 ;;
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

  dimension: payment_attempt_count {
    type: number
    sql: ${TABLE}.payment_attempt_count ;;
  }

  dimension: presplit_amount {
    type: number
    sql: ${TABLE}.presplit_amount ;;
  }

  dimension: presplit_amount_oc {
    type: number
    sql: ${TABLE}.presplit_amount_oc ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension_group: purchase_ts {
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
    sql: ${TABLE}.purchase_ts ;;
  }

  dimension: purchase_url {
    type: string
    sql: ${TABLE}.purchase_url ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: stripe_customer_id {
    type: string
    sql: ${TABLE}.stripe_customer_id ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  dimension: tax_amount_oc {
    type: number
    sql: ${TABLE}.tax_amount_oc ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: ticket_revenue {
    type: number
    sql: ${TABLE}.ticket_revenue ;;
  }

  dimension: ticket_revenue_oc {
    type: number
    sql: ${TABLE}.ticket_revenue_oc ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: total_revenue {
    type: number
    sql: ${TABLE}.total_revenue ;;
  }

  dimension: total_revenue_oc {
    type: number
    sql: ${TABLE}.total_revenue_oc ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: verification_code {
    type: string
    sql: ${TABLE}.verification_code ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      tickets.ticket_id,
      events.event_id,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      products.product_id,
      products.product_name,
      coupons.coupon_id,
      coupons.purchaser_name
    ]
  }
}
