view: venue_applications {
  sql_table_name: core.venue_applications ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: friday {
    type: string
    sql: ${TABLE}.friday ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: monday {
    type: string
    sql: ${TABLE}.monday ;;
  }

  dimension: more {
    type: string
    sql: ${TABLE}.more ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: repeat {
    type: string
    sql: ${TABLE}.`repeat` ;;
  }

  dimension: saturday {
    type: string
    sql: ${TABLE}.saturday ;;
  }

  dimension: seating_capacity {
    type: number
    sql: ${TABLE}.seating_capacity ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: sunday {
    type: string
    sql: ${TABLE}.sunday ;;
  }

  dimension: thursday {
    type: string
    sql: ${TABLE}.thursday ;;
  }

  dimension: tuesday {
    type: string
    sql: ${TABLE}.tuesday ;;
  }

  dimension: venue_name {
    type: string
    sql: ${TABLE}.venue_name ;;
  }

  dimension: verified {
    type: string
    sql: ${TABLE}.verified ;;
  }

  dimension: wednesday {
    type: string
    sql: ${TABLE}.wednesday ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      venue_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name
    ]
  }
}
