view: complimentary_region_deals {
  sql_table_name: core.complimentary_region_deals ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: deal_price {
    type: number
    sql: ${TABLE}.deal_price ;;
  }

  dimension: free_material {
    type: yesno
    sql: ${TABLE}.free_material ;;
  }

  dimension: nite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.nite_id ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: pn_dollars {
    type: number
    sql: ${TABLE}.pn_dollars ;;
  }

  dimension: pn_dollars_hq {
    type: number
    sql: ${TABLE}.pn_dollars_hq ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      campaigns.campaign_id,
      campaigns.name,
      campaigns.campaign_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      nites.id,
      nites.name
    ]
  }
}
