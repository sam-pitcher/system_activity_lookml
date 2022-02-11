connection: "looker-ps-emea-consultants"

include: "/views/*.view.lkml"

label: "Sys"

explore: history {
  access_filter: {
    field: group.group_name
    user_attribute: group_name
  }
  # persist_with: system_activity_dashboards_datagroup
  join: dashboard {
    type: left_outer
    sql_on:
      {% if _dialect._name == 'hypersql' or _dialect._name == 'bigquery_standard_sql' %}
        ${history.dashboard_id_as_number}
      {% else %}
        ${history.dashboard_id}
      {% endif %}
      = ${dashboard.id} ;;
    # fields: [history_detail*]
    relationship: many_to_one
  }
  # join: dashboard_creator {
  #   fields: [dashboard_creator.name]
  #   from: user
  #   sql_on: ${dashboard.user_id} = ${dashboard_creator.id};;
  #   relationship: one_to_many
  # }
  join: group_user {
    relationship: one_to_many
    sql_on: ${user.id} = ${group_user.user_id};;
    # fields: []
  }
  join: group {
    relationship: one_to_many
    sql_on: ${group.group_id} = ${group_user.group_id};;
  }
  join: look {
    type: left_outer
    sql_on: ${history.look_id} = ${look.id} ;;
    relationship: many_to_one
  }
  join: query {
    type: left_outer
    sql_on: ${history.query_id} = ${query.id} ;;
    relationship: many_to_one
  }
  join: result_maker {
    foreign_key: history.result_maker_id
  }
  join: merge_query {
    foreign_key: result_maker.merge_query_id
  }
  join: merge_query_source_query {
    type: left_outer
    sql_on: ${merge_query.id} = ${merge_query_source_query.merge_query_id} ;;
    relationship: many_to_many
  }
  join: source_query {
    from: query
    foreign_key: merge_query_source_query.query_id
  }
  join: sql_query {
    type: left_outer
    sql_on: ${history.sql_query_id} = ${sql_query.id} ;;
    relationship: many_to_one
  }
  join: user {
    type: left_outer
    sql_on: ${history.user_id}  = ${user.id} ;;
    relationship: many_to_one
  }
  join: user_facts {
    type: left_outer
    sql_on: ${history.user_id} = ${user_facts.user_id} ;;
    relationship: many_to_one
  }
  join: user_facts_role {
    type: left_outer
    sql_on: ${user.id} = ${user_facts_role.user_id} ;;
    relationship: many_to_many
    fields: []
  }
  join: role {
    view_label: "User Role (updated hourly)"
    type: left_outer
    sql_on: ${user_facts_role.role_id} = ${role.id} ;;
    relationship: many_to_many
  }
  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }
  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }
  join: node {
    type: left_outer
    sql_on: ${history.node_id} = ${node.id} ;;
    relationship: many_to_one
  }
  # join: source_query_rank {
  #   type: left_outer
  #   sql_on: ${history.source} = ${source_query_rank.sorted_source} ;;
  #   relationship: many_to_many
  # }
  # join: user_query_rank {
  #   type: left_outer
  #   sql_on: ${user_query_rank.user_name} = ${user.name} ;;
  #   relationship: many_to_many
  # }
}
