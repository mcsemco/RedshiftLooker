view: volume {
  sql_table_name: public.volume ;;

  dimension: clientkey {
    type: number
    sql: ${TABLE}.clientkey ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: investortypekey {
    type: number
    sql: ${TABLE}.investortypekey ;;
  }

  dimension: statekey {
    type: number
    sql: ${TABLE}.statekey ;;
  }

  dimension: transferfilekey {
    type: number
    sql: ${TABLE}.transferfilekey ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.volume ;;
  }

  dimension: volumegroupkey {
    type: number
    sql: ${TABLE}.volumegroupkey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
