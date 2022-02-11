view: dashboard {
  sql_table_name: `looker-ps-emea-consultants.system_activity.dashboard`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alert_sync_with_dashboard_filter_enabled {
    type: string
    sql: ${TABLE}.alert_sync_with_dashboard_filter_enabled ;;
  }

  dimension: appearance {
    type: string
    sql: ${TABLE}.appearance ;;
  }

  dimension: background_color {
    type: string
    sql: ${TABLE}.background_color ;;
  }

  dimension: content_metadata_id {
    type: number
    sql: ${TABLE}.content_metadata_id ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: crossfilter_enabled {
    type: string
    sql: ${TABLE}.crossfilter_enabled ;;
  }

  dimension: deleted_at {
    type: string
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: deleter_id {
    type: string
    sql: ${TABLE}.deleter_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: filter_lookml {
    type: string
    sql: ${TABLE}.filter_lookml ;;
  }

  dimension: filters_bar_collapsed {
    type: string
    sql: ${TABLE}.filters_bar_collapsed ;;
  }

  dimension: hidden {
    type: string
    sql: ${TABLE}.hidden ;;
  }

  dimension: indexed_at {
    type: string
    sql: ${TABLE}.indexed_at ;;
  }

  dimension: last_updater_id {
    type: string
    sql: ${TABLE}.last_updater_id ;;
  }

  dimension: load_configuration {
    type: string
    sql: ${TABLE}.load_configuration ;;
  }

  dimension: lookml_link_id {
    type: string
    sql: ${TABLE}.lookml_link_id ;;
  }

  dimension: preferred_viewer {
    type: string
    sql: ${TABLE}.preferred_viewer ;;
  }

  dimension: query_timezone {
    type: string
    sql: ${TABLE}.query_timezone ;;
  }

  dimension: refresh_interval {
    type: string
    sql: ${TABLE}.refresh_interval ;;
  }

  dimension: show_filters_bar {
    type: string
    sql: ${TABLE}.show_filters_bar ;;
  }

  dimension: show_tile_shadow {
    type: string
    sql: ${TABLE}.show_tile_shadow ;;
  }

  dimension: show_title {
    type: string
    sql: ${TABLE}.show_title ;;
  }

  dimension: space_id {
    type: number
    sql: ${TABLE}.space_id ;;
  }

  dimension: text_tile_text_color {
    type: string
    sql: ${TABLE}.text_tile_text_color ;;
  }

  dimension: tile_background_color {
    type: string
    sql: ${TABLE}.tile_background_color ;;
  }

  dimension: tile_border_radius {
    type: string
    sql: ${TABLE}.tile_border_radius ;;
  }

  dimension: tile_separator_color {
    type: string
    sql: ${TABLE}.tile_separator_color ;;
  }

  dimension: tile_text_color {
    type: string
    sql: ${TABLE}.tile_text_color ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: title_color {
    type: string
    sql: ${TABLE}.title_color ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name,
      history.count
    ]
  }
}
