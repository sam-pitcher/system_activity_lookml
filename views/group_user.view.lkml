view: group_user {
  sql_table_name: `looker-ps-emea-consultants.system_activity.group_user`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: from_group_id {
    type: number
    sql: ${TABLE}.from_group_id ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: cast(${TABLE}.user_id as int64) ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.first_name, user.last_name, user.dev_mode_user_id, user.dev_branch_name]
  }
}
