view: events {
  sql_table_name: core.events ;;

  dimension: event_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: age_segment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.age_segment_id ;;
  }

  dimension: artist_disb_id {
    type: number
    sql: ${TABLE}.artist_disb_id ;;
  }

  dimension: artist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.artist_id ;;
  }

  dimension: assistant_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.assistant_id ;;
  }

  dimension: capacity {
    type: number
    sql: ${TABLE}.capacity ;;
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

  dimension: discounted_rate {
    type: number
    sql: ${TABLE}.discounted_rate ;;
  }

  dimension: email_specials {
    type: string
    sql: ${TABLE}.email_specials ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_img {
    type: string
    sql: ${TABLE}.event_img ;;
  }

  dimension: event_img2 {
    type: string
    sql: ${TABLE}.event_img2 ;;
  }

  dimension: event_img3 {
    type: string
    sql: ${TABLE}.event_img3 ;;
  }

  dimension: event_manager_id {
    type: number
    sql: ${TABLE}.event_manager_id ;;
  }

  dimension: event_mini {
    type: string
    sql: ${TABLE}.event_mini ;;
  }

  dimension: event_status {
    type: yesno
    sql: ${TABLE}.event_status ;;
  }

  dimension: event_text {
    type: string
    sql: ${TABLE}.event_text ;;
  }

  dimension: event_type {
    type: yesno
    sql: ${TABLE}.event_type ;;
  }

  dimension: event_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_type_id ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: external_purchase_link {
    type: string
    sql: ${TABLE}.external_purchase_link ;;
  }

  dimension: fundraiser_min_tickets {
    type: number
    sql: ${TABLE}.fundraiser_min_tickets ;;
  }

  dimension: fundraiser_minimum {
    type: number
    sql: ${TABLE}.fundraiser_minimum ;;
  }

  dimension: is_fundraiser {
    type: yesno
    sql: ${TABLE}.is_fundraiser ;;
  }

  dimension: is_presale {
    type: yesno
    sql: ${TABLE}.is_presale ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: licensee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.licensee_id ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: material_blurb {
    type: string
    sql: ${TABLE}.material_blurb ;;
  }

  dimension: material_desc {
    type: string
    sql: ${TABLE}.material_desc ;;
  }

  dimension: material_rate {
    type: number
    sql: ${TABLE}.material_rate ;;
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

  dimension: nite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.nite_id ;;
  }

  dimension: no_coupons {
    type: yesno
    sql: ${TABLE}.no_coupons ;;
  }

  dimension: no_dealsites {
    type: yesno
    sql: ${TABLE}.no_dealsites ;;
  }

  dimension: no_vouchers {
    type: yesno
    sql: ${TABLE}.no_vouchers ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: painting_cost {
    type: number
    sql: ${TABLE}.painting_cost ;;
  }

  dimension: painting_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.painting_id ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: presale_auto_cancel_days {
    type: number
    sql: ${TABLE}.presale_auto_cancel_days ;;
  }

  dimension: presale_discount_perc {
    type: number
    sql: ${TABLE}.presale_discount_perc ;;
  }

  dimension: presale_ticket_count {
    type: number
    sql: ${TABLE}.presale_ticket_count ;;
  }

  dimension: private_event_split {
    type: yesno
    sql: ${TABLE}.private_event_split ;;
  }

  dimension: private_split_percent {
    type: number
    sql: ${TABLE}.private_split_percent ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension_group: sales_end {
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
    sql: ${TABLE}.sales_end_at ;;
  }

  dimension: sales_rep_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_rep_id ;;
  }

  dimension: special_indicator {
    type: yesno
    sql: ${TABLE}.special_indicator ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: visibility {
    type: string
    sql: ${TABLE}.visibility ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      event_id,
      locations.location_id,
      locations.contact_name,
      artists.artist_id,
      artists.first_name,
      artists.last_name,
      artists.bank_first_name,
      artists.bank_last_name,
      artists.bank_name,
      artists.bank_verification_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      paintings.painting_id,
      assistants.assistant_id,
      assistants.first_name,
      assistants.last_name,
      licensees.licensee_id,
      licensees.first_name,
      licensees.last_name,
      licensees.bank_name,
      licensees.bank_verification_name,
      licensees.business_name,
      licensees.team_name,
      event_types.event_type_id,
      sales_rep.sales_rep_id,
      sales_rep.name,
      disbursements.disbursement_id,
      nites.id,
      nites.name,
      age_segments.id,
      artist_tips.count,
      attribute_events.count,
      canceled_events.count,
      charity_events.count,
      corporate_emails.count,
      corporate_events.count,
      coupon_attempts_log.count,
      email_shares.count,
      events_posted.count,
      event_additional_fees.count,
      event_cancellations.count,
      event_special_detail.count,
      fundraiser_charity_payouts.count,
      private_events.count,
      promos.count,
      sms.count,
      survey_answers.count,
      testimonials.count,
      tickets.count,
      tickets_canceled_fees.count,
      tmp_coupons_dan.count,
      tmp_tickets_dan.count,
      tmp_tickets_result.count,
      trx_events.count,
      trx_events_fs.count,
      trx_tickets.count,
      wishlist_event_links.count
    ]
  }
}
