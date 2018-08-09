view: account_wishlist_links {
  sql_table_name: core.account_wishlist_links ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.account_id ;;
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

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
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
    drill_fields: [id, wishlists.id, wishlists.name, accounts.id]
  }
}
