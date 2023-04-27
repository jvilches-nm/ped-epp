view: staff_snapshot {
  sql_table_name: stars.staff_snapshot ;;

  dimension: alt_contract_days {
    type: number
    sql: ${TABLE}.ALT_CONTRACT_DAYS ;;
  }

  dimension: baccalaureate_degree_institution {
    type: string
    sql: ${TABLE}.Baccalaureate_Degree_Institution ;;
  }

  dimension: baccalaureate_degree_institution_code {
    type: string
    sql: ${TABLE}.Baccalaureate_Degree_Institution_Code ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension_group: curr_svc {
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
    sql: ${TABLE}.CURR_SVC_DATE ;;
  }

  dimension: degree_earned {
    type: string
    sql: ${TABLE}.DEGREE_EARNED ;;
  }

  dimension: degree_earned_code {
    type: string
    sql: ${TABLE}.DEGREE_EARNED_CODE ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: emp_elig_verification {
    type: string
    sql: ${TABLE}.EMP_ELIG_VERIFICATION ;;
  }

  dimension: emp_elig_verify_cd {
    type: string
    sql: ${TABLE}.EMP_ELIG_VERIFY_CD ;;
  }

  dimension: ethnic_code {
    type: string
    sql: ${TABLE}.ETHNIC_CODE ;;
  }

  dimension: ethnic_desc {
    type: string
    sql: ${TABLE}.ETHNIC_DESC ;;
  }

  dimension_group: exit {
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
    sql: ${TABLE}.EXIT_DATE ;;
  }

  dimension: highest_degree_institution {
    type: string
    sql: ${TABLE}.Highest_Degree_Institution ;;
  }

  dimension: highest_degree_institution_code {
    type: string
    sql: ${TABLE}.Highest_Degree_Institution_Code ;;
  }

  dimension: hispanic_ind {
    type: string
    sql: ${TABLE}.HISPANIC_IND ;;
  }

  dimension: level_aggr {
    type: string
    sql: ${TABLE}.LEVEL_AGGR ;;
  }

  dimension: local_contract {
    type: string
    label: "National Board Certified"
    sql: case ${TABLE}.LOCAL_CONTRACT when 'Yes' then 'Yes' when 'y' then 'Yes' else 'No' end ;;
  }

  dimension: location_key {
    type: number
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.MODIFIED_DATE ;;
  }

  dimension: modified_indicator {
    type: string
    sql: ${TABLE}.MODIFIED_INDICATOR ;;
  }

  dimension: multiracial_ind {
    type: string
    sql: ${TABLE}.MULTIRACIAL_IND ;;
  }

  dimension_group: orig_hire {
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
    sql: ${TABLE}.ORIG_HIRE_DATE ;;
  }

  dimension: pay_step_level {
    type: number
    sql: ${TABLE}.PAY_STEP_LEVEL ;;
  }

  dimension: period_key {
    type: number
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: plan_execution_id {
    type: number
    sql: ${TABLE}.PLAN_EXECUTION_ID ;;
  }

  dimension: primary_loc_cd {
    type: string
    sql: ${TABLE}.PRIMARY_LOC_CD ;;
  }

  dimension: primary_loc_nm {
    type: string
    sql: ${TABLE}.PRIMARY_LOC_NM ;;
  }

  dimension: qualification_stat {
    type: string
    sql: ${TABLE}.QUALIFICATION_STAT ;;
  }

  dimension: race1_code {
    type: string
    sql: ${TABLE}.RACE1_CODE ;;
  }

  dimension: race1_long_desc {
    type: string
    sql: ${TABLE}.RACE1_LONG_DESC ;;
  }

  dimension: race2_code {
    type: string
    sql: ${TABLE}.RACE2_CODE ;;
  }

  dimension: race2_long_desc {
    type: string
    sql: ${TABLE}.RACE2_LONG_DESC ;;
  }

  dimension: race3_code {
    type: string
    sql: ${TABLE}.RACE3_CODE ;;
  }

  dimension: race3_long_desc {
    type: string
    sql: ${TABLE}.RACE3_LONG_DESC ;;
  }

  dimension: race4_code {
    type: string
    sql: ${TABLE}.RACE4_CODE ;;
  }

  dimension: race4_long_desc {
    type: string
    sql: ${TABLE}.RACE4_LONG_DESC ;;
  }

  dimension: race5_code {
    type: string
    sql: ${TABLE}.RACE5_CODE ;;
  }

  dimension: race5_long_desc {
    type: string
    sql: ${TABLE}.RACE5_LONG_DESC ;;
  }

  dimension: row_indicator {
    type: string
    sql: ${TABLE}.ROW_INDICATOR ;;
  }

  dimension: rptg_race_ethnicity_desc {
    type: string
    sql: ${TABLE}.RPTG_RACE_ETHNICITY_DESC ;;
  }

  dimension: school_year {
    type: date
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}.SNAPSHOT_DATE ;;
  }

  dimension: staff_base_zip {
    type: string
    sql: ${TABLE}.STAFF_BASE_ZIP ;;
  }

  dimension_group: staff_birthdate {
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
    sql: ${TABLE}.STAFF_BIRTHDATE ;;
  }

  dimension: staff_city {
    type: string
    sql: ${TABLE}.STAFF_CITY ;;
  }

  dimension: staff_email_addr {
    type: string
    sql: ${TABLE}.STAFF_EMAIL_ADDR ;;
  }

  dimension: staff_first_nm {
    type: string
    sql: ${TABLE}.STAFF_FIRST_NM ;;
  }

  dimension: staff_gender {
    type: string
    sql: ${TABLE}.STAFF_GENDER ;;
  }

  dimension: staff_gender_code {
    type: string
    sql: ${TABLE}.STAFF_GENDER_CODE ;;
  }

  dimension: staff_id {
    type: string
    sql: ${TABLE}.STAFF_ID ;;
  }

  dimension: staff_key {
    type: number
    sql: ${TABLE}.STAFF_KEY ;;
  }

  dimension: staff_id_last_five {
    type: string
    sql: RIGHT(${TABLE}.STAFF_ID, 5) ;;
  }

  dimension: staff_last_nm {
    type: string
    sql: ${TABLE}.STAFF_LAST_NM ;;
  }

  dimension: staff_mid_init {
    type: string
    sql: ${TABLE}.STAFF_MID_INIT ;;
  }

  dimension: staff_name {
    type: string
    sql: ${TABLE}.STAFF_NAME ;;
  }

  dimension: staff_qualif_desc {
    type: string
    sql: ${TABLE}.STAFF_QUALIF_DESC ;;
  }

  dimension: staff_snapshot_key {
    type: number
    sql: ${TABLE}.STAFF_SNAPSHOT_KEY ;;
  }

  dimension: staff_state {
    type: string
    sql: ${TABLE}.STAFF_STATE ;;
  }

  dimension: subgroup_code {
    type: string
    sql: ${TABLE}.SUBGROUP_CODE ;;
  }

  dimension: subgroup_long_desc {
    type: string
    sql: ${TABLE}.SUBGROUP_LONG_DESC ;;
  }

  dimension: supervisor {
    type: string
    sql: ${TABLE}.SUPERVISOR ;;
  }

  dimension_group: tenure {
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
    sql: ${TABLE}.TENURE_DATE ;;
  }

  dimension: termination_code {
    type: string
    sql: ${TABLE}.TERMINATION_CODE ;;
  }

  dimension: termination_desc {
    type: string
    sql: ${TABLE}.TERMINATION_DESC ;;
  }

  dimension: tot_annual_salary {
    type: number
    sql: ${TABLE}.TOT_ANNUAL_SALARY ;;
  }

  dimension: years_district {
    type: number
    sql: ${TABLE}.YEARS_DISTRICT ;;
  }

  dimension: years_service {
    type: number
    sql: ${TABLE}.YEARS_SERVICE ;;
  }

  measure: count {
    type: count
    drill_fields: [staff_name]
  }
}
