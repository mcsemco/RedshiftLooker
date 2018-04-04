view: dim_product {
  sql_table_name: public.dim_product ;;

  dimension: prod_desc {
    type: string
    sql: ${TABLE}.prod_desc ;;
  }

  dimension: prod_family_id {
    type: string
    sql: ${TABLE}.prod_family_id ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
