view: sponsors {
  sql_table_name: core.sponsors ;;

  dimension: sponsor_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.sponsor_id ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: default_blurb {
    type: string
    sql: ${TABLE}.default_blurb ;;
  }

  dimension: default_text {
    type: string
    sql: ${TABLE}.default_text ;;
  }

  measure: count {
    type: count
    drill_fields: [sponsor_id, company_name, brands.count, sponsors_details.count, sponsor_contracts.count]
  }
}
