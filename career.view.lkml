view: career {
  sql_table_name: core.career ;;

  dimension: career_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.career_id ;;
  }

  dimension: bonus_text {
    type: string
    sql: ${TABLE}.bonus_text ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_created ;;
  }

  dimension: hadline_text {
    type: string
    sql: ${TABLE}.hadline_text ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: short_description {
    type: string
    sql: ${TABLE}.short_description ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: you_gain_text {
    type: string
    sql: ${TABLE}.you_gain_text ;;
  }

  dimension: you_text {
    type: string
    sql: ${TABLE}.you_text ;;
  }

  measure: count {
    type: count
    drill_fields: [career_id]
  }
}
