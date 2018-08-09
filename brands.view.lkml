view: brands {
  sql_table_name: core.brands ;;

  dimension: brand_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.brand_id ;;
  }

  dimension: blurb {
    type: string
    sql: ${TABLE}.blurb ;;
  }

  dimension: brand_name {
    type: string
    sql: ${TABLE}.brand_name ;;
  }

  dimension: default_text {
    type: string
    sql: ${TABLE}.default_text ;;
  }

  dimension: sponsor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sponsor_id ;;
  }

  measure: count {
    type: count
    drill_fields: [brand_id, brand_name, sponsors.sponsor_id, sponsors.company_name, promos.count]
  }
}
