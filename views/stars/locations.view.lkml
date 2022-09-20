view: locations {
  sql_table_name: stars.locations ;;
  drill_fields: [prior_state_location_id]

  dimension: prior_state_location_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Prior_State_Location_ID ;;
  }

  dimension: alternative_school_indicator {
    type: string
    sql: ${TABLE}.Alternative_School_Indicator ;;
  }

  dimension: ayp_additional_indicator_type {
    type: string
    sql: ${TABLE}.AYP_Additional_Indicator_Type ;;
  }

  dimension: ayp_grade_level_range {
    type: string
    sql: ${TABLE}.AYP_Grade_Level_Range ;;
  }

  dimension: boarding_school_indicator {
    type: string
    sql: ${TABLE}.Boarding_School_Indicator ;;
  }

  dimension: charter_school {
    type: string
    sql: ${TABLE}.Charter_School ;;
  }

  dimension: charter_school_code {
    type: string
    sql: ${TABLE}.Charter_School_Code ;;
  }

  dimension: common_location_name {
    type: string
    sql: ${TABLE}.Common_Location_Name ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.District_Code ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: full_location_name {
    type: string
    sql: ${TABLE}.Full_Location_Name ;;
  }

  dimension: grade_level_range {
    type: string
    sql: ${TABLE}.Grade_Level_Range ;;
  }

  dimension: loc_county_name {
    type: string
    sql: ${TABLE}.Loc_County_Name ;;
  }

  dimension: location_address_1 {
    type: string
    sql: ${TABLE}.Location_Address_1 ;;
  }

  dimension: location_address_2 {
    type: string
    sql: ${TABLE}.Location_Address_2 ;;
  }

  dimension: location_address_city {
    type: string
    sql: ${TABLE}.Location_Address_City ;;
  }

  dimension: location_address_state_code {
    type: string
    sql: ${TABLE}.Location_Address_State_Code ;;
  }

  dimension: location_address_zip_code {
    type: string
    sql: ${TABLE}.Location_Address_Zip_Code ;;
  }

  dimension: location_administrator_email_address {
    type: string
    sql: ${TABLE}.Location_Administrator_Email_Address ;;
  }

  dimension: location_administrator_first_name {
    type: string
    sql: ${TABLE}.Location_Administrator_First_Name ;;
  }

  dimension: location_administrator_last_name {
    type: string
    sql: ${TABLE}.Location_Administrator_Last_Name ;;
  }

  dimension: location_administrator_name {
    type: string
    sql: ${TABLE}.Location_Administrator_Name ;;
  }

  dimension: location_administrator_position_title {
    type: string
    sql: ${TABLE}.Location_Administrator_Position_Title ;;
  }

  dimension_group: location_close {
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
    sql: ${TABLE}.Location_Close_Date ;;
  }

  dimension: location_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: location_key {
    type: number
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension: location_latitude {
    type: string
    sql: ${TABLE}.Location_Latitude ;;
  }

  dimension: location_legal_name {
    type: string
    sql: ${TABLE}.Location_Legal_Name ;;
  }

  dimension: location_locale {
    type: string
    sql: ${TABLE}.Location_Locale ;;
  }

  dimension: location_locale_code {
    type: string
    sql: ${TABLE}.Location_Locale_Code ;;
  }

  dimension: location_longitude {
    type: string
    sql: ${TABLE}.Location_Longitude ;;
  }

  dimension: location_mailing_address_1 {
    type: string
    sql: ${TABLE}.Location_Mailing_Address_1 ;;
  }

  dimension: location_mailing_city {
    type: string
    sql: ${TABLE}.Location_Mailing_City ;;
  }

  dimension: location_mailing_state_code {
    type: string
    sql: ${TABLE}.Location_Mailing_State_Code ;;
  }

  dimension: location_mailing_state_name {
    type: string
    sql: ${TABLE}.Location_Mailing_State_Name ;;
  }

  dimension: location_mailing_zip_code {
    type: string
    sql: ${TABLE}.Location_Mailing_Zip_Code ;;
  }

  dimension: location_main_phone_number {
    type: string
    sql: ${TABLE}.Location_Main_Phone_Number ;;
  }

  dimension: location_name_long {
    type: string
    sql: ${TABLE}.Location_Name_Long ;;
  }

  dimension_group: location_open {
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
    sql: ${TABLE}.Location_Open_Date ;;
  }

  dimension: location_organization_subtype {
    type: string
    sql: ${TABLE}.Location_Organization_Subtype ;;
  }

  dimension: location_organization_type_code {
    type: string
    sql: ${TABLE}.Location_Organization_Type_Code ;;
  }

  dimension: location_state_name {
    type: string
    sql: ${TABLE}.Location_State_Name ;;
  }

  dimension: location_status {
    type: string
    sql: ${TABLE}.Location_Status ;;
  }

  dimension_group: location_status {
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
    sql: ${TABLE}.Location_Status_Date ;;
  }

  dimension: location_street_address {
    type: string
    sql: ${TABLE}.Location_Street_Address ;;
  }

  dimension: location_web_site {
    type: string
    sql: ${TABLE}.Location_Web_Site ;;
  }

  dimension: lunch_program {
    type: string
    sql: ${TABLE}.Lunch_Program ;;
  }

  dimension: lunch_program_code {
    type: string
    sql: ${TABLE}.Lunch_Program_Code ;;
  }

  dimension: magnet_school {
    type: string
    sql: ${TABLE}.Magnet_School ;;
  }

  dimension: magnet_school_code {
    type: string
    sql: ${TABLE}.Magnet_School_Code ;;
  }

  dimension: math_proficiency_target_code {
    type: string
    sql: ${TABLE}.Math_Proficiency_Target_Code ;;
  }

  dimension_group: modified_date_location_year {
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
    sql: ${TABLE}.modified_date_LOCATION_YEAR ;;
  }

  dimension: nces_school_id {
    type: string
    sql: ${TABLE}.NCES_School_ID ;;
  }

  dimension: period_key {
    type: number
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: persistently_dangerous_status {
    type: string
    sql: ${TABLE}.Persistently_Dangerous_Status ;;
  }

  dimension: persistently_dangerous_status_code {
    type: string
    sql: ${TABLE}.Persistently_Dangerous_Status_Code ;;
  }

  dimension: poverty_level {
    type: number
    sql: ${TABLE}.Poverty_Level ;;
  }

  dimension: prior_state_district_id {
    type: string
    sql: ${TABLE}.Prior_State_District_ID ;;
  }

  dimension: school_category {
    type: string
    sql: ${TABLE}.School_Category ;;
  }

  dimension: school_category_code {
    type: string
    sql: ${TABLE}.School_Category_Code ;;
  }

  dimension: school_level {
    type: string
    sql: ${TABLE}.School_Level ;;
  }

  dimension: school_level_code {
    type: string
    sql: ${TABLE}.School_Level_Code ;;
  }

  dimension: school_year {
    type: date
    sql: ${TABLE}.School_Year ;;
  }

  dimension: state_location_id {
    type: string
    sql: ${TABLE}.State_Location_ID ;;
  }

  dimension: title_i_location_category {
    type: string
    sql: ${TABLE}.Title_I_Location_Category ;;
  }

  dimension: title_i_location_status {
    type: string
    sql: ${TABLE}.Title_I_Location_Status ;;
  }

  dimension: title_i_location_status_code {
    type: string
    sql: ${TABLE}.Title_I_Location_Status_Code ;;
  }

  dimension: virtual_location {
    type: string
    sql: ${TABLE}.Virtual_Location ;;
  }

  dimension: virtual_location_code {
    type: string
    sql: ${TABLE}.Virtual_Location_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      prior_state_location_id,
      location_legal_name,
      full_location_name,
      common_location_name,
      loc_county_name,
      location_administrator_first_name,
      location_administrator_last_name,
      location_administrator_name,
      location_mailing_state_name,
      location_state_name,
      locations.location_legal_name,
      locations.full_location_name,
      locations.common_location_name,
      locations.loc_county_name,
      locations.location_administrator_first_name,
      locations.location_administrator_last_name,
      locations.location_administrator_name,
      locations.location_mailing_state_name,
      locations.location_state_name,
      locations.prior_state_location_id,
      course_instruct_staff_student_snapshot.count,
      locations.count,
      staff_assignment_snapshot.count
    ]
  }
}
