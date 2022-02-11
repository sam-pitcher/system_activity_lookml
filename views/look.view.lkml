view: look {
  sql_table_name: `looker-ps-emea-consultants.system_activity.look`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: content_metadata_id {
    type: number
    sql: ${TABLE}.content_metadata_id ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
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

  dimension: indexed_at {
    type: string
    sql: ${TABLE}.indexed_at ;;
  }

  dimension: is_run_on_load {
    type: string
    sql: ${TABLE}.is_run_on_load ;;
  }

  dimension: last_updater_id {
    type: number
    sql: ${TABLE}.last_updater_id ;;
  }

  dimension: public {
    type: string
    sql: ${TABLE}.public ;;
  }

  dimension: public_slug {
    type: string
    sql: ${TABLE}.public_slug ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.query_id ;;
  }

  dimension: space_id {
    type: number
    sql: ${TABLE}.space_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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
      query.id,
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name,
      history.count
    ]
  }
}
