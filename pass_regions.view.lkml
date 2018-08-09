view: pass_regions {
  sql_table_name: core.pass_regions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
      name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      nites.id,
      nites.name,
      pass_region_deals.count
    ]
  }
}
