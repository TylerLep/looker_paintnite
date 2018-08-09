view: creator {
  sql_table_name: core.creator ;;

  dimension: creator_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.creator_id ;;
  }

  dimension: creator_name {
    type: string
    sql: ${TABLE}.creator_name ;;
  }

  measure: count {
    type: count
    drill_fields: [creator_id, creator_name, campaigns.count, wishlists.count]
  }
}
