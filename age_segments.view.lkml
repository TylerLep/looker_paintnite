view: age_segments {
  sql_table_name: core.age_segments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: maximum_age {
    type: number
    sql: ${TABLE}.maximum_age ;;
  }

  dimension: minimum_age {
    type: number
    sql: ${TABLE}.minimum_age ;;
  }

  measure: count {
    type: count
    drill_fields: [id, age_segment_mappings.count, events.count]
  }
}
