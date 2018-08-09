view: channel_types {
  sql_table_name: core.channel_types ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, channels.count]
  }
}
