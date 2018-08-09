view: featured_paintings {
  sql_table_name: core.featured_paintings ;;

  dimension: admin_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.admin_id ;;
  }

  dimension: featured_id {
    type: number
    sql: ${TABLE}.featured_id ;;
  }

  dimension: featured_painting_exhibition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.featured_painting_exhibition_id ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: painting_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.painting_id ;;
  }

  measure: count {
    type: count
    drill_fields: [paintings.painting_id, admins.admin_id, admins.name, featured_painting_exhibitions.id, featured_painting_exhibitions.name]
  }
}
