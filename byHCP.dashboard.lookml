- dashboard: view_by_hcp
  title: View by HCP
  layout: newspaper
  embed_style:
    background_color: "#f6f8fa"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Count of Transactions by Order Source
    name: Count of Transactions by Order Source
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: looker_column
    fields:
    - fact_tb_dtp_req_line_1.count_transactions
    - fact_tb_dtp_req_line_1.order_source
    sorts:
    - fact_tb_dtp_req_line_1.count_transactions desc
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    x_axis_label: Projects
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: fact_tb_dtp_req_line_1.count_transactions
        name: Fact Tb Dtp Req Line 1 Count Transactions
        axisId: fact_tb_dtp_req_line_1.count_transactions
    font_size: 9px
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_rotation: -90
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    row: 0
    col: 10
    width: 8
    height: 7
  - title: Count of Transactions by Projects
    name: Count of Transactions by Projects
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: looker_column
    fields:
    - dim_project.proj_desc
    - fact_tb_dtp_req_line_1.count_transactions
    sorts:
    - fact_tb_dtp_req_line_1.count_transactions desc
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    x_axis_label: Projects
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: fact_tb_dtp_req_line_1.count_transactions
        name: Fact Tb Dtp Req Line 1 Count Transactions
        axisId: fact_tb_dtp_req_line_1.count_transactions
    font_size: 9px
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_rotation: -90
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    row: 0
    col: 3
    width: 7
    height: 7
  - name: Count of Transactions
    title: Count of Transactions
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: single_value
    fields:
    - fact_tb_dtp_req_line_1.count_transactions
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: Count of Transactions
    value_format: ''
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    row: 0
    col: 0
    width: 3
    height: 4
  - name: Count of Products by Year-Month and Status
    title: Count of Products by Year-Month and Status
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: looker_column
    fields:
    - fact_tb_dtp_req_line_1.request_date
    - fact_tb_dtp_req_line_1.count_products
    - dim_status.status
    pivots:
    - dim_status.status
    sorts:
    - fact_tb_dtp_req_line_1.count_products desc 0
    - date.yearmo
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    x_axis_label: Year-Month
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: fact_tb_dtp_req_line_1.count_transactions
        name: Fact Tb Dtp Req Line 1 Count Transactions
        axisId: fact_tb_dtp_req_line_1.count_transactions
    font_size: 9px
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_rotation: -90
    hidden_fields: []
    x_axis_datetime_label: ''
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    row: 7
    col: 8
    width: 10
    height: 7
  - name: Table
    title: Table
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: table
    fields:
    - fact_tb_dtp_req_line_1.mstr_client_id
    - fact_tb_dtp_req_line_1.hcp_full_name
    - dim_rep.rep_full_name
    - dim_product.prod_desc
    - fact_tb_dtp_req_line_1.create_date
    - fact_tb_dtp_req_line_1.request_date
    - fact_tb_dtp_req_line_1.ship_date
    - fact_tb_dtp_req_line_1.qty_ordered_w_link
    sorts:
    - fact_tb_dtp_req_line_1.mstr_client_id
    limit: 500
    show_view_names: true
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    x_axis_label: Year-Month
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: fact_tb_dtp_req_line_1.count_transactions
        name: Fact Tb Dtp Req Line 1 Count Transactions
        axisId: fact_tb_dtp_req_line_1.count_transactions
    font_size: 9px
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_rotation: -90
    hidden_fields: []
    x_axis_datetime_label: ''
    hidden_series: []
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    title_hidden: true
    row: 14
    col: 0
    width: 18
    height: 6
  - name: Count of Transactions by Rep Full Name
    title: Count of Transactions by Rep Full Name
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: looker_column
    fields:
    - dim_rep.rep_full_name
    - fact_tb_dtp_req_line_1.count_transactions
    sorts:
    - fact_tb_dtp_req_line_1.count_transactions desc
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    x_axis_label: Year-Month
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: fact_tb_dtp_req_line_1.count_transactions
        name: Fact Tb Dtp Req Line 1 Count Transactions
        axisId: fact_tb_dtp_req_line_1.count_transactions
    font_size: 9px
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_rotation: -90
    hidden_fields: []
    x_axis_datetime_label: ''
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    row: 7
    col: 0
    width: 8
    height: 7
  - name: Ordered Quantity
    title: Ordered Quantity
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: single_value
    fields:
    - fact_tb_dtp_req_line_1.qty_ordered
    sorts:
    - fact_tb_dtp_req_line_1.qty_ordered desc
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: Ordered Quantity
    value_format: ''
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    row: 4
    col: 0
    width: 3
    height: 3
  filters:
  - name: Date Range
    title: Date Range
    type: field_filter
    default_value: 2018/01/01 to 2018/04/04
    allow_multiple_values: true
    required: false
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    listens_to_filters: []
    field: fact_tb_dtp_req_line_1.request_date
  - name: MSTR Client
    title: MSTR Client
    type: field_filter
    default_value: NOVON
    allow_multiple_values: true
    required: false
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    listens_to_filters: []
    field: fact_tb_dtp_req_line_1.mstr_client_id
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    listens_to_filters: []
    field: dim_status.status
  - name: HCP Full Name
    title: HCP Full Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    listens_to_filters: []
    field: fact_tb_dtp_req_line_1.hcp_full_name
