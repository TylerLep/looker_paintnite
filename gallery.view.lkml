view: gallery {
  sql_table_name: core.gallery ;;

  dimension: alt {
    type: string
    sql: ${TABLE}.alt ;;
  }

  dimension: full_url {
    type: string
    sql: ${TABLE}.full_url ;;
  }

  dimension: image_id {
    type: number
    sql: ${TABLE}.image_id ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: thumb_url {
    type: string
    sql: ${TABLE}.thumb_url ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [paintnites.paintnite_id, paintnites.name, paintnites.state_name]
  }
}
