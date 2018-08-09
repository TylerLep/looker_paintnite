view: artists {
  sql_table_name: core.artists ;;

  dimension: artist_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.artist_id ;;
  }

  dimension: artist_img {
    type: string
    sql: ${TABLE}.artist_img ;;
  }

  dimension: artist_notes {
    type: string
    sql: ${TABLE}.artist_notes ;;
  }

  dimension: artist_text {
    type: string
    sql: ${TABLE}.artist_text ;;
  }

  dimension: artist_verify {
    type: yesno
    sql: ${TABLE}.artist_verify ;;
  }

  dimension: availability {
    type: string
    sql: ${TABLE}.availability ;;
  }

  dimension_group: background_check {
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
    sql: ${TABLE}.background_check_date ;;
  }

  dimension: background_check_status {
    type: yesno
    sql: ${TABLE}.background_check_status ;;
  }

  dimension: bank_account_aes {
    type: string
    sql: ${TABLE}.bank_account_aes ;;
  }

  dimension: bank_first_name {
    type: string
    sql: ${TABLE}.bank_first_name ;;
  }

  dimension: bank_last_name {
    type: string
    sql: ${TABLE}.bank_last_name ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.bank_name ;;
  }

  dimension: bank_routing {
    type: string
    sql: ${TABLE}.bank_routing ;;
  }

  dimension: bank_verification_name {
    type: string
    sql: ${TABLE}.bank_verification_name ;;
  }

  dimension: banner {
    type: string
    sql: ${TABLE}.banner ;;
  }

  dimension: cell {
    type: string
    sql: ${TABLE}.cell ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: event_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_type_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: img_id1 {
    type: string
    sql: ${TABLE}.img_id1 ;;
  }

  dimension: img_id1_thumb_path {
    type: string
    sql: ${TABLE}.img_id1_thumb_path ;;
  }

  dimension: img_id2 {
    type: string
    sql: ${TABLE}.img_id2 ;;
  }

  dimension: img_id2_thumb_path {
    type: string
    sql: ${TABLE}.img_id2_thumb_path ;;
  }

  dimension: img_id3 {
    type: string
    sql: ${TABLE}.img_id3 ;;
  }

  dimension: img_id3_thumb_path {
    type: string
    sql: ${TABLE}.img_id3_thumb_path ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
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

  dimension: profile {
    type: string
    sql: ${TABLE}.profile ;;
  }

  dimension: self_owner_licensee_id {
    type: number
    sql: ${TABLE}.self_owner_licensee_id ;;
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
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.street_address ;;
  }

  dimension: stripe_id {
    type: string
    sql: ${TABLE}.stripe_id ;;
  }

  dimension: stripe_recipient_type {
    type: number
    sql: ${TABLE}.stripe_recipient_type ;;
  }

  dimension: texting_ok {
    type: yesno
    sql: ${TABLE}.texting_ok ;;
  }

  dimension: w9_submitted {
    type: string
    sql: ${TABLE}.w9_submitted ;;
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
      artist_id,
      first_name,
      last_name,
      bank_first_name,
      bank_last_name,
      bank_name,
      bank_verification_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      licensees.licensee_id,
      licensees.first_name,
      licensees.last_name,
      licensees.bank_name,
      licensees.bank_verification_name,
      licensees.business_name,
      licensees.team_name,
      event_types.event_type_id,
      nites.id,
      nites.name,
      artist_licensee.count,
      artist_tips.count,
      corporate_events.count,
      disbursements.count,
      events.count,
      paintings.count,
      sale_paintings.count,
      stencils.count,
      trx_events.count,
      vw_artists.count,
      vw_artists_perm.count
    ]
  }
}
