view: paintings {
  sql_table_name: core.paintings ;;

  dimension: painting_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.painting_id ;;
  }

  dimension: approved {
    type: yesno
    sql: ${TABLE}.approved ;;
  }

  dimension_group: approved {
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
    sql: ${TABLE}.approved_date ;;
  }

  dimension: artist_agreement {
    type: string
    sql: ${TABLE}.artist_agreement ;;
  }

  dimension: artist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.artist_id ;;
  }

  dimension: container_category {
    type: number
    sql: ${TABLE}.container_category ;;
  }

  dimension_group: create_stamp {
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
    sql: ${TABLE}.create_stamp ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
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
    sql: ${TABLE}.created_date ;;
  }

  dimension: difficulty_level {
    type: yesno
    sql: ${TABLE}.difficulty_level ;;
  }

  dimension: free {
    type: yesno
    sql: ${TABLE}.free ;;
  }

  dimension: img1_path {
    type: string
    sql: ${TABLE}.img1_path ;;
  }

  dimension: img1_thumb_path {
    type: string
    sql: ${TABLE}.img1_thumb_path ;;
  }

  dimension: img2_path {
    type: string
    sql: ${TABLE}.img2_path ;;
  }

  dimension: img2_thumb_path {
    type: string
    sql: ${TABLE}.img2_thumb_path ;;
  }

  dimension: img3_path {
    type: string
    sql: ${TABLE}.img3_path ;;
  }

  dimension: img3_thumb_path {
    type: string
    sql: ${TABLE}.img3_thumb_path ;;
  }

  dimension: master {
    type: yesno
    sql: ${TABLE}.master ;;
  }

  dimension: material_blurb {
    type: string
    sql: ${TABLE}.material_blurb ;;
  }

  dimension: material_desc {
    type: string
    sql: ${TABLE}.material_desc ;;
  }

  dimension: material_rate {
    type: number
    sql: ${TABLE}.material_rate ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: nite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.nite_id ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: orientation {
    type: yesno
    sql: ${TABLE}.orientation ;;
  }

  dimension: painting_category {
    type: number
    sql: ${TABLE}.painting_category ;;
  }

  dimension: paintnite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.paintnite_id ;;
  }

  dimension: plant_category {
    type: number
    sql: ${TABLE}.plant_category ;;
  }

  dimension: retired {
    type: yesno
    sql: ${TABLE}.retired ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: themetags {
    type: string
    sql: ${TABLE}.themetags ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      painting_id,
      artists.artist_id,
      artists.first_name,
      artists.last_name,
      artists.bank_first_name,
      artists.bank_last_name,
      artists.bank_name,
      artists.bank_verification_name,
      paintnites.paintnite_id,
      paintnites.name,
      paintnites.state_name,
      nites.id,
      nites.name,
      corporate_events.count,
      events.count,
      favourite_paintings.count,
      featured_paintings.count,
      stencil_collections.count,
      trx_events.count
    ]
  }
}
