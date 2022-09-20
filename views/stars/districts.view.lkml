view: districts {
  sql_table_name: stars.districts ;;
  drill_fields: [nces_district_id]

  dimension: nces_district_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.NCES_District_ID ;;
  }

  dimension: charter_status {
    type: string
    sql: ${TABLE}.Charter_Status ;;
  }

  dimension: charter_status_code {
    type: string
    sql: ${TABLE}.Charter_Status_Code ;;
  }

  dimension: district_agency_type {
    type: string
    sql: ${TABLE}.District_Agency_Type ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.District_Code ;;
  }

  dimension: district_county_name {
    type: string
    sql: ${TABLE}.District_County_Name ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: district_legal_name {
    type: string
    sql: ${TABLE}.District_Legal_Name ;;
  }

  dimension: district_locale {
    type: string
    sql: ${TABLE}.District_Locale ;;
  }

  dimension: district_locale_code {
    type: string
    sql: ${TABLE}.District_Locale_Code ;;
  }

  dimension: district_location_address_1 {
    type: string
    sql: ${TABLE}.District_Location_Address_1 ;;
  }

  dimension: district_location_city {
    type: string
    sql: ${TABLE}.District_Location_City ;;
  }

  dimension: district_location_state_code {
    type: string
    sql: ${TABLE}.District_Location_State_Code ;;
  }

  dimension: district_location_state_name {
    type: string
    sql: ${TABLE}.District_Location_State_Name ;;
  }

  dimension: district_location_zip_code {
    type: string
    sql: ${TABLE}.District_Location_Zip_Code ;;
  }

  dimension: district_mailing_address_1 {
    type: string
    sql: ${TABLE}.District_Mailing_Address_1 ;;
  }

  dimension: district_mailing_city {
    type: string
    sql: ${TABLE}.District_Mailing_City ;;
  }

  dimension: district_mailing_state_code {
    type: string
    sql: ${TABLE}.District_Mailing_State_Code ;;
  }

  dimension: district_mailing_state_name {
    type: string
    sql: ${TABLE}.District_Mailing_State_Name ;;
  }

  dimension: district_mailing_zip_code {
    type: string
    sql: ${TABLE}.District_Mailing_Zip_Code ;;
  }

  dimension: district_main_phone_number {
    type: string
    sql: ${TABLE}.District_Main_Phone_Number ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.District_Name ;;
  }

  dimension: district_operational_status {
    type: string
    sql: ${TABLE}.District_Operational_Status ;;
  }

  dimension: district_operational_status_code {
    type: string
    sql: ${TABLE}.District_Operational_Status_Code ;;
  }

  dimension: district_organization_type {
    type: string
    sql: ${TABLE}.District_Organization_Type ;;
  }

  dimension: district_street_address {
    type: string
    sql: ${TABLE}.District_Street_Address ;;
  }

  dimension: full_district_name {
    type: string
    sql: ${TABLE}.Full_District_Name ;;
  }

  dimension: location_key {
    type: number
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension_group: modified_date_district_year {
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
    sql: ${TABLE}.modified_date_DISTRICT_YEAR ;;
  }

  dimension: modified_indicator_district_year {
    type: string
    sql: ${TABLE}.modified_indicator_DISTRICT_YEAR ;;
  }

  dimension: period_key {
    type: number
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: school_year {
    type: date
    sql: ${TABLE}.School_Year ;;
  }

  dimension: state_district_code {
    type: string
    sql: ${TABLE}.State_District_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      nces_district_id,
      district_name,
      full_district_name,
      district_legal_name,
      district_county_name,
      district_location_state_name,
      district_mailing_state_name
    ]
  }
}
