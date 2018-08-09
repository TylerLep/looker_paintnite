view: favourite_paintings {
  sql_table_name: core.favourite_paintings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: painting_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.painting_id ;;
  }

  dimension: profile_id {
    type: number
    sql: ${TABLE}.profile_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, paintings.painting_id]
  }
}
