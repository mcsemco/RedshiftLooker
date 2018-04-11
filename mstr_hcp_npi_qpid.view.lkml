view: mstr_hcp_npi_qpid {
  sql_table_name: public.mstr_hcp_npi_qpid ;;

  dimension_group: create {
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
    sql: ${TABLE}.create_date ;;
  }

  dimension: hcp_ams_id {
    type: number
    sql: ${TABLE}.hcp_ams_id ;;
  }

  dimension: logon_create_by {
    type: string
    sql: ${TABLE}.logon_create_by ;;
  }

  dimension: logon_mod_by {
    type: string
    sql: ${TABLE}.logon_mod_by ;;
  }

  dimension_group: mod {
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
    sql: ${TABLE}.mod_date ;;
  }

  dimension: mstr_hcp_qp_seqid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mstr_hcp_qp_seqid ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
