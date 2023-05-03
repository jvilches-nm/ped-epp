view: epp_completers_match {
  derived_table: {
    sql:select c.*, x.ped_staff, x.staff_id, x.min_school_year, x.max_school_year, x.staff_years, case when x.max_school_year = '2023' then 'Yes-Current' when x.max_school_year >= (year(getdate())-6) then 'Yes-In Past 5 Years' when x.max_school_year >= (year(getdate())-10) then 'Yes-More Than 5 Years Ago' else 'No' end staff_status
           from epp.epp_completers c
           left outer join (select 'Yes' ped_staff, right(staff_id, 5) staff_id_last_five, staff_birthdate, staff_id, count(distinct year(school_year)) staff_years, min(year(school_year)) min_school_year, max(year(school_year)) max_school_year
                             from stars.staff_snapshot
                            group by right(staff_id, 5), staff_birthdate, staff_id) x on x.staff_id_last_five = right('00000'+ c.staff_id_last_five, 5) and x.staff_birthdate=c.Birthdate ;;
          persist_for: "24 hour"
          indexes: ["staff_id_last_five", "birthdate", "university", "university_id"]
  }
  dimension: ped_staff {
    type: string
    hidden: yes
    description: "Have been on staff in the last five years."
    sql: case when ${TABLE}.ped_staff='Yes' then 'Yes' else 'No' end ;;
  }

  dimension: staff_id {
    type: string
    sql: ${TABLE}.staff_id ;;
  }

  dimension: staff_birthday_masked {
    type: string
    sql:  'xxxx-xx-xx' + left(${TABLE}.Birthdate,0) ;;
  }

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

  dimension: first_initial {
    type: string
    sql: left(${TABLE}.first_name, 1) ;;
  }

  dimension: graduation {
    type: string
    sql: ${TABLE}.graduation ;;
  }

  dimension: graduation_year {
    type: string
    sql: right(${TABLE}.graduation, 4) ;;
  }

  dimension: graduation_semester_sort {
    type: number
    hidden: yes
    sql: case ${graduation_semester} when 'Spring' then 1 when 'Summer' then 2 when 'Fall' then 3 else 4 end ;;
  }

  dimension: graduation_semester {
    type: string
    order_by_field: graduation_semester_sort
    sql: left(${TABLE}.graduation, len(${TABLE}.graduation)-5) ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: last_initial {
    type: string
    sql: left(${TABLE}.last_name,1) ;;
  }

  dimension: license {
    type: string
    sql: ${TABLE}.license ;;
  }

  dimension: middle_initial {
    type: string
    sql: ${TABLE}.middle_initial ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.last_name + ', ' + ${TABLE}.first_name + ' ' + ${TABLE}.middle_initial ;;
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
    sql: right('0000'+ ${TABLE}.staff_id_last_five, 5) ;;
  }

  dimension: university {
    type: string
    sql: ${TABLE}.University ;;
  }

  dimension: university_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.university_id ;;
    link: {
      label: "Match Detail"
      url: "https://nmpedpublic.cloud.looker.com/dashboards/583?University%20ID={{ epp_completers_match.university_id._value }}"
      }
    }

  dimension: university_id_masked {
    type: string
    primary_key: yes
    sql: 'xxxxxx' + right(${TABLE}.university_id, 3) ;;
    link: {
      label: "Masked Match Detail"
      url: "https://nmpedpublic.cloud.looker.com/dashboards/605?University%20ID={{ epp_completers_match.university_id._value }}"
      }
    }

  dimension:  min_school_year {
    type: string
    hidden: yes
    sql: ${TABLE}.min_school_year ;;
  }

  dimension:  max_school_year {
    type: string
    label: "Last School Year on Staff"
    description: "The most current school year we have data for this staff match."
    sql: ${TABLE}.max_school_year ;;
  }

  dimension: staff_years {
    type: number
    label: "Years on Staff Since 2015"
    sql: ${TABLE}.staff_years ;;
  }

  dimension: staff_status {
    type: string
    label: "Staff Status"
    description: "Staff Status - Yes-Current (Employed in the current school year), Yes-Past 5 (Has been on staff in the past 5 years), Yes-More than 5 Years (Has been on staff between 2015 and 6 years ago), No (Has not been on staff since 2015)"
    sql: ${TABLE}.staff_status ;;
  }

  measure: ped_staff_count_current {
    type: sum
    label: "Staff Count - Current School Year"
    sql: case when ${staff_status}='Yes-Current' then 1 else 0 end ;;
  }

  measure: ped_staff_count_past_5 {
    type: sum
    label: "Staff Count - Past 5 School Years"
    sql: case when ${staff_status}='Yes-Current' then 1 when 'Yes-In Past 5 Years' then 1 else 0 end ;;
  }

  measure: ped_staff_count {
    type: sum
    label: "Staff Count - On Staff Since 2015"
    sql: case when ${staff_status}='No' then 0 else 1 end ;;
  }

  measure: count {
    type: count
  }
}
