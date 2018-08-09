view: countries {
  sql_table_name: core.countries ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: sales_tax_applicable {
    type: string
    sql: ${TABLE}.sales_tax_applicable ;;
  }

  measure: count {
    type: count
    drill_fields: [id, country_name]
  }
}
