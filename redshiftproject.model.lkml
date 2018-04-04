connection: "dwhredshift"
label: "QPHARMA Test Model"
# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: redshiftproject_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: redshiftproject_default_datagroup

explore: fact_tb_dtp_req_line_1 {
  description: "Facts for qpharma dashboard"
  label: "Facts for qpharma dashboard"
  join: date {
    relationship: many_to_one
    sql_on:${fact_tb_dtp_req_line_1.request_date}= ${date.fulldate_raw} ;;
    type: inner
  }

  join: dim_mstr_client {
    relationship: many_to_one
    sql_on: ${fact_tb_dtp_req_line_1.mstr_client_id} = ${dim_mstr_client.mstr_client_id} ;;
  }

  join: dim_product {
    relationship: many_to_one
    sql_on: ${fact_tb_dtp_req_line_1.product_id} = ${dim_product.product_id} ;;
  }

  join: dim_project {
    relationship: many_to_one
    sql_on: ${fact_tb_dtp_req_line_1.project_id} = ${dim_project.project_id} ;;
  }

  join: dim_rep {
    relationship: many_to_one
    sql_on: ${fact_tb_dtp_req_line_1.rep_id} = ${dim_rep.rep_id} ;;
    type:left_outer
  }

  join: dim_status {
    relationship: many_to_one
    sql_on: ${fact_tb_dtp_req_line_1.status_cd} = ${dim_status.status_cd} ;;
  }
}
