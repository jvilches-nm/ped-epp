view: districts_extension {
  sql_table_name: dbo.districts_extension ;;

  dimension: cte_priorities {
    type: string
    sql: ${TABLE}.cte_priorities ;;
  }

  dimension: cte_region {
    type: string
    sql: ${TABLE}.cte_region ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.district_code ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }

  dimension: ied_focus {
    type: string
    sql: ${TABLE}.ied_focus ;;
  }

  dimension: my_focus {
    type: string
    sql: ${TABLE}.my_focus ;;
  }

  dimension: rea_district_code {
    type: number
    sql: ${TABLE}.rea_district_code ;;
  }

  measure: count {
    type: count
    drill_fields: [district_name]
  }
}
