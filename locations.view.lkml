view: locations {
  sql_table_name: core.locations ;;

  dimension: location_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: attendees_count {
    type: number
    sql: ${TABLE}.attendees_count ;;
  }

  dimension: banner_img {
    type: string
    sql: ${TABLE}.banner_img ;;
  }

  dimension: banner_img_thumb {
    type: string
    sql: ${TABLE}.banner_img_thumb ;;
  }

  dimension: capacity {
    type: number
    sql: ${TABLE}.capacity ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}.contact_email ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}.contact_name ;;
  }

  dimension: contact_phone {
    type: string
    sql: ${TABLE}.contact_phone ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: create_stamp {
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
    sql: ${TABLE}.create_stamp ;;
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

  dimension: email_specials {
    type: string
    sql: ${TABLE}.email_specials ;;
  }

  dimension: food {
    type: yesno
    sql: ${TABLE}.food ;;
  }

  dimension: img2 {
    type: string
    sql: ${TABLE}.img2 ;;
  }

  dimension: img2_thumb {
    type: string
    sql: ${TABLE}.img2_thumb ;;
  }

  dimension: img3 {
    type: string
    sql: ${TABLE}.img3 ;;
  }

  dimension: img3_thumb {
    type: string
    sql: ${TABLE}.img3_thumb ;;
  }

  dimension: img4 {
    type: string
    sql: ${TABLE}.img4 ;;
  }

  dimension: img4_thumb {
    type: string
    sql: ${TABLE}.img4_thumb ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: location_img {
    type: string
    sql: ${TABLE}.location_img ;;
  }

  dimension: location_img_thumb {
    type: string
    sql: ${TABLE}.location_img_thumb ;;
  }

  dimension: location_notes {
    type: string
    sql: ${TABLE}.location_notes ;;
  }

  dimension: location_text {
    type: string
    sql: ${TABLE}.location_text ;;
  }

  dimension: location_type {
    type: number
    sql: ${TABLE}.location_type ;;
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

  dimension: phone_ext {
    type: string
    sql: ${TABLE}.phone_ext ;;
  }

  dimension: price {
    type: yesno
    sql: ${TABLE}.price ;;
  }

  dimension: private_event_capacity {
    type: yesno
    sql: ${TABLE}.private_event_capacity ;;
  }

  dimension: private_event_min_blurb {
    type: string
    sql: ${TABLE}.private_event_min_blurb ;;
  }

  dimension: private_room {
    type: yesno
    sql: ${TABLE}.private_room ;;
  }

  dimension: promo_capacity {
    type: number
    sql: ${TABLE}.promo_capacity ;;
  }

  dimension: specials_blurb {
    type: string
    sql: ${TABLE}.specials_blurb ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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
      location_id,
      contact_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      nites.id,
      nites.name,
      corporate_events.count,
      events.count,
      testimonials.count,
      trx_events.count
    ]
  }
}
