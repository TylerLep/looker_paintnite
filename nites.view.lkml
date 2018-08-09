view: nites {
  sql_table_name: core.nites ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_date ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      age_segment_mappings.count,
      artists.count,
      assistants.count,
      campaigns.count,
      complimentary_region_deals.count,
      events.count,
      licensees.count,
      locations.count,
      paintings.count,
      paintnites.count,
      pass_regions.count,
      target_customers.count,
      trx_events.count,
      user_nite_ids.count
    ]
  }
}
