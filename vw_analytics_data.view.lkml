view: vw_analytics_data {
  sql_table_name: core.vw_analytics_data ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cookie_id {
    type: string
    sql: ${TABLE}.cookie_id ;;
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
    sql: ${TABLE}.createdAt ;;
  }

  dimension: purchase_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.purchase_id ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_code {
    type: string
    sql: ${TABLE}.utm_code ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utm_content ;;
  }

  dimension: utm_keyword {
    type: string
    sql: ${TABLE}.utm_keyword ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  measure: count {
    type: count
    drill_fields: [id, purchases.id]
  }
}
