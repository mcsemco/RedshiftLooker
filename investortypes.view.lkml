view: investortypes {
  sql_table_name: public.investortypes ;;

  dimension: investor_type {
    type: string
    sql: ${TABLE}.investor_type ;;
  }

  dimension: investortypekey {
    type: number
    sql: ${TABLE}.investortypekey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
