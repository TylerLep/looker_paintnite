view: stencils {
  sql_table_name: core.stencils ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: artist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.artist_id ;;
  }

  dimension: background_image {
    type: string
    sql: ${TABLE}.background_image ;;
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

  dimension: display_image_1 {
    type: string
    sql: ${TABLE}.display_image_1 ;;
  }

  dimension: display_image_2 {
    type: string
    sql: ${TABLE}.display_image_2 ;;
  }

  dimension: is_customizable {
    type: yesno
    sql: ${TABLE}.is_customizable ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: svg_mask {
    type: string
    sql: ${TABLE}.svg_mask ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      artists.artist_id,
      artists.first_name,
      artists.last_name,
      artists.bank_first_name,
      artists.bank_last_name,
      artists.bank_name,
      artists.bank_verification_name,
      stencil_collection_stencils.count
    ]
  }
}
