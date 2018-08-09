view: licensee_applications {
  sql_table_name: core.licensee_applications ;;

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

  dimension: image1 {
    type: string
    sql: ${TABLE}.image1 ;;
  }

  dimension: image2 {
    type: string
    sql: ${TABLE}.image2 ;;
  }

  dimension: image3 {
    type: string
    sql: ${TABLE}.image3 ;;
  }

  dimension: image4 {
    type: string
    sql: ${TABLE}.image4 ;;
  }

  dimension: interest_artist {
    type: string
    sql: ${TABLE}.interest_artist ;;
  }

  dimension: interest_licensee {
    type: string
    sql: ${TABLE}.interest_licensee ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
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

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: verified {
    type: string
    sql: ${TABLE}.verified ;;
  }

  dimension: video_link {
    type: string
    sql: ${TABLE}.video_link ;;
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
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name
    ]
  }
}
