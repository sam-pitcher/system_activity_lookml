view: history {
  sql_table_name: `looker-ps-emea-consultants.system_activity.history`
    ;;
  drill_fields: [id]

  dimension_group: created {
    type: time
    sql: cast(${TABLE}.created_at as timestamp) ;;
    timeframes: [date, hour_of_day, week, month, year]
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: apply_formatting {
    type: string
    sql: ${TABLE}.apply_formatting ;;
  }

  dimension: apply_vis {
    type: string
    sql: ${TABLE}.apply_vis ;;
  }

  dimension: cache {
    type: string
    sql: ${TABLE}.cache ;;
  }

  dimension: cache_key {
    type: string
    sql: ${TABLE}.cache_key ;;
  }

  dimension: cache_only {
    type: string
    sql: ${TABLE}.cache_only ;;
  }

  dimension: completed_at {
    type: string
    sql: ${TABLE}.completed_at ;;
  }

  dimension: connection_id {
    type: string
    sql: ${TABLE}.connection_id ;;
  }

  dimension: connection_name {
    type: string
    sql: ${TABLE}.connection_name ;;
  }

  dimension: dashboard_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }

  dimension: dashboard_id_as_number {
    type: string
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }

  dimension: dashboard_session {
    type: string
    sql: ${TABLE}.dashboard_session ;;
  }

  dimension: dialect {
    type: string
    sql: ${TABLE}.dialect ;;
  }

  dimension: force_production {
    type: string
    sql: ${TABLE}.force_production ;;
  }

  dimension: generate_links {
    type: string
    sql: ${TABLE}.generate_links ;;
  }

  dimension: look_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.look_id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: models_dir {
    type: string
    sql: ${TABLE}.models_dir ;;
  }

  dimension: node_id {
    type: number
    sql: ${TABLE}.node_id ;;
  }

  dimension: path_prefix_id {
    type: number
    sql: ${TABLE}.path_prefix_id ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.query_id ;;
  }

  dimension: rebuild_pdts {
    type: string
    sql: ${TABLE}.rebuild_pdts ;;
  }

  dimension: render_key {
    type: string
    sql: ${TABLE}.render_key ;;
  }

  dimension: result_format {
    type: string
    sql: ${TABLE}.result_format ;;
  }

  dimension: result_maker_id {
    type: string
    sql: ${TABLE}.result_maker_id ;;
  }

  dimension: result_source {
    type: string
    sql: ${TABLE}.result_source ;;
  }

  dimension: runtime {
    type: number
    sql: ${TABLE}.runtime ;;
  }

  dimension: server_table_calcs {
    type: string
    sql: ${TABLE}.server_table_calcs ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: sql_query_id {
    type: string
    sql: ${TABLE}.sql_query_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: workspace_id {
    type: string
    sql: ${TABLE}.workspace_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_runtime {
    type: sum
    sql: ${runtime} / 86400.0 ;;
    value_format: "hh:mm:ss"
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      connection_name,
      query.id,
      look.id,
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name,
      dashboard.id
    ]
  }
}
