view: photos {
  sql_table_name: core.photos ;;

  dimension: photo_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.photo_id ;;
  }

  dimension: photo_album_id {
    type: number
    sql: ${TABLE}.photo_album_id ;;
  }

  dimension: photo_caption {
    type: string
    sql: ${TABLE}.photo_caption ;;
  }

  dimension: photo_category {
    type: string
    sql: ${TABLE}.photo_category ;;
  }

  dimension: photo_comments {
    type: number
    sql: ${TABLE}.photo_comments ;;
  }

  dimension: photo_fb_id {
    type: string
    sql: ${TABLE}.photo_fb_id ;;
  }

  dimension: photo_fb_url {
    type: string
    sql: ${TABLE}.photo_fb_url ;;
  }

  dimension: photo_is_uploaded_fb {
    type: string
    sql: ${TABLE}.photo_is_uploaded_fb ;;
  }

  dimension: photo_likes {
    type: number
    sql: ${TABLE}.photo_likes ;;
  }

  dimension: photo_name {
    type: string
    sql: ${TABLE}.photo_name ;;
  }

  dimension: photo_post_id {
    type: string
    sql: ${TABLE}.photo_post_id ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}.photo_url ;;
  }

  measure: count {
    type: count
    drill_fields: [photo_id, photo_name]
  }
}
