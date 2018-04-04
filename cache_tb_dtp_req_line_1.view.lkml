view: cache_tb_dtp_req_line_1 {
  sql_table_name: public.cache_tb_dtp_req_line_1 ;;

  dimension_group: aoc {
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
    sql: ${TABLE}.aoc_date ;;
  }

  dimension: aoc_escalated {
    type: string
    sql: ${TABLE}.aoc_escalated ;;
  }

  dimension: aoc_qnty {
    type: number
    sql: ${TABLE}.aoc_qnty ;;
  }

  dimension: aoc_trans_id {
    type: string
    sql: ${TABLE}.aoc_trans_id ;;
  }

  dimension: client_program_cd {
    type: string
    sql: ${TABLE}.client_program_cd ;;
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

  dimension_group: extract {
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
    sql: ${TABLE}.extract_date ;;
  }

  dimension: facility_attn {
    type: string
    sql: ${TABLE}.facility_attn ;;
  }

  dimension: hcp_city {
    type: string
    sql: ${TABLE}.hcp_city ;;
  }

  dimension: hcp_country_cd {
    type: string
    sql: ${TABLE}.hcp_country_cd ;;
  }

  dimension: hcp_desig {
    type: string
    sql: ${TABLE}.hcp_desig ;;
  }

  dimension: hcp_first_name {
    type: string
    sql: ${TABLE}.hcp_first_name ;;
  }

  dimension: hcp_last_name {
    type: string
    sql: ${TABLE}.hcp_last_name ;;
  }

  dimension: hcp_lic_num {
    type: string
    sql: ${TABLE}.hcp_lic_num ;;
  }

  dimension: hcp_lic_state {
    type: string
    sql: ${TABLE}.hcp_lic_state ;;
  }

  dimension: hcp_mid_name {
    type: string
    sql: ${TABLE}.hcp_mid_name ;;
  }

  dimension: hcp_ref_id {
    type: string
    sql: ${TABLE}.hcp_ref_id ;;
  }

  dimension: hcp_speciality {
    type: string
    sql: ${TABLE}.hcp_speciality ;;
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

  dimension: hcp_zip {
    type: string
    sql: ${TABLE}.hcp_zip ;;
  }

  dimension: lot_num {
    type: string
    sql: ${TABLE}.lot_num ;;
  }

  dimension: mstr_client_id {
    type: string
    sql: ${TABLE}.mstr_client_id ;;
  }

  dimension: order_source {
    type: string
    sql: ${TABLE}.order_source ;;
  }

  dimension: ordered_qty {
    type: number
    sql: ${TABLE}.ordered_qty ;;
  }

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

  dimension: proj_desc {
    type: string
    sql: ${TABLE}.proj_desc ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: rep_first_name {
    type: string
    sql: ${TABLE}.rep_first_name ;;
  }

  dimension: rep_id {
    type: string
    sql: ${TABLE}.rep_id ;;
  }

  dimension: rep_last_name {
    type: string
    sql: ${TABLE}.rep_last_name ;;
  }

  dimension: reqst_comments {
    type: string
    sql: ${TABLE}.reqst_comments ;;
  }

  dimension_group: request {
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
    sql: ${TABLE}.request_date ;;
  }

  dimension: request_id {
    type: string
    sql: ${TABLE}.request_id ;;
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

  dimension: ship_carrier {
    type: string
    sql: ${TABLE}.ship_carrier ;;
  }

  dimension_group: ship {
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
    sql: ${TABLE}.ship_date ;;
  }

  dimension: shipment_id {
    type: string
    sql: ${TABLE}.shipment_id ;;
  }

  dimension: shipped_qty {
    type: number
    sql: ${TABLE}.shipped_qty ;;
  }

  dimension: shpmt_package_count {
    type: number
    sql: ${TABLE}.shpmt_package_count ;;
  }

  dimension: shpmt_package_index {
    type: number
    sql: ${TABLE}.shpmt_package_index ;;
  }

  dimension: shpmt_packing_slip {
    type: string
    sql: ${TABLE}.shpmt_packing_slip ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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

  dimension: tracking_num {
    type: string
    sql: ${TABLE}.tracking_num ;;
  }

  dimension_group: xtrnl_reqst_create {
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
    sql: ${TABLE}.xtrnl_reqst_create_date ;;
  }

  measure: count {
    type: count
    drill_fields: [hcp_first_name, hcp_mid_name, hcp_last_name, rep_first_name, rep_last_name]
  }
}
