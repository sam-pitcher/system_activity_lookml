view: result_maker {
  sql_table_name: `looker-ps-emea-consultants.system_activity.result_maker`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: merge_query_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.merge_query_id ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.query_id ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: sql_query_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.sql_query_id ;;
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
      sql_query.model_name,
      sql_query.id,
      merge_query.id,
      history.count
    ]
  }
}
