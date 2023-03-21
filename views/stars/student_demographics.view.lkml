view: student_demographics {
   derived_table: {
     sql: select ss.district_key, ss.location_key, ss.school_year, count(*) enrollment, sum(case when ss.student_gender_code='F' then 1 else 0 end) female_students,
                 sum(case when ss.student_gender_code='M' then 1 else 0 end) male_students,
                 sum(case food_program_participation_code when 'R' then 1 when 'F' then 1 else 0 end) food_program_participants,
                 sum(case when english_proficiency_code='1' then 1 else 0 end) english_learners,
                 sum(case when Student_Race_Ethnicity_Derived='Hispanic' then 1 else 0 end) hispanic_students,
                 sum(case when Student_Race_Ethnicity_Derived='Caucasian' then 1 else 0 end) caucasian_students,
                 sum(case when Student_Race_Ethnicity_Derived='Black or African American' then 1 else 0 end) black_students,
                 sum(case when Student_Race_Ethnicity_Derived='American Indian/Alaskan Native' then 1 else 0 end) native_students,
                 sum(case Student_Race_Ethnicity_Derived when 'Hispanic' then 0 when 'Caucasian' then 0 when 'Black or African American' then 0 when 'American Indian/Alaskan Native' then 0 else 1 end) other_race_students
           from stars.student_snapshot ss
           inner join stars.districts d on d.district_key=ss.district_key and d.school_year=ss.school_year
           inner join stars.locations l on l.location_key=ss.location_key and l.school_year=ss.school_year
           where month(ss.student_snapshot_date)=(select max(ss2.student_snapshot_date) from stars.student_snapshot ss2 where ss2.school_year=ss.school_year)
         group by ss.school_Year, ss.district_Key, ss.location_key;;
     persist_for: "24 hour"
     indexes: ["district_key", "location_key", "school_year"]
   }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.district_key ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.location_key ;;
  }

  dimension: school_year {
    type: date
    hidden: yes
    sql: ${TABLE}.school_year ;;
  }

  dimension: enrollment {
    type: number
    sql: ${TABLE}.enrollment ;;
  }

  dimension: female_students {
    type: number
    sql: ${TABLE}.female_students ;;
  }

  dimension: female_percentage {
    type: number
    value_format: "0.0%"
    sql: ${TABLE}.female_students*1.0/${TABLE}.enrollment ;;
  }

  dimension: male_students {
    type: number
    sql: ${TABLE}.male_students ;;
  }

  dimension: male_percentage {
    type: number
    value_format: "0.0%"
    sql: ${TABLE}.male_students*1.0/${TABLE}.enrollment ;;
  }

  dimension: food_program_participants {
    type: number
    sql: ${TABLE}.food_program_participants ;;
  }

  dimension: food_program_participant_percentage {
    type: number
    value_format: "0.0%"
    sql: ${TABLE}.food_program_participants*1.0/${TABLE}.enrollment ;;
  }

  dimension: english_learners {
    type: number
    sql: ${TABLE}.english_learners ;;
  }

  dimension: english_learner_percentage {
    type: number
    value_format: "0.0%"
    sql: ${TABLE}.english_learners*1.0/${TABLE}.enrollment ;;
  }

  dimension: hispanic_students {
    type: number
    sql: ${TABLE}.hispanic_students ;;
  }

  dimension: hispanic_percentage {
    type: number
    value_format: "0.0%"
    sql: ${TABLE}.hispanic_students*1.0/${TABLE}.enrollment ;;
  }

  dimension: caucasian_students {
    type: number
    sql: ${TABLE}.caucasian_students ;;
  }

  dimension: caucasian_percentage {
    type: number
    value_format: "0.0%"
    sql: ${TABLE}.caucasian_students*1.0/${TABLE}.enrollment ;;
  }

  dimension: black_students {
    type: number
    sql: ${TABLE}.black_students ;;
  }

  dimension: black_percentage {
    type: number
    value_format: "0.0%"
    sql: ${TABLE}.black_students*1.0/${TABLE}.enrollment ;;
  }

  dimension: native_students {
    type: number
    sql: ${TABLE}.native_students ;;
  }

  dimension: native_percentage {
    type: number
    value_format: "0.0%"
    sql: ${TABLE}.native_students*1.0/${TABLE}.enrollment ;;
  }

  dimension: other_race_students {
    type: number
    sql: ${TABLE}.other_race_students ;;
  }

  dimension: other_race_percentage {
    type: number
    value_format: "0.0%"
    sql: ${TABLE}.other_race_students*1.0/${TABLE}.enrollment ;;
  }

}
