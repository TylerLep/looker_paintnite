view: attributes {
  sql_table_name: core.attributes ;;

  dimension: attribute_id {
    primary_key: yes
    type: yesno
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: attribute_name {
    type: string
    sql: ${TABLE}.attribute_name ;;
  }

  measure: count {
    type: count
    drill_fields: [attribute_id, attribute_name, attribute_events.count]
  }
}
