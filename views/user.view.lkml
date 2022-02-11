view: user {
  sql_table_name: `looker-ps-emea-consultants.system_activity.user`
    ;;
  drill_fields: [dev_mode_user_id]

  dimension: dev_mode_user_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.dev_mode_user_id ;;
  }

  dimension: auto_provisioned_api_user {
    type: string
    sql: ${TABLE}.auto_provisioned_api_user ;;
  }

  dimension: browser_count {
    type: string
    sql: ${TABLE}.browser_count ;;
  }

  dimension: chat_disabled {
    type: string
    sql: ${TABLE}.chat_disabled ;;
  }

  dimension: chat_popover {
    type: string
    sql: ${TABLE}.chat_popover ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: dev_branch_name {
    type: string
    sql: ${TABLE}.dev_branch_name ;;
  }

  dimension: dev_mode {
    type: string
    sql: ${TABLE}.dev_mode ;;
  }

  dimension: editor_keybinding_mode {
    type: string
    sql: ${TABLE}.editor_keybinding_mode ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: eula_accepted {
    type: string
    sql: ${TABLE}.eula_accepted ;;
  }

  dimension: eula_accepted_time {
    type: string
    sql: ${TABLE}.eula_accepted_time ;;
  }

  dimension: eula_accepted_version {
    type: string
    sql: ${TABLE}.eula_accepted_version ;;
  }

  dimension: external_avatar_url {
    type: string
    sql: ${TABLE}.external_avatar_url ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: home_space_id {
    type: string
    sql: ${TABLE}.home_space_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_admin {
    type: string
    sql: ${TABLE}.is_admin ;;
  }

  dimension: is_disabled {
    type: string
    sql: ${TABLE}.is_disabled ;;
  }

  dimension: is_looker_employee {
    type: string
    sql: ${TABLE}.is_looker_employee ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: marketing_email_updates {
    type: string
    sql: ${TABLE}.marketing_email_updates ;;
  }

  dimension: models {
    type: string
    sql: ${TABLE}.models ;;
  }

  dimension: models_dir {
    type: string
    sql: ${TABLE}.models_dir ;;
  }

  dimension: models_dir_validated {
    type: string
    sql: ${TABLE}.models_dir_validated ;;
  }

  dimension: outgoing_access_token_id {
    type: string
    sql: ${TABLE}.outgoing_access_token_id ;;
  }

  dimension: prev_permissions {
    type: string
    sql: ${TABLE}.prev_permissions ;;
  }

  dimension: release_email_updates {
    type: string
    sql: ${TABLE}.release_email_updates ;;
  }

  dimension: requires_email_verification {
    type: string
    sql: ${TABLE}.requires_email_verification ;;
  }

  dimension: sticky_workspace_id {
    type: string
    sql: ${TABLE}.sticky_workspace_id ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: tokens_invalid_before {
    type: string
    sql: ${TABLE}.tokens_invalid_before ;;
  }

  dimension: ui_state {
    type: string
    sql: ${TABLE}.ui_state ;;
  }

  dimension: version_set_id {
    type: number
    sql: ${TABLE}.version_set_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      dev_mode_user_id,
      first_name,
      last_name,
      dev_branch_name,
      look.count,
      dashboard.count,
      group_user.count,
      history.count
    ]
  }
}
