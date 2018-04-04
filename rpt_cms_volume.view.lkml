view: rpt_cms_volume {
  sql_table_name: public.rpt_cms_volume ;;

  dimension: bk_chapter_num {
    type: number
    sql: ${TABLE}.bk_chapter_num ;;
  }

  dimension: case_file_agency {
    type: string
    sql: ${TABLE}.case_file_agency ;;
  }

  dimension: case_file_id {
    type: number
    sql: ${TABLE}.case_file_id ;;
  }

  dimension: case_file_investor {
    type: string
    sql: ${TABLE}.case_file_investor ;;
  }

  dimension: case_file_numb {
    type: string
    sql: ${TABLE}.case_file_numb ;;
  }

  dimension_group: case_file_received {
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
    sql: ${TABLE}.case_file_received ;;
  }

  dimension: case_id {
    type: number
    sql: ${TABLE}.case_id ;;
  }

  dimension: case_number {
    type: string
    sql: ${TABLE}.case_number ;;
  }

  dimension_group: case_started {
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
    sql: ${TABLE}.case_started ;;
  }

  dimension_group: case_stat_chng {
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
    sql: ${TABLE}.case_stat_chng_date ;;
  }

  dimension: case_tmpl_name {
    type: string
    sql: ${TABLE}.case_tmpl_name ;;
  }

  dimension: case_type_id {
    type: number
    sql: ${TABLE}.case_type_id ;;
  }

  dimension: case_type_name {
    type: string
    sql: ${TABLE}.case_type_name ;;
  }

  dimension: client_code {
    type: string
    sql: ${TABLE}.client_code ;;
  }

  dimension: client_code_outsourcer {
    type: string
    sql: ${TABLE}.client_code_outsourcer ;;
  }

  dimension: client_code_refentity {
    type: string
    sql: ${TABLE}.client_code_refentity ;;
  }

  dimension: client_code_reoservicer {
    type: string
    sql: ${TABLE}.client_code_reoservicer ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.client_name ;;
  }

  dimension: client_name_outsourcer {
    type: string
    sql: ${TABLE}.client_name_outsourcer ;;
  }

  dimension: client_name_refentity {
    type: string
    sql: ${TABLE}.client_name_refentity ;;
  }

  dimension: client_name_reoservicer {
    type: string
    sql: ${TABLE}.client_name_reoservicer ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: delay_code_name {
    type: string
    sql: ${TABLE}.delay_code_name ;;
  }

  dimension: is_transfer_file {
    type: yesno
    sql: ${TABLE}.is_transfer_file ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.location_name ;;
  }

  dimension: md5hash {
    type: string
    sql: ${TABLE}.md5hash ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: office_code {
    type: string
    sql: ${TABLE}.office_code ;;
  }

  dimension: previous_volume_type_id {
    type: number
    sql: ${TABLE}.previous_volume_type_id ;;
  }

  dimension: process_type_id {
    type: number
    sql: ${TABLE}.process_type_id ;;
  }

  dimension: processed {
    type: yesno
    sql: ${TABLE}.processed ;;
  }

  dimension: ref_sys_name {
    type: string
    sql: ${TABLE}.ref_sys_name ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.state_code ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.status_id ;;
  }

  dimension: super_code {
    type: string
    sql: ${TABLE}.super_code ;;
  }

  dimension: super_code_name {
    type: string
    sql: ${TABLE}.super_code_name ;;
  }

  dimension_group: volume {
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
    sql: ${TABLE}.volume_date ;;
  }

  dimension: volume_group {
    type: string
    sql: ${TABLE}.volume_group ;;
  }

  dimension: volume_id {
    type: number
    sql: ${TABLE}.volume_id ;;
  }

  dimension: volume_type_id {
    type: number
    sql: ${TABLE}.volume_type_id ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      case_tmpl_name,
      client_name,
      super_code_name,
      case_type_name,
      delay_code_name,
      state_name,
      location_name,
      county_name,
      ref_sys_name
    ]
  }
}
