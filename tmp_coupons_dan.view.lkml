view: tmp_coupons_dan {
  sql_table_name: core.tmp_coupons_dan ;;

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: dealsite {
    type: string
    sql: ${TABLE}.dealsite ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension_group: exp {
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
    sql: ${TABLE}.exp_date ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: pn_dollars {
    type: number
    sql: ${TABLE}.pn_dollars ;;
  }

  dimension_group: purchase {
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
    sql: ${TABLE}.purchase_date ;;
  }

  dimension: sold {
    type: number
    sql: ${TABLE}.sold ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: used {
    type: number
    sql: ${TABLE}.used ;;
  }

  dimension: uses {
    type: number
    sql: ${TABLE}.uses ;;
  }

  measure: count {
    type: count
    drill_fields: [paintnites.paintnite_id, paintnites.name, paintnites.state_name, tickets.ticket_id, events.event_id]
  }
}
