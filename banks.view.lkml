view: banks {
  sql_table_name: core.banks ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: checkout {
    type: string
    sql: ${TABLE}.checkout ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: is_disbursable {
    type: string
    sql: ${TABLE}.is_disbursable ;;
  }

  dimension: key1 {
    type: string
    sql: ${TABLE}.key1 ;;
  }

  dimension: key2 {
    type: string
    sql: ${TABLE}.key2 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
