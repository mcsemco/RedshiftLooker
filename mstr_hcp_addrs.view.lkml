view: mstr_hcp_addrs {
  sql_table_name: public.mstr_hcp_addrs ;;

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

  dimension: facility_attn {
    type: string
    sql: ${TABLE}.facility_attn ;;
  }

  dimension: hcp_addr_record_status {
    type: string
    sql: ${TABLE}.hcp_addr_record_status ;;
  }

  dimension_group: hcp_address_end {
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
    sql: ${TABLE}.hcp_address_end_date ;;
  }

  dimension_group: hcp_address_start {
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
    sql: ${TABLE}.hcp_address_start_date ;;
  }

  dimension: hcp_address_type {
    type: string
    sql: ${TABLE}.hcp_address_type ;;
  }

  dimension: hcp_addrs_seqid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hcp_addrs_seqid ;;
  }

  dimension: hcp_building {
    type: string
    sql: ${TABLE}.hcp_building ;;
  }

  dimension: hcp_city {
    type: string
    sql: ${TABLE}.hcp_city ;;
  }

  dimension: hcp_confidence_percent {
    type: number
    sql: ${TABLE}.hcp_confidence_percent ;;
  }

  dimension: hcp_country_cd {
    type: string
    sql: ${TABLE}.hcp_country_cd ;;
  }

  dimension: hcp_postal_cd {
    type: string
    sql: ${TABLE}.hcp_postal_cd ;;
  }

  dimension: hcp_source_ranking {
    type: number
    sql: ${TABLE}.hcp_source_ranking ;;
  }

  dimension: hcp_state {
    type: string
    sql: ${TABLE}.hcp_state ;;
  }

  dimension: hcp_street1 {
    type: string
    sql: ${TABLE}.hcp_street1 ;;
  }

  dimension: hcp_street2 {
    type: string
    sql: ${TABLE}.hcp_street2 ;;
  }

  dimension: hcp_unit {
    type: string
    sql: ${TABLE}.hcp_unit ;;
  }

  dimension: hcp_zip4 {
    type: string
    sql: ${TABLE}.hcp_zip4 ;;
  }

  dimension: hcp_zip5 {
    type: string
    sql: ${TABLE}.hcp_zip5 ;;
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

  dimension: source_cd {
    type: number
    sql: ${TABLE}.source_cd ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: usps_addr_verified {
    type: string
    sql: ${TABLE}.usps_addr_verified ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
