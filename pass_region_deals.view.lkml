view: pass_region_deals {
  sql_table_name: core.pass_region_deals ;;

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

  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }

  dimension: discount_per_pass {
    type: number
    sql: ${TABLE}.discount_per_pass ;;
  }

  dimension: max_passes {
    type: number
    sql: ${TABLE}.max_passes ;;
  }

  dimension: min_passes {
    type: number
    sql: ${TABLE}.min_passes ;;
  }

  dimension: pass_region_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.pass_region_id ;;
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
      pass_regions.id,
      pass_regions.name
    ]
  }
}
