view: dim_project {
  sql_table_name: public.dim_project ;;

  dimension: proj_desc {
    type: string
    sql: ${TABLE}.proj_desc ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
