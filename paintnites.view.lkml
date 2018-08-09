view: paintnites {
  sql_table_name: core.paintnites ;;

  dimension: paintnite_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: confirmation_template {
    type: string
    sql: ${TABLE}.confirmation_template ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.contact ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: currency_symbol {
    type: string
    sql: ${TABLE}.currency_symbol ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_signature {
    type: string
    sql: ${TABLE}.email_signature ;;
  }

  dimension: email_snippet_confirmation {
    type: string
    sql: ${TABLE}.email_snippet_confirmation ;;
  }

  dimension: email_snippet_reminder {
    type: string
    sql: ${TABLE}.email_snippet_reminder ;;
  }

  dimension: facebook {
    type: string
    sql: ${TABLE}.facebook ;;
  }

  dimension: gallery_url {
    type: string
    sql: ${TABLE}.gallery_url ;;
  }

  dimension: hide_on_public_site {
    type: string
    sql: ${TABLE}.hide_on_public_site ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: logo_div {
    type: string
    sql: ${TABLE}.logo_div ;;
  }

  dimension: mail_sender {
    type: string
    sql: ${TABLE}.mail_sender ;;
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

  dimension: organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: phone_num {
    type: string
    sql: ${TABLE}.phone_num ;;
  }

  dimension: refund_fee {
    type: number
    sql: ${TABLE}.refund_fee ;;
  }

  dimension: reminder_template {
    type: string
    sql: ${TABLE}.reminder_template ;;
  }

  dimension: sales_tax_applicable {
    type: string
    sql: ${TABLE}.sales_tax_applicable ;;
  }

  dimension: sales_tax_inclusive {
    type: string
    sql: ${TABLE}.sales_tax_inclusive ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: state_tax {
    type: number
    sql: ${TABLE}.state_tax ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.street_address ;;
  }

  dimension: stripe_key {
    type: string
    sql: ${TABLE}.stripe_key ;;
  }

  dimension: stripe_key2 {
    type: string
    sql: ${TABLE}.stripe_key2 ;;
  }

  dimension: supply_tax {
    type: number
    sql: ${TABLE}.supply_tax ;;
  }

  dimension: survey_template {
    type: string
    sql: ${TABLE}.survey_template ;;
  }

  dimension: tax_breakdown {
    type: string
    sql: ${TABLE}.tax_breakdown ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: thankyou_snippet {
    type: string
    sql: ${TABLE}.thankyou_snippet ;;
  }

  dimension: twitter {
    type: string
    sql: ${TABLE}.twitter ;;
  }

  dimension: venue_reminder_template {
    type: string
    sql: ${TABLE}.venue_reminder_template ;;
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
      paintnite_id,
      name,
      state_name,
      organizations.id,
      organizations.legal_name,
      nites.id,
      nites.name,
      admin_profile.count,
      artists.count,
      assistants.count,
      campaigns.count,
      complimentary_region_deals.count,
      corporate_events.count,
      coupons.count,
      coupons_groupon.count,
      customers.count,
      dealsite_paintnite.count,
      events.count,
      fbauth.count,
      gallery.count,
      gift_cards.count,
      licensees.count,
      licensee_applications.count,
      locations.count,
      news.count,
      paintings.count,
      paintnites_mark_bak1.count,
      pass_regions.count,
      postal_codes.count,
      products.count,
      refunded_codes.count,
      regional_data.count,
      surveys.count,
      survey_answers.count,
      survey_questions.count,
      temp_coupons.count,
      temp_coupons_updater.count,
      temp_deal_coupons.count,
      tickets.count,
      tickets_canceled_fees.count,
      tmp_coupons_dan.count,
      tmp_tickets_result.count,
      trx_coupons.count,
      trx_disbursements.count,
      trx_events.count,
      trx_events_fs.count,
      trx_gifts.count,
      trx_sponsorships.count,
      trx_tickets.count,
      trx_tips.count,
      venue_applications.count
    ]
  }
}
