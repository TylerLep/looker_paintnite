view: purchases {
  sql_table_name: core.purchases ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cart_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.cartId ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.personId ;;
  }

  dimension_group: purchased {
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
    sql: ${TABLE}.purchasedAt ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      carts.id,
      persons.id,
      persons.first_name,
      persons.last_name,
      gifts.count,
      purchase_records.count,
      purchase_tickets.count,
      transaction_log.count,
      vw_analytics_data.count,
      vw_transaction_data.count
    ]
  }
}
