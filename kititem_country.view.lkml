view: kititem_country {
  sql_table_name: core.kititem_country ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: kititem_id {
    type: number
    sql: ${TABLE}.kititem_id ;;
  }

  dimension: markup {
    type: number
    sql: ${TABLE}.markup ;;
  }

  dimension: paintnite_cost {
    type: number
    sql: ${TABLE}.paintnite_cost ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
