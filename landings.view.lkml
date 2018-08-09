view: landings {
  sql_table_name: core.landings ;;

  dimension: bg_image {
    type: string
    sql: ${TABLE}.bg_image ;;
  }

  dimension: body_en {
    type: string
    sql: ${TABLE}.body_en ;;
  }

  dimension: body_fr {
    type: string
    sql: ${TABLE}.body_fr ;;
  }

  dimension_group: expiry {
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
    sql: ${TABLE}.expiry ;;
  }

  dimension: l_id {
    type: number
    sql: ${TABLE}.l_id ;;
  }

  dimension: live {
    type: yesno
    sql: ${TABLE}.live ;;
  }

  dimension: slider_image {
    type: string
    sql: ${TABLE}.slider_image ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: title_en {
    type: string
    sql: ${TABLE}.title_en ;;
  }

  dimension: title_fr {
    type: string
    sql: ${TABLE}.title_fr ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
