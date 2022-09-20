view: course_instruct_staff_student_snapshot {
  sql_table_name: stars.course_instruct_staff_student_snapshot ;;

  dimension: advanced_course {
    type: string
    sql: ${TABLE}."Advanced Course" ;;
  }

  dimension: advanced_indicator {
    type: string
    sql: ${TABLE}."Advanced Indicator" ;;
  }

  dimension: advanced_placement_course {
    type: string
    sql: ${TABLE}."Advanced Placement Course" ;;
  }

  dimension: advanced_placement_indicator {
    type: string
    sql: ${TABLE}."Advanced Placement Indicator" ;;
  }

  dimension: allowable_course_gender {
    type: string
    sql: ${TABLE}."Allowable Course Gender" ;;
  }

  dimension: alternate_course_id {
    type: string
    sql: ${TABLE}."Alternate Course ID" ;;
  }

  dimension: alternate_credit_course_key {
    type: number
    sql: ${TABLE}."ALTERNATE CREDIT COURSE KEY" ;;
  }

  dimension: alternate_instruction_language {
    type: string
    sql: ${TABLE}."Alternate Instruction Language" ;;
  }

  dimension: alternate_instruction_language_code {
    type: string
    sql: ${TABLE}."Alternate Instruction Language Code" ;;
  }

  dimension: basic_indicator {
    type: string
    sql: ${TABLE}."Basic Indicator" ;;
  }

  dimension: bilingual_course {
    type: string
    sql: ${TABLE}."Bilingual Course" ;;
  }

  dimension: capstone_course {
    type: string
    sql: ${TABLE}."Capstone Course" ;;
  }

  dimension: career_and_technical_education_course {
    type: string
    sql: ${TABLE}."Career and Technical Education Course" ;;
  }

  dimension: career_tech_indicator {
    type: string
    sql: ${TABLE}."Career Tech Indicator" ;;
  }

  dimension: ci_course_special_program {
    type: string
    sql: ${TABLE}."CI Course Special Program" ;;
  }

  dimension: ci_course_special_program_code {
    type: string
    sql: ${TABLE}."CI Course Special Program Code" ;;
  }

  dimension: class_period {
    type: string
    sql: ${TABLE}."Class Period" ;;
  }

  dimension: college_level_course {
    type: string
    sql: ${TABLE}."College Level Course" ;;
  }

  dimension: core_course {
    type: string
    sql: ${TABLE}."Core Course" ;;
  }

  dimension: course_content_key {
    type: number
    sql: ${TABLE}."COURSE CONTENT KEY" ;;
  }

  dimension_group: course_enrollment_effective {
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
    sql: ${TABLE}."Course Enrollment Effective Date" ;;
  }

  dimension: course_id {
    type: string
    sql: ${TABLE}."Course ID" ;;
  }

  dimension: course_instructor_snapshot_key {
    type: number
    sql: ${TABLE}."COURSE INSTRUCTOR SNAPSHOT KEY" ;;
  }

  dimension: course_instructor_snapshot_key_ce {
    type: number
    sql: ${TABLE}."COURSE INSTRUCTOR SNAPSHOT KEY CE" ;;
  }

  dimension: course_key {
    type: number
    sql: ${TABLE}."COURSE KEY" ;;
  }

  dimension: course_maximum_grade_level {
    type: string
    sql: ${TABLE}."Course Maximum Grade Level" ;;
  }

  dimension: course_maximum_grade_level_code {
    type: string
    sql: ${TABLE}."Course Maximum Grade Level Code" ;;
  }

  dimension: course_maximum_grade_level_order {
    type: number
    sql: ${TABLE}."Course Maximum Grade Level Order" ;;
  }

  dimension: course_minimum_grade_level {
    type: string
    sql: ${TABLE}."Course Minimum Grade Level" ;;
  }

  dimension: course_minimum_grade_level_code {
    type: string
    sql: ${TABLE}."Course Minimum Grade Level Code" ;;
  }

  dimension: course_minimum_grade_level_order {
    type: number
    sql: ${TABLE}."Course Minimum Grade Level Order" ;;
  }

  dimension: course_non_traditional_gender {
    type: string
    sql: ${TABLE}."Course Non Traditional Gender" ;;
  }

  dimension: course_non_traditional_gender_code {
    type: string
    sql: ${TABLE}."Course Non Traditional Gender Code" ;;
  }

  dimension: course_section_number {
    type: string
    sql: ${TABLE}."Course Section Number" ;;
  }

  dimension: course_sequence_number {
    type: number
    sql: ${TABLE}."Course Sequence Number" ;;
  }

  dimension: course_special_program {
    type: string
    sql: ${TABLE}."Course Special Program" ;;
  }

  dimension: course_special_program_code {
    type: string
    sql: ${TABLE}."Course Special Program Code" ;;
  }

  dimension: course_subject_area {
    type: string
    sql: ${TABLE}."Course Subject Area" ;;
  }

  dimension: course_subject_area_code {
    type: string
    sql: ${TABLE}."Course Subject Area Code" ;;
  }

  dimension: date_description {
    type: string
    sql: ${TABLE}."Date Description" ;;
  }

  dimension: delivery_model_key_ce {
    type: number
    sql: ${TABLE}."DELIVERY MODEL KEY CE" ;;
  }

  dimension: distance_learning_course {
    type: string
    sql: ${TABLE}."Distance Learning Course" ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}."DISTRICT KEY" ;;
  }

  dimension: dual_credit_course {
    type: string
    sql: ${TABLE}."Dual Credit Course" ;;
  }

  dimension: elective_indicator {
    type: string
    sql: ${TABLE}."Elective Indicator" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."End Date" ;;
  }

  dimension: enrollment_key {
    type: number
    sql: ${TABLE}."ENROLLMENT KEY" ;;
  }

  dimension: exclude_from_evaluation_indicator {
    type: string
    sql: ${TABLE}."Exclude From Evaluation Indicator" ;;
  }

  dimension: full_course_name {
    type: string
    sql: ${TABLE}."Full Course Name" ;;
  }

  dimension: gifted_indicator {
    type: string
    sql: ${TABLE}."Gifted Indicator" ;;
  }

  dimension: honors_indicator {
    type: string
    sql: ${TABLE}."Honors Indicator" ;;
  }

  dimension: ib_course {
    type: string
    sql: ${TABLE}."IB Course" ;;
  }

  dimension: international_baccalaureate_indicator {
    type: string
    sql: ${TABLE}."International Baccalaureate Indicator" ;;
  }

  dimension: lab_component_indicator {
    type: string
    sql: ${TABLE}."Lab Component Indicator" ;;
  }

  dimension: location_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."Location ID" ;;
  }

  dimension: location_key {
    type: number
    sql: ${TABLE}."LOCATION KEY" ;;
  }

  dimension: long_course_description {
    type: string
    sql: ${TABLE}."Long Course Description" ;;
  }

  dimension: marking_period {
    type: string
    sql: ${TABLE}."Marking Period" ;;
  }

  dimension: marking_period_number {
    type: number
    sql: ${TABLE}."Marking Period Number" ;;
  }

  dimension_group: modified_date_course {
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
    sql: ${TABLE}."modified date COURSE" ;;
  }

  dimension_group: modified_date_course_enroll {
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
    sql: ${TABLE}."modified date COURSE_ENROLL" ;;
  }

  dimension_group: modified_date_crse_instruct_snapshot {
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
    sql: ${TABLE}."modified date CRSE_INSTRUCT_SNAPSHOT" ;;
  }

  dimension_group: modified_date_period {
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
    sql: ${TABLE}."modified date PERIOD" ;;
  }

  dimension_group: modified_date_staff_snapshot {
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
    sql: ${TABLE}."modified date STAFF_SNAPSHOT" ;;
  }

  dimension_group: original_hire {
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
    sql: ${TABLE}."Original Hire Date" ;;
  }

  dimension: period_key__enrollment_period_marking_period_number {
    type: number
    sql: ${TABLE}."PERIOD KEY  Enrollment Period Marking Period Number" ;;
  }

  dimension: period_key__school_year {
    type: number
    sql: ${TABLE}."PERIOD KEY  School Year" ;;
  }

  dimension: period_level {
    type: string
    sql: ${TABLE}."Period Level" ;;
  }

  dimension: period_level_type {
    type: string
    sql: ${TABLE}."Period Level Type" ;;
  }

  dimension: pre_ap_course {
    type: string
    sql: ${TABLE}."PreAP Course" ;;
  }

  dimension: primary_location_id {
    type: string
    sql: ${TABLE}."Primary Location ID" ;;
  }

  dimension: primary_location_name {
    type: string
    sql: ${TABLE}."Primary Location Name" ;;
  }

  dimension: remedial_course {
    type: string
    sql: ${TABLE}."Remedial Course" ;;
  }

  dimension: remedial_indicator {
    type: string
    sql: ${TABLE}."Remedial Indicator" ;;
  }

  dimension: school_year {
    type: date
    sql: ${TABLE}."School Year" ;;
  }

  dimension: school_year_designation {
    type: string
    sql: ${TABLE}."School Year Designation" ;;
  }

  dimension: semester {
    type: string
    sql: ${TABLE}.Semester ;;
  }

  dimension: short_course_description {
    type: string
    sql: ${TABLE}."Short Course Description" ;;
  }

  dimension: special_ed_course {
    type: string
    sql: ${TABLE}."Special Ed Course" ;;
  }

  dimension: special_ed_indicator {
    type: string
    sql: ${TABLE}."Special Ed Indicator" ;;
  }

  dimension: staff_e_mail_address {
    type: string
    sql: ${TABLE}."Staff eMail Address" ;;
  }

  dimension: staff_id {
    type: string
    sql: ${TABLE}."Staff ID" ;;
  }

  dimension: staff_key_other_instructor_1 {
    type: number
    sql: ${TABLE}."STAFF KEY Other Instructor 1" ;;
  }

  dimension: staff_key_other_instructor_2 {
    type: number
    sql: ${TABLE}."STAFF KEY Other Instructor 2" ;;
  }

  dimension: staff_key_primary_instructor {
    type: number
    sql: ${TABLE}."STAFF KEY Primary Instructor" ;;
  }

  dimension: staff_snapshot_date {
    type: date
    sql: ${TABLE}."Staff Snapshot Date" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."Start Date" ;;
  }

  dimension_group: start_date_current_year {
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
    sql: ${TABLE}."Start Date Current Year" ;;
  }

  dimension: state_course_course_id {
    type: string
    sql: ${TABLE}."State Course Course ID" ;;
  }

  dimension: state_course_district_key {
    type: number
    sql: ${TABLE}."State Course District Key" ;;
  }

  dimension: state_course_full_course_name {
    type: string
    sql: ${TABLE}."State Course Full Course Name" ;;
  }

  dimension_group: state_course_modified_date_course {
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
    sql: ${TABLE}."State Course modified date COURSE" ;;
  }

  dimension_group: state_course_school_year {
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
    sql: ${TABLE}."State Course School Year" ;;
  }

  dimension: state_district_code {
    type: string
    sql: ${TABLE}."State District Code" ;;
  }

  dimension: state_location_id {
    type: string
    sql: ${TABLE}."State Location ID" ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}."Student ID" ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}."STUDENT KEY" ;;
  }

  dimension: student_snapshot_date {
    type: date
    sql: ${TABLE}."Student Snapshot Date" ;;
  }

  dimension: student_snapshot_key {
    type: number
    sql: ${TABLE}."STUDENT SNAPSHOT KEY" ;;
  }

  dimension: student_snapshot_key_ce {
    type: number
    sql: ${TABLE}."STUDENT SNAPSHOT KEY CE" ;;
  }

  dimension: total_years_of_experience {
    type: number
    sql: ${TABLE}."Total Years of Experience" ;;
  }

  dimension: total_years_of_experience_in_district {
    type: number
    sql: ${TABLE}."Total Years of Experience in District" ;;
  }

  dimension: work_based_learning_course {
    type: string
    sql: ${TABLE}."Work Based Learning Course" ;;
  }

  dimension: year_number {
    type: number
    sql: ${TABLE}."Year Number" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      full_course_name,
      primary_location_name,
      state_course_full_course_name,
      locations.location_legal_name,
      locations.full_location_name,
      locations.common_location_name,
      locations.loc_county_name,
      locations.location_administrator_first_name,
      locations.location_administrator_last_name,
      locations.location_administrator_name,
      locations.location_mailing_state_name,
      locations.location_state_name,
      locations.prior_state_location_id
    ]
  }
}
