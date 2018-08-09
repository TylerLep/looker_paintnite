view: dealsites {
  sql_table_name: core.dealsites ;;

  dimension: dealsite_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.dealsite_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [dealsite_id, name, campaigns.count, dealsite_paintnite.count]
  }
}
