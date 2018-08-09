view: vw_artists {
  sql_table_name: core.vw_artists ;;

  dimension: artist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.artist_id ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: votes {
    type: number
    sql: ${TABLE}.votes ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      artists.artist_id,
      artists.first_name,
      artists.last_name,
      artists.bank_first_name,
      artists.bank_last_name,
      artists.bank_name,
      artists.bank_verification_name
    ]
  }
}
