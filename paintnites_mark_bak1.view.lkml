view: paintnites_mark_bak1 {
  sql_table_name: core.paintnites_mark_bak1 ;;

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

  dimension: facebook {
    type: string
    sql: ${TABLE}.facebook ;;
  }

  dimension: logo_div {
    type: string
    sql: ${TABLE}.logo_div ;;
  }

  dimension: mail_sender {
    type: string
    sql: ${TABLE}.mail_sender ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: phone_num {
    type: string
    sql: ${TABLE}.phone_num ;;
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
    drill_fields: [name, state_name, paintnites.paintnite_id, paintnites.name, paintnites.state_name]
  }
}
