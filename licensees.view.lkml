view: licensees {
  sql_table_name: core.licensees ;;

  dimension: licensee_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.licensee_id ;;
  }

  dimension_group: agreement_expiry {
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
    sql: ${TABLE}.agreement_expiry ;;
  }

  dimension: bank_account_aes {
    type: string
    sql: ${TABLE}.bank_account_aes ;;
  }

  dimension: bank_city {
    type: string
    sql: ${TABLE}.bank_city ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.bank_name ;;
  }

  dimension: bank_routing {
    type: string
    sql: ${TABLE}.bank_routing ;;
  }

  dimension: bank_state {
    type: string
    sql: ${TABLE}.bank_state ;;
  }

  dimension: bank_street {
    type: string
    sql: ${TABLE}.bank_street ;;
  }

  dimension: bank_verification_name {
    type: string
    sql: ${TABLE}.bank_verification_name ;;
  }

  dimension: bank_zip {
    type: string
    sql: ${TABLE}.bank_zip ;;
  }

  dimension: bigcommerce_id {
    type: number
    sql: ${TABLE}.bigcommerce_id ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}.business_name ;;
  }

  dimension: business_registration_no {
    type: string
    sql: ${TABLE}.business_registration_no ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
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

  dimension: credit_allowed {
    type: yesno
    sql: ${TABLE}.credit_allowed ;;
  }

  dimension: creditline {
    type: number
    sql: ${TABLE}.creditline ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_signature {
    type: string
    sql: ${TABLE}.email_signature ;;
  }

  dimension: facebook {
    type: string
    sql: ${TABLE}.facebook ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: freight_city {
    type: string
    sql: ${TABLE}.freight_city ;;
  }

  dimension: freight_phone {
    type: string
    sql: ${TABLE}.freight_phone ;;
  }

  dimension: freight_state {
    type: string
    sql: ${TABLE}.freight_state ;;
  }

  dimension: freight_street {
    type: string
    sql: ${TABLE}.freight_street ;;
  }

  dimension: freight_zip {
    type: string
    sql: ${TABLE}.freight_zip ;;
  }

  dimension: header_images {
    type: string
    sql: ${TABLE}.header_images ;;
  }

  dimension: is_published {
    type: yesno
    sql: ${TABLE}.is_published ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: mail_sender {
    type: string
    sql: ${TABLE}.mail_sender ;;
  }

  dimension: mission_statement {
    type: string
    sql: ${TABLE}.mission_statement ;;
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

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: pct_fee {
    type: number
    sql: ${TABLE}.pct_fee ;;
  }

  dimension: per_ticket_fee {
    type: number
    sql: ${TABLE}.per_ticket_fee ;;
  }

  dimension: phone_num {
    type: string
    sql: ${TABLE}.phone_num ;;
  }

  dimension: phone_num2 {
    type: string
    sql: ${TABLE}.phone_num2 ;;
  }

  dimension: portrait_photo {
    type: string
    sql: ${TABLE}.portrait_photo ;;
  }

  dimension: private_event_fee {
    type: number
    sql: ${TABLE}.private_event_fee ;;
  }

  dimension: profile_status {
    type: string
    sql: ${TABLE}.profile_status ;;
  }

  dimension: ss_num_aes {
    type: string
    sql: ${TABLE}.ss_num_aes ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.street_address ;;
  }

  dimension: street_address2 {
    type: string
    sql: ${TABLE}.street_address2 ;;
  }

  dimension: stripe_recipient_id {
    type: string
    sql: ${TABLE}.stripe_recipient_id ;;
  }

  dimension: stripe_recipient_type {
    type: number
    sql: ${TABLE}.stripe_recipient_type ;;
  }

  dimension: team_facebook {
    type: string
    sql: ${TABLE}.team_facebook ;;
  }

  dimension: team_image {
    type: string
    sql: ${TABLE}.team_image ;;
  }

  dimension: team_instagram {
    type: string
    sql: ${TABLE}.team_instagram ;;
  }

  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }

  dimension: team_pct_complete {
    type: number
    sql: ${TABLE}.team_pct_complete ;;
  }

  dimension: team_pinterest {
    type: string
    sql: ${TABLE}.team_pinterest ;;
  }

  dimension: team_twitter {
    type: string
    sql: ${TABLE}.team_twitter ;;
  }

  dimension: twitter {
    type: string
    sql: ${TABLE}.twitter ;;
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
      licensee_id,
      first_name,
      last_name,
      bank_name,
      bank_verification_name,
      business_name,
      team_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      nites.id,
      nites.name,
      adjustments.count,
      admins.count,
      admin_profile.count,
      artists.count,
      artist_licensee.count,
      assistants.count,
      assistant_licensee.count,
      campaigns.count,
      coupons.count,
      coupons_groupon.count,
      credit_balances.count,
      credit_changes.count,
      credit_lines.count,
      disbursements.count,
      events.count,
      expenses.count,
      orders.count,
      payments.count,
      recognition_licensee.count,
      shipping_addresses.count,
      temp_coupons_updater.count,
      tmp_tickets_dan.count,
      trx_coupons.count,
      trx_events.count
    ]
  }
}
