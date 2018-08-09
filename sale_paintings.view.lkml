view: sale_paintings {
  sql_table_name: core.sale_paintings ;;

  dimension: artist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.artist_id ;;
  }

  dimension: color_search {
    type: string
    sql: ${TABLE}.color_search ;;
  }

  dimension: depth {
    type: number
    sql: ${TABLE}.depth ;;
  }

  dimension: framing {
    type: string
    sql: ${TABLE}.framing ;;
  }

  dimension: full_imgpath {
    type: string
    sql: ${TABLE}.full_imgpath ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.length ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: painting_descript {
    type: string
    sql: ${TABLE}.painting_descript ;;
  }

  dimension: price {
    type: yesno
    sql: ${TABLE}.price ;;
  }

  dimension: sale_id {
    type: number
    sql: ${TABLE}.sale_id ;;
  }

  dimension: side_img1 {
    type: string
    sql: ${TABLE}.side_img1 ;;
  }

  dimension: side_img2 {
    type: string
    sql: ${TABLE}.side_img2 ;;
  }

  dimension: side_img3 {
    type: string
    sql: ${TABLE}.side_img3 ;;
  }

  dimension: subject_search {
    type: string
    sql: ${TABLE}.subject_search ;;
  }

  dimension: thumb_img {
    type: string
    sql: ${TABLE}.thumb_img ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      artists.artist_id,
      artists.first_name,
      artists.last_name,
      artists.bank_first_name,
      artists.bank_last_name,
      artists.bank_name,
      artists.bank_verification_name
    ]
  }
}
