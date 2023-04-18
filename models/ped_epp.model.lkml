connection: "dm02"

# include all the views
include: "/views/**/*.view"

datagroup: ped_epp_default_datagroup {
  sql_trigger: SELECT max(modify_date) FROM sys.tables;;
  max_cache_age: "24 hour"
}

persist_with: ped_epp_default_datagroup

explore: epp_completers_match {}

explore: staff_consolidated {
  join: epp_completers_match {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_consolidated.staff_id}=${epp_completers_match.staff_id};;
  }
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_consolidated.district_key} = ${districts.district_key}
      and ${staff_consolidated.school_year} = ${districts.school_year};;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_consolidated.location_key} = ${locations.location_key}
      and ${staff_consolidated.school_year} = ${locations.school_year};;
  }
  join: student_demographics {
    relationship: many_to_one
    type: inner
    sql_on: ${student_demographics.location_key} = ${staff_consolidated.location_key}
        and ${student_demographics.school_year} = ${staff_consolidated.school_year};;
  }
  join: school_principal {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_consolidated.location_key} = ${school_principal.location_key}
      and ${staff_consolidated.school_year} = ${school_principal.school_year}
      and ${staff_consolidated.snapshot_date} = ${school_principal.staff_snapshot_date};;
  }
}

explore: license_user_endorsements {
  join: staff_consolidated {
    relationship: many_to_one
    type: inner
    sql_on: ${license_user_endorsements.staff_id} = ${staff_consolidated.staff_id}
    and ${license_user_endorsements.start_date} <= ${staff_consolidated.school_year}
    and ${license_user_endorsements.exp_date} >= ${staff_consolidated.school_year};;
  }

  join: epp_completers_match {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_consolidated.staff_id}=${epp_completers_match.staff_id};;
  }
}

explore: epp_completers {
  join: license_user_endorsements {
    relationship: many_to_one
    type: left_outer
    sql_on: right(${license_user_endorsements.staff_id}, 5) = ${epp_completers.staff_id_last_five}
          and ${license_user_endorsements.last_name} = ${epp_completers.last_name}
          and ${license_user_endorsements.first_name} = ${epp_completers.first_name};;
  }

  join: teacher_assessments {
    relationship: many_to_one
    type: left_outer
    sql_on: ${teacher_assessments.staff_id_last_five} = ${epp_completers.staff_id_last_five}
          and ${teacher_assessments.last_name} = ${epp_completers.last_name}
          and ${teacher_assessments.first_name} = ${epp_completers.first_name};;
  }
}


explore: teacher_assessments {

  join: epp_completers_match {
    relationship: many_to_one
    type: inner
    sql_on: ${teacher_assessments.staff_id}=${epp_completers_match.staff_id};;
  }
}

explore: staff_assignment_snapshot {
   join: epp_completers_match {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_assignment_snapshot.staff_id}=${epp_completers_match.staff_id};;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${districts.district_key} = ${staff_assignment_snapshot.district_key}
         and ${districts.school_year} = ${staff_assignment_snapshot.school_year_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${locations.location_key} = ${staff_assignment_snapshot.location_key}
      and ${locations.school_year} = ${staff_assignment_snapshot.school_year_date};;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_assignment_snapshot.school_year_date}=${period.school_year_end_date} and
      ${staff_assignment_snapshot.staff_snapshot_date}=${period.period_start_date};;
  }
  join: student_demographics {
    relationship: many_to_one
    type: left_outer
    sql_on: ${student_demographics.district_key} = ${staff_assignment_snapshot.district_key}
      and ${student_demographics.location_key} = ${staff_assignment_snapshot.location_key}
      and ${student_demographics.school_year} = ${staff_assignment_snapshot.school_year_date};;
  }
  join: school_principal {
    relationship: many_to_one
    type: left_outer
    sql_on: ${staff_assignment_snapshot.location_key} = ${school_principal.location_key}
      and ${staff_assignment_snapshot.school_year_date} = ${school_principal.school_year}
      and ${staff_assignment_snapshot.staff_snapshot_date} =  ${school_principal.staff_snapshot_date};;
  }
}

explore: course_instruct_staff_student_snapshot {
  label: "Course Snapshot"
  join: staff_snapshot {
    relationship: many_to_one
    type: inner
    view_label: "Primary Instructor"
    sql_on: ${course_instruct_staff_student_snapshot.staff_key_primary_instructor} = ${staff_snapshot.staff_key}
      and ${course_instruct_staff_student_snapshot.staff_snapshot_date} = ${staff_snapshot.snapshot_date};;
  }
  join: epp_completers_match {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.staff_id}=${epp_completers_match.staff_id};;
  }

  join: student_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${course_instruct_staff_student_snapshot.student_key}=${student_snapshot.student_key}
      and ${course_instruct_staff_student_snapshot.student_snapshot_date} = ${student_snapshot.student_snapshot_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${course_instruct_staff_student_snapshot.location_key} = ${locations.location_key}
      and ${course_instruct_staff_student_snapshot.school_year} = ${locations.school_year};;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${course_instruct_staff_student_snapshot.district_key} = ${districts.district_key}
      and ${course_instruct_staff_student_snapshot.school_year} = ${districts.school_year};;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${course_instruct_staff_student_snapshot.school_year}=${period.school_year_end_date} and
      ${course_instruct_staff_student_snapshot.student_snapshot_date}=${period.period_start_date};;
  }
}
