view: transferfiles {
  sql_table_name: public.transferfiles ;;

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: transferfilekey {
    type: number
    sql: ${TABLE}.transferfilekey ;;
  }

  dimension: trf {
    type: string
    sql: ${TABLE}.trf ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
