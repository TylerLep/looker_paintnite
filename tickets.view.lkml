view: tickets {
  sql_table_name: core.tickets ;;

  dimension: ticket_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}.charge_id ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

  dimension: is_presale {
    type: yesno
    sql: ${TABLE}.is_presale ;;
  }

  dimension: is_refunded {
    type: string
    sql: ${TABLE}.is_refunded ;;
  }

  dimension: landing_source {
    type: string
    sql: ${TABLE}.landing_source ;;
  }

  dimension: last_four_cc_digits {
    type: number
    sql: ${TABLE}.last_four_cc_digits ;;
  }

  dimension: material_rate {
    type: number
    sql: ${TABLE}.material_rate ;;
  }

  dimension: material_tax_total {
    type: number
    sql: ${TABLE}.material_tax_total ;;
  }

  dimension: material_total {
    type: number
    sql: ${TABLE}.material_total ;;
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

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: purchase_source {
    type: number
    sql: ${TABLE}.purchase_source ;;
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

  dimension: refund_amount {
    type: number
    sql: ${TABLE}.refund_amount ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: rescheduled_voucher {
    type: string
    sql: ${TABLE}.rescheduled_voucher ;;
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

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: verification_code {
    type: string
    sql: ${TABLE}.verification_code ;;
  }

  dimension: vf_id {
    type: number
    sql: ${TABLE}.vf_id ;;
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
      ticket_id,
      events.event_id,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      products.product_id,
      products.product_name,
      coupons.coupon_id,
      coupons.purchaser_name,
      attendees_emails.count,
      checkout_answers.count,
      cj_ticketlogs.count,
      occasions_tickets.count,
      promo_answers.count,
      promo_data_alexandani.count,
      purchase_tickets.count,
      survey_answers.count,
      tickets_canceled_fees.count,
      tickets_paid.count,
      tickets_posted.count,
      ticket_attachments.count,
      ticket_reschedule_group.count,
      tmp_coupons_dan.count,
      tmp_tickets_dan.count,
      tmp_tickets_result.count,
      trx_tickets.count,
      vouchers.count
    ]
  }
}
