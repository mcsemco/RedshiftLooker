- dashboard: test_dashboard
  title: Test Dashboard
  layout: newspaper
  embed_style:
    background_color: "#f6f8fa"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - name: Map USA
    title: Map USA
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: looker_geo_choropleth
    fields:
    - fact_tb_dtp_req_line_1.count_transactions
    - fact_tb_dtp_req_line_1.hcp_state_map
    filters:
      fact_tb_dtp_req_line_1.mstr_client_id: ''
      dim_status.status: ''
      fact_tb_dtp_req_line_1.hcp_full_name: ''
    sorts:
    - fact_tb_dtp_req_line_1.count_transactions desc
    limit: 500
    column_limit: 50
    map: usa
    map_projection: mercator
    show_view_names: true
    quantize_colors: false
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: imperial
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    stacking: ''
    show_value_labels: false
    label_density: 22
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
      valueFormat:
      series:
      - id: fact_tb_dtp_req_line_1.count
        name: Fact Tb Dtp Req Line 1
        axisId: fact_tb_dtp_req_line_1.count
    reference_lines: []
    y_axis_reversed: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    map_latitude: 49.55372551347579
    map_longitude: -114.56542968750001
    map_zoom: 3.5
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    row: 0
    col: 3
    width: 13
    height: 10
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
    row: 0
    col: 0
    width: 3
    height: 5
  - name: Count of Transactions by Order Source
    title: Count of Transactions by Order Source
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: looker_column
    fields:
    - fact_tb_dtp_req_line_1.count_transactions
    - fact_tb_dtp_req_line_1.order_source
    filters:
      fact_tb_dtp_req_line_1.mstr_client_id: ''
      dim_status.status: ''
      fact_tb_dtp_req_line_1.hcp_full_name: ''
    sorts:
    - fact_tb_dtp_req_line_1.count_transactions desc
    limit: 500
    column_limit: 50
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
    x_axis_label: Order Source
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
        __FILE: redshiftproject/test_dashboard.dashboard.lookml
        __LINE_NUM: 126
      __FILE: redshiftproject/test_dashboard.dashboard.lookml
      __LINE_NUM: 114
    font_size: 9px
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    label_rotation: -90
    series_labels:
      fact_tb_dtp_req_line_1.count_transactions: Count of Transactions
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    row: 10
    col: 8
    width: 8
    height: 6
  - name: Count of Products by Year-Month and Status
    title: Count of Products by Year-Month and Status
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: looker_column
    fields:
    - fact_tb_dtp_req_line_1.count_products
    - dim_status.status
    - date.yearmo
    pivots:
    - dim_status.status
    filters:
      fact_tb_dtp_req_line_1.mstr_client_id: ''
      dim_status.status: ''
      fact_tb_dtp_req_line_1.hcp_full_name: ''
    sorts:
    - fact_tb_dtp_req_line_1.count_products desc 0
    - dim_status.status
    limit: 500
    column_limit: 50
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
        __FILE: redshiftproject/test_dashboard.dashboard.lookml
        __LINE_NUM: 197
      __FILE: redshiftproject/test_dashboard.dashboard.lookml
      __LINE_NUM: 185
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
    row: 16
    col: 0
    width: 8
    height: 6
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
    row: 5
    col: 0
    width: 3
    height: 5
  - name: Count of Transactions by Projects
    title: Count of Transactions by Projects
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: looker_column
    fields:
    - dim_project.proj_desc
    - fact_tb_dtp_req_line_1.count_transactions
    filters:
      fact_tb_dtp_req_line_1.mstr_client_id: ''
      dim_status.status: ''
      fact_tb_dtp_req_line_1.hcp_full_name: ''
    sorts:
    - fact_tb_dtp_req_line_1.count_transactions desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 24
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
    x_axis_label: Project
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
        __FILE: redshiftproject/test_dashboard.dashboard.lookml
        __LINE_NUM: 60
      __FILE: redshiftproject/test_dashboard.dashboard.lookml
      __LINE_NUM: 48
    font_size: 9px
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    label_rotation: -90
    colors:
    - "#62bad4"
    - "#a9c574"
    - "#929292"
    - "#9fdee0"
    - "#1f3e5a"
    - "#90c8ae"
    - "#92818d"
    - "#c5c6a6"
    - "#82c2ca"
    - "#cee0a0"
    - "#928fb4"
    - "#9fc190"
    series_colors: {}
    series_labels:
      fact_tb_dtp_req_line_1.count_transactions: Count of Transactions
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    row: 10
    col: 0
    width: 8
    height: 6
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
      num_rows: '500'
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
    row: 22
    col: 0
    width: 16
    height: 6
  - name: Ordered Quantity by Year-Month and Status
    title: Ordered Quantity by Year-Month and Status
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    type: looker_column
    fields:
    - date.yearmo
    - fact_tb_dtp_req_line_1.qty_ordered
    - dim_status.status
    pivots:
    - dim_status.status
    filters:
      fact_tb_dtp_req_line_1.mstr_client_id: ''
      dim_status.status: ''
      fact_tb_dtp_req_line_1.hcp_full_name: ''
    sorts:
    - dim_status.status 0
    - fact_tb_dtp_req_line_1.qty_ordered desc 0
    limit: 500
    column_limit: 50
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
        __FILE: redshiftproject/test_dashboard.dashboard.lookml
        __LINE_NUM: 270
      __FILE: redshiftproject/test_dashboard.dashboard.lookml
      __LINE_NUM: 258
    font_size: 9px
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_rotation: -90
    hidden_fields: []
    x_axis_datetime_label: ''
    hidden_series: []
    listen:
      Date Range: fact_tb_dtp_req_line_1.request_date
      MSTR Client: fact_tb_dtp_req_line_1.mstr_client_id
      Status: dim_status.status
      HCP Full Name: fact_tb_dtp_req_line_1.hcp_full_name
    row: 16
    col: 8
    width: 8
    height: 6
  filters:
  - name: Date Range
    title: Date Range
    type: field_filter
    default_value: 2018/01/01 to 2018/04/04
    allow_multiple_values: true
    required: false
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    listens_to_filters:
    - MSTR Client
    - Status
    - HCP Full Name
    field: fact_tb_dtp_req_line_1.request_date
  - name: MSTR Client
    title: MSTR Client
    type: field_filter
    default_value: NOVON
    allow_multiple_values: true
    required: false
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    listens_to_filters:
    - Date Range
    - Status
    - HCP Full Name
    field: fact_tb_dtp_req_line_1.mstr_client_id
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    listens_to_filters:
    - Date Range
    - MSTR Client
    - HCP Full Name
    field: dim_status.status
  - name: HCP Full Name
    title: HCP Full Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: redshiftproject
    explore: fact_tb_dtp_req_line_1
    listens_to_filters:
    - Date Range
    - MSTR Client
    - Status
    field: fact_tb_dtp_req_line_1.hcp_full_name
