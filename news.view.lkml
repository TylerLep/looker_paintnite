view: news {
  sql_table_name: core.news ;;

  dimension: news_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.news_id ;;
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

  dimension: headline {
    type: string
    sql: ${TABLE}.headline ;;
  }

  dimension: img_path {
    type: string
    sql: ${TABLE}.img_path ;;
  }

  dimension: img_path_thumb {
    type: string
    sql: ${TABLE}.img_path_thumb ;;
  }

  dimension: is_featured {
    type: yesno
    sql: ${TABLE}.is_featured ;;
  }

  dimension: logo_img {
    type: string
    sql: ${TABLE}.logo_img ;;
  }

  dimension: logo_img_thumb {
    type: string
    sql: ${TABLE}.logo_img_thumb ;;
  }

  dimension: media_outlet {
    type: string
    sql: ${TABLE}.media_outlet ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: show_on_press_page {
    type: yesno
    sql: ${TABLE}.show_on_press_page ;;
  }

  dimension: text_blurb {
    type: string
    sql: ${TABLE}.text_blurb ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: video_img {
    type: string
    sql: ${TABLE}.video_img ;;
  }

  dimension: video_img_thumb {
    type: string
    sql: ${TABLE}.video_img_thumb ;;
  }

  measure: count {
    type: count
    drill_fields: [news_id, paintnites.paintnite_id, paintnites.name, paintnites.state_name]
  }
}
