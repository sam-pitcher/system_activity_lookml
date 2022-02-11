view: node {
  sql_table_name: `looker-ps-emea-consultants.system_activity.node`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cache_port {
    type: string
    sql: ${TABLE}.cache_port ;;
  }

  dimension: clustered {
    type: string
    sql: ${TABLE}.clustered ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: is_master {
    type: string
    sql: ${TABLE}.is_master ;;
  }

  dimension: last_heartbeat {
    type: string
    sql: ${TABLE}.last_heartbeat ;;
  }

  dimension: mac_adress {
    type: string
    sql: ${TABLE}.mac_adress ;;
  }

  dimension: new_secret {
    type: string
    sql: ${TABLE}.new_secret ;;
  }

  dimension: node_cluster_version {
    type: number
    sql: ${TABLE}.node_cluster_version ;;
  }

  dimension: node_to_node_port {
    type: string
    sql: ${TABLE}.node_to_node_port ;;
  }

  dimension: old_secret {
    type: string
    sql: ${TABLE}.old_secret ;;
  }

  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }

  dimension: prev_node_id {
    type: number
    sql: ${TABLE}.prev_node_id ;;
  }

  dimension: queue_broker_port {
    type: string
    sql: ${TABLE}.queue_broker_port ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [id, hostname, history.count]
  }
}
