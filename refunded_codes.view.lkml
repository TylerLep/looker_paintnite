view: refunded_codes {
  sql_table_name: core.refunded_codes ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: deal_site {
    type: string
    sql: ${TABLE}.deal_site ;;
  }

  dimension: journal_posted {
    type: yesno
    sql: ${TABLE}.journal_posted ;;
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

  dimension: refund_code {
    type: string
    sql: ${TABLE}.refund_code ;;
  }

  dimension_group: refund {
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
    sql: ${TABLE}.refund_date ;;
  }

  dimension: refund_id {
    type: number
    sql: ${TABLE}.refund_id ;;
  }

  measure: count {
    type: count
    drill_fields: [paintnites.paintnite_id, paintnites.name, paintnites.state_name]
  }
}
