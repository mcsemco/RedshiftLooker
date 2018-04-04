view: dim_rep {
  sql_table_name: public.dim_rep ;;

  dimension: rep_first_name {
    type: string
    sql: ${TABLE}.rep_first_name ;;
  }

  dimension: rep_full_name {
    type: string
    sql: ${TABLE}.rep_full_name ;;
  }

  dimension: rep_id {
    type: string
    sql: ${TABLE}.rep_id ;;
  }

  dimension: rep_last_name {
    type: string
    sql: ${TABLE}.rep_last_name ;;
  }

  measure: count {
    type: count
    drill_fields: [rep_first_name, rep_last_name, rep_full_name]
  }
}
