view: purchase_records {
  sql_table_name: core.purchase_records ;;

  dimension: product_type {
    type: number
    sql: ${TABLE}.product_type ;;
  }

  dimension: purchase_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.purchase_id ;;
  }

  dimension: record_id {
    type: number
    sql: ${TABLE}.record_id ;;
  }

  measure: count {
    type: count
    drill_fields: [purchases.id]
  }
}
