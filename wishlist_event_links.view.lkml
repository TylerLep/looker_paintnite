view: wishlist_event_links {
  sql_table_name: core.wishlist_event_links ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
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

  dimension: wishlist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.wishlist_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, events.event_id, wishlists.id, wishlists.name]
  }
}
