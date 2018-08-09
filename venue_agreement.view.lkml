view: venue_agreement {
  sql_table_name: core.venue_agreement ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}.contact_name ;;
  }

  dimension: contact_phone {
    type: string
    sql: ${TABLE}.contact_phone ;;
  }

  dimension: contact_title {
    type: string
    sql: ${TABLE}.contact_title ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: venue_address {
    type: string
    sql: ${TABLE}.venue_address ;;
  }

  dimension: venue_agreement {
    type: string
    sql: ${TABLE}.venue_agreement ;;
  }

  dimension: venue_name {
    type: string
    sql: ${TABLE}.venue_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, venue_name, contact_name]
  }
}
