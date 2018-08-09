view: community_nps {
  sql_table_name: core.community_nps ;;

  dimension: community_nps_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.community_nps_id ;;
  }

  dimension: com_nps {
    type: number
    sql: ${TABLE}.com_nps ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
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

  measure: count {
    type: count
    drill_fields: [community_nps_id]
  }
}
