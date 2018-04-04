view: topn_options {
  sql_table_name: public.topn_options ;;

  dimension: topn {
    type: number
    sql: ${TABLE}.topn ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
