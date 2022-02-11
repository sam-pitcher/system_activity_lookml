view: group {
  sql_table_name: `looker-ps-emea-consultants.system_activity.group`
    ;;

  dimension: group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

}
