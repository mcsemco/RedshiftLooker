view: cache_tb_sa_trans_hdr_1 {
  sql_table_name: public.cache_tb_sa_trans_hdr_1 ;;

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension: corrected_flag {
    type: string
    sql: ${TABLE}.corrected_flag ;;
  }

  dimension: cso_id {
    type: string
    sql: ${TABLE}.cso_id ;;
  }

  dimension: emp_name {
    type: string
    sql: ${TABLE}.emp_name ;;
  }

  dimension: extrnl_client_locid {
    type: string
    sql: ${TABLE}.extrnl_client_locid ;;
  }

  dimension: hcp_addr_1 {
    type: string
    sql: ${TABLE}.hcp_addr_1 ;;
  }

  dimension: hcp_addr_2 {
    type: string
    sql: ${TABLE}.hcp_addr_2 ;;
  }

  dimension: hcp_address {
    type: string
    sql: ${TABLE}.hcp_address ;;
  }

  dimension: hcp_city {
    type: string
    sql: ${TABLE}.hcp_city ;;
  }

  dimension: hcp_country_cd {
    type: string
    sql: ${TABLE}.hcp_country_cd ;;
  }

  dimension: hcp_first_name {
    type: string
    sql: ${TABLE}.hcp_first_name ;;
  }

  dimension: hcp_last_name {
    type: string
    sql: ${TABLE}.hcp_last_name ;;
  }

  dimension_group: hcp_lic_exp {
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
    sql: ${TABLE}.hcp_lic_exp_date ;;
  }

  dimension: hcp_lic_num {
    type: string
    sql: ${TABLE}.hcp_lic_num ;;
  }

  dimension: hcp_mid_name {
    type: string
    sql: ${TABLE}.hcp_mid_name ;;
  }

  dimension: hcp_name {
    type: string
    sql: ${TABLE}.hcp_name ;;
  }

  dimension: hcp_postal_cd {
    type: string
    sql: ${TABLE}.hcp_postal_cd ;;
  }

  dimension: hcp_prof_desgn {
    type: string
    sql: ${TABLE}.hcp_prof_desgn ;;
  }

  dimension: hcp_speciality {
    type: string
    sql: ${TABLE}.hcp_speciality ;;
  }

  dimension: hcp_state {
    type: string
    sql: ${TABLE}.hcp_state ;;
  }

  dimension: hcp_zip4 {
    type: string
    sql: ${TABLE}.hcp_zip4 ;;
  }

  dimension_group: hdr_create {
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
    sql: ${TABLE}.hdr_create_date ;;
  }

  dimension: mstr_client_id {
    type: string
    sql: ${TABLE}.mstr_client_id ;;
  }

  dimension: mstr_proj_id {
    type: string
    sql: ${TABLE}.mstr_proj_id ;;
  }

  dimension: offset_rep_id {
    type: string
    sql: ${TABLE}.offset_rep_id ;;
  }

  dimension: offset_rep_name {
    type: string
    sql: ${TABLE}.offset_rep_name ;;
  }

  dimension: offset_rep_terr {
    type: string
    sql: ${TABLE}.offset_rep_terr ;;
  }

  dimension: paper_flag {
    type: string
    sql: ${TABLE}.paper_flag ;;
  }

  dimension_group: recon_eff {
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
    sql: ${TABLE}.recon_eff_date ;;
  }

  dimension: rep_email {
    type: string
    sql: ${TABLE}.rep_email ;;
  }

  dimension: rep_first_name {
    type: string
    sql: ${TABLE}.rep_first_name ;;
  }

  dimension: rep_last_name {
    type: string
    sql: ${TABLE}.rep_last_name ;;
  }

  dimension: rep_terr {
    type: string
    sql: ${TABLE}.rep_terr ;;
  }

  dimension: roster_id {
    type: string
    sql: ${TABLE}.roster_id ;;
  }

  dimension_group: row_create {
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
    sql: ${TABLE}.row_create_date ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}.row_id ;;
  }

  dimension: source_cd {
    type: number
    sql: ${TABLE}.source_cd ;;
  }

  dimension: source_desc {
    type: string
    sql: ${TABLE}.source_desc ;;
  }

  dimension: status_cd {
    type: number
    sql: ${TABLE}.status_cd ;;
  }

  dimension: tddd_exempt_reason {
    type: string
    sql: ${TABLE}.tddd_exempt_reason ;;
  }

  dimension: tddd_exempt_reason_cd {
    type: number
    sql: ${TABLE}.tddd_exempt_reason_cd ;;
  }

  dimension: tddd_exempted_ind {
    type: string
    sql: ${TABLE}.tddd_exempted_ind ;;
  }

  dimension: tddd_id {
    type: string
    sql: ${TABLE}.tddd_id ;;
  }

  dimension_group: trans {
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
    sql: ${TABLE}.trans_date ;;
  }

  dimension: trans_guid {
    type: string
    sql: ${TABLE}.trans_guid ;;
  }

  dimension: trans_id {
    type: string
    sql: ${TABLE}.trans_id ;;
  }

  dimension: trans_ref_id {
    type: string
    sql: ${TABLE}.trans_ref_id ;;
  }

  dimension: trans_type_cd {
    type: number
    sql: ${TABLE}.trans_type_cd ;;
  }

  dimension: trans_type_desc {
    type: string
    sql: ${TABLE}.trans_type_desc ;;
  }

  dimension: xtrnl_pract_id {
    type: string
    sql: ${TABLE}.xtrnl_pract_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      emp_name,
      rep_first_name,
      rep_last_name,
      hcp_name,
      hcp_first_name,
      hcp_mid_name,
      hcp_last_name,
      offset_rep_name
    ]
  }
}
