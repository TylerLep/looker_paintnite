view: products {
  sql_table_name: core.products ;;

  dimension: product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: generate_code {
    type: yesno
    sql: ${TABLE}.generate_code ;;
  }

  dimension: img_path {
    type: string
    sql: ${TABLE}.img_path ;;
  }

  dimension: order_email {
    type: string
    sql: ${TABLE}.order_email ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: pdf_path {
    type: string
    sql: ${TABLE}.pdf_path ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: sizes {
    type: string
    sql: ${TABLE}.sizes ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product_id,
      product_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      tickets.count,
      trx_tickets.count
    ]
  }
}
