view: accounts {
  sql_table_name: core.accounts ;;

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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: facebook_id {
    type: string
    sql: ${TABLE}.facebook_id ;;
  }

  dimension: magic_link_token {
    type: string
    sql: ${TABLE}.magic_link_token ;;
  }

  dimension_group: magic_link_token_expires {
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
    sql: ${TABLE}.magic_link_token_expires ;;
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

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: sugar {
    type: string
    sql: ${TABLE}.sugar ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account_profiles.count, account_wishlist_links.count, charity_events.count, virtual_fundraisers.count]
  }
}
