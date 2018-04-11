view: mstr_hcp_stlic {
  sql_table_name: public.mstr_hcp_stlic ;;

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

  dimension: dummy_ctx {
    type: string
    sql: ${TABLE}.dummy_ctx ;;
  }

  dimension: hcp_slic_active_flag {
    type: string
    sql: ${TABLE}.hcp_slic_active_flag ;;
  }

  dimension: hcp_slic_ams_degree {
    type: string
    sql: ${TABLE}.hcp_slic_ams_degree ;;
  }

  dimension: hcp_slic_ams_elig_cd {
    type: string
    sql: ${TABLE}.hcp_slic_ams_elig_cd ;;
  }

  dimension: hcp_slic_ams_id {
    type: number
    sql: ${TABLE}.hcp_slic_ams_id ;;
  }

  dimension: hcp_slic_anticipated_expdt_ind {
    type: string
    sql: ${TABLE}.hcp_slic_anticipated_expdt_ind ;;
  }

  dimension_group: hcp_slic_exp_plus_grace {
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
    sql: ${TABLE}.hcp_slic_exp_plus_grace ;;
  }

  dimension_group: hcp_slic_exp_plus_renewal {
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
    sql: ${TABLE}.hcp_slic_exp_plus_renewal ;;
  }

  dimension_group: hcp_slic_expdt_before_renewal {
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
    sql: ${TABLE}.hcp_slic_expdt_before_renewal ;;
  }

  dimension_group: hcp_slic_expiration {
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
    sql: ${TABLE}.hcp_slic_expiration_date ;;
  }

  dimension_group: hcp_slic_issue {
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
    sql: ${TABLE}.hcp_slic_issue_date ;;
  }

  dimension_group: hcp_slic_last_lookup {
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
    sql: ${TABLE}.hcp_slic_last_lookup_date ;;
  }

  dimension: hcp_slic_license_state {
    type: string
    sql: ${TABLE}.hcp_slic_license_state ;;
  }

  dimension: hcp_slic_licstatus_ams {
    type: string
    sql: ${TABLE}.hcp_slic_licstatus_ams ;;
  }

  dimension: hcp_slic_licstatus_qp {
    type: string
    sql: ${TABLE}.hcp_slic_licstatus_qp ;;
  }

  dimension: hcp_slic_ml_credential {
    type: string
    sql: ${TABLE}.hcp_slic_ml_credential ;;
  }

  dimension: hcp_slic_original_source_cd {
    type: number
    sql: ${TABLE}.hcp_slic_original_source_cd ;;
  }

  dimension: hcp_slic_prof_design {
    type: string
    sql: ${TABLE}.hcp_slic_prof_design ;;
  }

  dimension: hcp_slic_prof_design_sublevel {
    type: string
    sql: ${TABLE}.hcp_slic_prof_design_sublevel ;;
  }

  dimension: hcp_slic_record_status {
    type: string
    sql: ${TABLE}.hcp_slic_record_status ;;
  }

  dimension: hcp_slic_sln {
    type: string
    sql: ${TABLE}.hcp_slic_sln ;;
  }

  dimension: hcp_slic_sln_translated {
    type: string
    sql: ${TABLE}.hcp_slic_sln_translated ;;
  }

  dimension: hcp_slic_source_cd {
    type: number
    sql: ${TABLE}.hcp_slic_source_cd ;;
  }

  dimension_group: hcp_slic_status {
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
    sql: ${TABLE}.hcp_slic_status_date ;;
  }

  dimension: hcp_source_not_verified {
    type: string
    sql: ${TABLE}.hcp_source_not_verified ;;
  }

  dimension: hcp_stlic_guid {
    type: string
    sql: ${TABLE}.hcp_stlic_guid ;;
  }

  dimension: hcp_stlic_sln_body {
    type: string
    sql: ${TABLE}.hcp_stlic_sln_body ;;
  }

  dimension: hcp_stlic_sln_prefix {
    type: string
    sql: ${TABLE}.hcp_stlic_sln_prefix ;;
  }

  dimension: hcp_stlic_sln_suffix {
    type: string
    sql: ${TABLE}.hcp_stlic_sln_suffix ;;
  }

  dimension: hds_slid {
    type: string
    sql: ${TABLE}.hds_slid ;;
  }

  dimension_group: hds_update {
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
    sql: ${TABLE}.hds_update_date ;;
  }

  dimension: license_status_from_hds {
    type: string
    sql: ${TABLE}.license_status_from_hds ;;
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

  dimension: mstr_hcp_stlic_seqid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mstr_hcp_stlic_seqid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
