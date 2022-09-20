view: period {
  derived_table: {
    sql: select period_key, period_level, school_year, report_school_year, period_start_date, sort_seq from stars.period where district_key='35000999' and marking_period in ('40D', '80D', '120D', 'EOY');;
    persist_for: "24 hours"
    indexes: ["school_year", "period_start_date"]
  }

  dimension: period_key {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: snapshot_period {
    type: string
    description: "Snapshot period: 40D / 80D / 120D / EOY"
    order_by_field: sort_seq
    sql: ${TABLE}.PERIOD_LEVEL ;;
  }

  dimension_group: period_start {
    type: time
    description: "Start date of the period"
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PERIOD_START_DATE ;;
  }

  dimension: school_year {
    type: string
    description: "The two calendar years that the school year spans."
    sql: ${TABLE}.REPORT_SCHOOL_YEAR ;;
  }

  dimension_group: school_year_end {
    type: time
    description: "Last day of the school year"
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: sort_seq {
    type: number
    hidden: yes
    sql: ${TABLE}.SORT_SEQ ;;
  }

}
