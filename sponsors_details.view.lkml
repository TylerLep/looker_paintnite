view: sponsors_details {
  sql_table_name: core.sponsors_details ;;

  dimension: contact_name {
    type: string
    sql: ${TABLE}.contact_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: f_name {
    type: string
    sql: ${TABLE}.f_name ;;
  }

  dimension: l_name {
    type: string
    sql: ${TABLE}.l_name ;;
  }

  dimension: sponsor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sponsor_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [f_name, l_name, contact_name, sponsors.sponsor_id, sponsors.company_name]
  }
}
