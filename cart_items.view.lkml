view: cart_items {
  sql_table_name: core.cart_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaignId ;;
  }

  dimension: cart_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.cartId ;;
  }

  dimension: product_type {
    type: number
    sql: ${TABLE}.productType ;;
  }

  dimension: ref_id {
    type: number
    sql: ${TABLE}.refId ;;
  }

  measure: count {
    type: count
    drill_fields: [id, carts.id, campaigns.campaign_id, campaigns.name, campaigns.campaign_name]
  }
}
