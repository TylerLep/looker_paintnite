view: testimonials {
  sql_table_name: core.testimonials ;;

  dimension: testimonial_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.testimonial_id ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [testimonial_id, name, events.event_id, locations.location_id, locations.contact_name]
  }
}
