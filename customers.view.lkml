view: customers {
  sql_table_name: core.customers ;;

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: cart_contents {
    type: string
    sql: ${TABLE}.cart_contents ;;
  }

  dimension: cc_name {
    type: string
    sql: ${TABLE}.cc_name ;;
  }

  dimension: cc_num {
    type: string
    sql: ${TABLE}.cc_num ;;
  }

  dimension: cc_type {
    type: string
    sql: ${TABLE}.cc_type ;;
  }

  dimension: cell {
    type: string
    sql: ${TABLE}.cell ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}.charge_id ;;
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

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: giftcard_emails {
    type: string
    sql: ${TABLE}.giftcard_emails ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
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

  dimension: referral {
    type: string
    sql: ${TABLE}.referral ;;
  }

  dimension: shipping_address {
    type: string
    sql: ${TABLE}.shipping_address ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.shipping_city ;;
  }

  dimension: shipping_cost {
    type: number
    sql: ${TABLE}.shipping_cost ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}.shipping_country ;;
  }

  dimension: shipping_first_name {
    type: string
    sql: ${TABLE}.shipping_first_name ;;
  }

  dimension: shipping_last_name {
    type: string
    sql: ${TABLE}.shipping_last_name ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}.shipping_state ;;
  }

  dimension: shipping_zip {
    type: string
    sql: ${TABLE}.shipping_zip ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
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
      customer_id,
      first_name,
      last_name,
      shipping_first_name,
      shipping_last_name,
      cc_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      corporate_customers.count,
      corporate_events.count,
      coupons.count,
      coupons_groupon.count,
      temp_coupons_updater.count,
      trx_coupons.count
    ]
  }
}
