view: role {
  sql_table_name: `looker-ps-emea-consultants.system_activity.role`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: built_in {
    type: string
    sql: ${TABLE}.built_in ;;
  }

  dimension: embed {
    type: string
    sql: ${TABLE}.embed ;;
  }

  dimension: model_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.model_set_id ;;
  }

  dimension: models {
    type: string
    sql: ${TABLE}.models ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: permission_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.permission_set_id ;;
  }

  dimension: permissions {
    type: string
    sql: ${TABLE}.permissions ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      permission_set.name,
      permission_set.id,
      model_set.name,
      model_set.id,
      user_facts_role.count
    ]
  }
}
