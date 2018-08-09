view: featured_paintings_queue {
  sql_table_name: core.featured_paintings_queue ;;

  dimension: artist {
    type: string
    sql: ${TABLE}.artist ;;
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

  dimension: featured_id {
    type: number
    sql: ${TABLE}.featured_id ;;
  }

  dimension: imgpath {
    type: string
    sql: ${TABLE}.imgpath ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_featured {
    type: yesno
    sql: ${TABLE}.is_featured ;;
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

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_role {
    type: string
    sql: ${TABLE}.user_role ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
