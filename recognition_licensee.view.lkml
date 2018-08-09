view: recognition_licensee {
  sql_table_name: core.recognition_licensee ;;

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_viewed {
    type: yesno
    sql: ${TABLE}.is_viewed ;;
  }

  dimension: licensee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.licensee_id ;;
  }

  dimension: recognition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.recognition_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      recognition.recognition_id,
      licensees.licensee_id,
      licensees.first_name,
      licensees.last_name,
      licensees.bank_name,
      licensees.bank_verification_name,
      licensees.business_name,
      licensees.team_name
    ]
  }
}
