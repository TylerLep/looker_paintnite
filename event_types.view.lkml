view: event_types {
  sql_table_name: core.event_types ;;

  dimension: event_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.event_type_id ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: event_type_description {
    type: string
    sql: ${TABLE}.event_type_description ;;
  }

  dimension: has_image {
    type: number
    sql: ${TABLE}.has_image ;;
  }

  dimension: img_url {
    type: string
    sql: ${TABLE}.img_url ;;
  }

  dimension: is_landing_page {
    type: number
    sql: ${TABLE}.is_landing_page ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [event_type_id, artists.count, events.count]
  }
}
