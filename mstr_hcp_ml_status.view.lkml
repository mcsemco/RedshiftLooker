view: mstr_hcp_ml_status {
  sql_table_name: public.mstr_hcp_ml_status ;;

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

  dimension: logon_create_by {
    type: string
    sql: ${TABLE}.logon_create_by ;;
  }

  dimension: logon_mod_by {
    type: string
    sql: ${TABLE}.logon_mod_by ;;
  }

  dimension: ml_comments {
    type: string
    sql: ${TABLE}.ml_comments ;;
  }

  dimension: ml_restricted_status {
    type: string
    sql: ${TABLE}.ml_restricted_status ;;
  }

  dimension: ml_state_status {
    type: string
    sql: ${TABLE}.ml_state_status ;;
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

  dimension: prescript_auth {
    type: string
    sql: ${TABLE}.prescript_auth ;;
  }

  dimension: prof_design {
    type: string
    sql: ${TABLE}.prof_design ;;
  }

  dimension: state_abbr {
    type: string
    sql: ${TABLE}.state_abbr ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
