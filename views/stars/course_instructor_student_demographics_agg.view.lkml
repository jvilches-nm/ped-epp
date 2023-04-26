view: course_instructor_student_demographics_agg {
  sql_table_name: stars.course_instructor_student_demographics_agg ;;
  label: "Instructor Courses - Student Demographics"

  measure: black_student_count {
    type: sum
    sql: ${TABLE}.black_student_count ;;
  }

  dimension: course_section_number {
    type: string
    sql: ${TABLE}.course_section_number ;;
  }

  dimension: course_subject_area {
    type: string
    sql: ${TABLE}.course_subject_area ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.district_key ;;
  }

  measure: english_learner_student_count {
    type: sum
    sql: ${TABLE}.english_learner_student_count ;;
  }

  measure: female_student_count {
    type: sum
    sql: ${TABLE}.female_student_count ;;
  }

  measure: frl_student_count {
    type: sum
    sql: ${TABLE}.frl_student_count ;;
  }

  dimension: full_course_name {
    type: string
    sql: ${TABLE}.full_course_name ;;
  }

  measure: hispanic_student_count {
    type: sum
    sql: ${TABLE}.hispanic_student_count ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.location_key ;;
  }

  measure: male_student_count {
    type: sum
    sql: ${TABLE}.male_student_count ;;
  }

  measure: native_american_student_count {
    type: sum
    sql: ${TABLE}.native_american_student_count ;;
  }

  measure: other_race_student_count {
    type: sum
    sql: ${TABLE}.other_race_student_count ;;
  }

  dimension: school_year_date {
    type: date
    sql: ${TABLE}.school_year ;;
  }

  dimension: school_year_designation {
    type: string
    hidden: yes
    sql: ${TABLE}.school_year_designation ;;
  }

  dimension: semester {
    type: string
    sql: ${TABLE}.semester ;;
  }

  dimension: snapshot_date {
    type: date
    hidden: yes
    sql: ${TABLE}.snapshot_date ;;
  }

  dimension: staff_key {
    type: number
    hidden: yes
    sql: ${TABLE}.staff_key ;;
  }

  measure: student_count {
    type: sum
    sql: ${TABLE}.student_count ;;
  }

  measure: white_student_count {
    type: sum
    sql: ${TABLE}.white_student_count ;;
  }

}
