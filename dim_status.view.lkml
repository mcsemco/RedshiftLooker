view: dim_status {
  sql_table_name: public.dim_status ;;

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_cd {
    type: number
    sql: ${TABLE}.status_cd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
