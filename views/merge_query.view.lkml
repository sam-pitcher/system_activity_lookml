view: merge_query {
  sql_table_name: `looker-ps-emea-consultants.system_activity.merge_query`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: column_limit {
    type: string
    sql: ${TABLE}.column_limit ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: dynamic_fields {
    type: string
    sql: ${TABLE}.dynamic_fields ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.`hash` ;;
  }

  dimension: pivots {
    type: string
    sql: ${TABLE}.pivots ;;
  }

  dimension: sorts {
    type: string
    sql: ${TABLE}.sorts ;;
  }

  dimension: total {
    type: string
    sql: ${TABLE}.total ;;
  }

  dimension: vis_config {
    type: string
    sql: ${TABLE}.vis_config ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
