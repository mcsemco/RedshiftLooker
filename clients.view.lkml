view: clients {
  sql_table_name: public.clients ;;

  dimension: client_name {
    type: string
    sql: ${TABLE}.client_name ;;
  }

  dimension: clientkey {
    type: number
    sql: ${TABLE}.clientkey ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  measure: count {
    type: count
    drill_fields: [client_name]
  }
}
