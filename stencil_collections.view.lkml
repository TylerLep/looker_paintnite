view: stencil_collections {
  sql_table_name: core.stencil_collections ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: painting_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.painting_id ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, paintings.painting_id, stencil_collection_stencils.count]
  }
}
