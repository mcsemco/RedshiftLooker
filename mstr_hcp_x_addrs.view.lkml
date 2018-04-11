view: mstr_hcp_x_addrs {
  sql_table_name: public.mstr_hcp_x_addrs ;;

  dimension: addr_checksum_rawtohex {
    type: string
    sql: ${TABLE}.addr_checksum_rawtohex ;;
  }

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

  dimension: hcp_addrs_seqid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hcp_addrs_seqid ;;
  }

  dimension: hcp_dea_addr_ind {
    type: string
    sql: ${TABLE}.hcp_dea_addr_ind ;;
  }

  dimension: hcp_moved_ind {
    type: string
    sql: ${TABLE}.hcp_moved_ind ;;
  }

  dimension: hcp_qp_seqid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hcp_qp_seqid ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
