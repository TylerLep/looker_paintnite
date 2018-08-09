view: corporate_customers {
  sql_table_name: core.corporate_customers ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: billing_name {
    type: string
    sql: ${TABLE}.billing_name ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      billing_name,
      customers.first_name,
      customers.last_name,
      customers.shipping_first_name,
      customers.shipping_last_name,
      customers.cc_name,
      customers.customer_id
    ]
  }
}
