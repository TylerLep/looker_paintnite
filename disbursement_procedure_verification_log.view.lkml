view: disbursement_procedure_verification_log {
  sql_table_name: core.disbursement_procedure_verification_log ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: definition {
    type: string
    sql: ${TABLE}.definition ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified_at ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension: procedure_name {
    type: string
    sql: ${TABLE}.procedure_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, procedure_name]
  }
}
