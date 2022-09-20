view: epp_completers {
  sql_table_name: epp.epp_completers ;;

  dimension_group: birthdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Birthdate ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: graduation {
    type: string
    sql: ${TABLE}.graduation ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: license {
    type: string
    sql: ${TABLE}.license ;;
  }

  dimension: middle_initial {
    type: string
    sql: ${TABLE}.middle_initial ;;
  }

  dimension: program_area {
    type: string
    sql: ${TABLE}.program_area ;;
  }

  dimension: program_type {
    type: string
    sql: ${TABLE}.program_type ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.race ;;
  }

  dimension: staff_id_last_five {
    type: string
    sql: ${TABLE}.staff_id_last_five ;;
  }

  dimension: university {
    type: string
    sql: ${TABLE}.University ;;
  }

  dimension: university_id {
    type: string
    sql: ${TABLE}.university_id ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
