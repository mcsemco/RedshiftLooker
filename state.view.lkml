view: state {
  sql_table_name: public.state ;;

  dimension: process_type {
    type: string
    sql: ${TABLE}.process_type ;;
  }

  dimension: region {
    type: number
    sql: ${TABLE}.region ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.state_code ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: statekey {
    type: number
    sql: ${TABLE}.statekey ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name]
  }
}
