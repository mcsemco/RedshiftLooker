view: dim_mstr_client {
  sql_table_name: public.dim_mstr_client ;;

  dimension: mstr_client_id {
    type: string
    sql: ${TABLE}.mstr_client_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
