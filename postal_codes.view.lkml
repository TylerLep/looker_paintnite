view: postal_codes {
  sql_table_name: core.postal_codes ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.dma ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.time_zone ;;
  }

  dimension: utc_offset {
    type: string
    sql: ${TABLE}.UTC_offset ;;
  }

  measure: count {
    type: count
    drill_fields: [paintnites.paintnite_id, paintnites.name, paintnites.state_name]
  }
}
