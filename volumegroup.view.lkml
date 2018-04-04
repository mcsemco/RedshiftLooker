view: volumegroup {
  sql_table_name: public.volumegroup ;;

  dimension: case_type {
    type: string
    sql: ${TABLE}.case_type ;;
  }

  dimension: case_type_full_name {
    type: string
    sql: ${TABLE}.case_type_full_name ;;
  }

  dimension: case_type_full_name_order {
    type: number
    sql: ${TABLE}.case_type_full_name_order ;;
  }

  dimension: new_or_flip {
    type: string
    sql: ${TABLE}.new_or_flip ;;
  }

  dimension: volume_group_case_type {
    type: string
    sql: ${TABLE}.volume_group_case_type ;;
  }

  dimension: volume_group_name {
    type: string
    sql: ${TABLE}.volume_group_name ;;
  }

  dimension: volumegroupkey {
    type: number
    sql: ${TABLE}.volumegroupkey ;;
  }

  measure: count {
    type: count
    drill_fields: [volume_group_name, case_type_full_name]
  }
}
