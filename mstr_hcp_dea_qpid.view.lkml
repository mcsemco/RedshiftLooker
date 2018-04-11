view: mstr_hcp_dea_qpid {
  sql_table_name: public.mstr_hcp_dea_qpid ;;

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

  dimension: hcp_address_seqid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hcp_address_seqid ;;
  }

  dimension: hcp_ams_id {
    type: number
    sql: ${TABLE}.hcp_ams_id ;;
  }

  dimension: hcp_dea_num {
    type: string
    sql: ${TABLE}.hcp_dea_num ;;
  }

  dimension: hcp_dea_status {
    type: string
    sql: ${TABLE}.hcp_dea_status ;;
  }

  dimension_group: hcp_expiration {
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
    sql: ${TABLE}.hcp_expiration_date ;;
  }

  dimension: hcp_schedules {
    type: string
    sql: ${TABLE}.hcp_schedules ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
