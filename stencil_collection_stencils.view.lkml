view: stencil_collection_stencils {
  sql_table_name: core.stencil_collection_stencils ;;

  dimension: sort_order {
    type: yesno
    sql: ${TABLE}.sort_order ;;
  }

  dimension: stencil_collection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.stencil_collection_id ;;
  }

  dimension: stencil_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.stencil_id ;;
  }

  measure: count {
    type: count
    drill_fields: [stencil_collections.id, stencil_collections.name, stencils.id, stencils.name]
  }
}
