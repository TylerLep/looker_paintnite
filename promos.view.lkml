view: promos {
  sql_table_name: core.promos ;;

  dimension: promo_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.promo_id ;;
  }

  dimension: blurb {
    type: string
    sql: ${TABLE}.blurb ;;
  }

  dimension: brand_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.brand_id ;;
  }

  dimension: email_body {
    type: string
    sql: ${TABLE}.email_body ;;
  }

  dimension: email_subject {
    type: string
    sql: ${TABLE}.email_subject ;;
  }

  dimension: event_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.event_id ;;
  }

  dimension: full_text {
    type: string
    sql: ${TABLE}.full_text ;;
  }

  dimension: has_quiz {
    type: yesno
    sql: ${TABLE}.has_quiz ;;
  }

  dimension: perk {
    type: string
    sql: ${TABLE}.perk ;;
  }

  dimension: promo_type {
    type: number
    sql: ${TABLE}.promo_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      promo_id,
      events.event_id,
      brands.brand_id,
      brands.brand_name,
      promo_answers.count,
      promo_questions.count,
      redemptions.count
    ]
  }
}
