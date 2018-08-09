view: corporate_events {
  sql_table_name: core.corporate_events ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: artist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.artist_id ;;
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
    sql: ${TABLE}.created ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: guests {
    type: number
    sql: ${TABLE}.guests ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension_group: paid {
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
    sql: ${TABLE}.paid ;;
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

  dimension: stripe_token {
    type: string
    sql: ${TABLE}.stripe_token ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      events.event_id,
      customers.first_name,
      customers.last_name,
      customers.shipping_first_name,
      customers.shipping_last_name,
      customers.cc_name,
      customers.customer_id,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      locations.location_id,
      locations.contact_name,
      artists.artist_id,
      artists.first_name,
      artists.last_name,
      artists.bank_first_name,
      artists.bank_last_name,
      artists.bank_name,
      artists.bank_verification_name,
      paintings.painting_id
    ]
  }
}
