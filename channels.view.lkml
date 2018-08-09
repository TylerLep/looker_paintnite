view: channels {
  sql_table_name: core.channels ;;

  dimension: channel_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
  }

  dimension: channel_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.channel_type_id ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_id, channel_name, channel_types.id, channel_types.name, campaigns.count]
  }
}
