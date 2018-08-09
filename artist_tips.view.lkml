view: artist_tips {
  sql_table_name: core.artist_tips ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: artist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.artist_id ;;
  }

  dimension: cc_charge {
    type: number
    sql: ${TABLE}.cc_charge ;;
  }

  dimension: cc_pct {
    type: number
    sql: ${TABLE}.cc_pct ;;
  }

  dimension: charge_id {
    type: string
    sql: ${TABLE}.charge_id ;;
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

  dimension: disbursement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.disbursement_id ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: is_disbursed {
    type: yesno
    sql: ${TABLE}.is_disbursed ;;
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

  dimension: tip {
    type: number
    sql: ${TABLE}.tip ;;
  }

  dimension_group: tip {
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
    sql: ${TABLE}.tip_date ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      artists.artist_id,
      artists.first_name,
      artists.last_name,
      artists.bank_first_name,
      artists.bank_last_name,
      artists.bank_name,
      artists.bank_verification_name,
      events.event_id,
      disbursements.disbursement_id
    ]
  }
}
