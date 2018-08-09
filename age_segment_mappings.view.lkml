view: age_segment_mappings {
  sql_table_name: core.age_segment_mappings ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: age_segment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.age_segment_id ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: nite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.nite_id ;;
  }

  measure: count {
    type: count
    drill_fields: [age_segments.id, nites.id, nites.name]
  }
}
