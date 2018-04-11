view: mstr_hcp {
  sql_table_name: public.mstr_hcp ;;

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

  dimension: gender_cd {
    type: string
    sql: ${TABLE}.gender_cd ;;
  }

  dimension: hcp_ams_id {
    type: number
    sql: ${TABLE}.hcp_ams_id ;;
  }

  dimension_group: hcp_dob {
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
    sql: ${TABLE}.hcp_dob ;;
  }

  dimension_group: hcp_dod {
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
    sql: ${TABLE}.hcp_dod ;;
  }

  dimension: hcp_first_name {
    type: string
    sql: ${TABLE}.hcp_first_name ;;
  }

  dimension: hcp_first_name_alias1 {
    type: string
    sql: ${TABLE}.hcp_first_name_alias1 ;;
  }

  dimension: hcp_first_name_alias2 {
    type: string
    sql: ${TABLE}.hcp_first_name_alias2 ;;
  }

  dimension: hcp_first_name_trans {
    type: string
    sql: ${TABLE}.hcp_first_name_trans ;;
  }

  dimension: hcp_guid {
    type: string
    sql: ${TABLE}.hcp_guid ;;
  }

  dimension: hcp_last_name {
    type: string
    sql: ${TABLE}.hcp_last_name ;;
  }

  dimension: hcp_last_name_alias1 {
    type: string
    sql: ${TABLE}.hcp_last_name_alias1 ;;
  }

  dimension: hcp_last_name_alias2 {
    type: string
    sql: ${TABLE}.hcp_last_name_alias2 ;;
  }

  dimension: hcp_last_name_trans {
    type: string
    sql: ${TABLE}.hcp_last_name_trans ;;
  }

  dimension: hcp_mid_name {
    type: string
    sql: ${TABLE}.hcp_mid_name ;;
  }

  dimension: hcp_prefix {
    type: string
    sql: ${TABLE}.hcp_prefix ;;
  }

  dimension: hcp_qp_seqid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hcp_qp_seqid ;;
  }

  dimension: hcp_record_status {
    type: string
    sql: ${TABLE}.hcp_record_status ;;
  }

  dimension: hcp_source_cd {
    type: number
    sql: ${TABLE}.hcp_source_cd ;;
  }

  dimension: hcp_status_cd {
    type: number
    sql: ${TABLE}.hcp_status_cd ;;
  }

  dimension_group: hcp_status {
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
    sql: ${TABLE}.hcp_status_date ;;
  }

  dimension: hcp_suffix_name {
    type: string
    sql: ${TABLE}.hcp_suffix_name ;;
  }

  dimension: hcp_yob {
    type: string
    sql: ${TABLE}.hcp_yob ;;
  }

  dimension: hcp_yod {
    type: number
    sql: ${TABLE}.hcp_yod ;;
  }

  dimension: highest_prof_design {
    type: string
    sql: ${TABLE}.highest_prof_design ;;
  }

  dimension: logon_create_by {
    type: string
    sql: ${TABLE}.logon_create_by ;;
  }

  dimension: logon_mod_by {
    type: string
    sql: ${TABLE}.logon_mod_by ;;
  }

  dimension: me_number {
    type: string
    sql: ${TABLE}.me_number ;;
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

  dimension: primary_specialty {
    type: string
    sql: ${TABLE}.primary_specialty ;;
  }

  measure: count {
    type: count
    drill_fields: [hcp_suffix_name, hcp_last_name, hcp_mid_name, hcp_first_name]
  }
}
