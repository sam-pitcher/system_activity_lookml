view: permission_set {
  sql_table_name: `looker-ps-emea-consultants.system_activity.permission_set`
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: permissions {
    type: string
    sql: ${TABLE}.permissions ;;
  }

  dimension: unlimited {
    type: string
    sql: ${TABLE}.unlimited ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, role.count]
  }
}
