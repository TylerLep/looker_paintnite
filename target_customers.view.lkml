view: target_customers {
  sql_table_name: core.target_customers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.email_address ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: nite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.nite_id ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension_group: record {
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
    sql: ${TABLE}.record_date ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: count {
    type: count
    drill_fields: [id, nites.id, nites.name]
  }
}
