view: epp_completers_match {
  derived_table: {
    sql: select c.*, x.ped_staff, x.staff_id from epp.epp_completers c
           left outer join (select 'Yes' ped_staff, right(staff_id, 5) staff_id_last_five, staff_birthdate, staff_id
                             from stars.staff_snapshot where school_year>='2017-06-30'
                            group by right(staff_id, 5), staff_birthdate, staff_id) x on x.staff_id_last_five = c.staff_id_last_five and x.staff_birthdate=c.Birthdate ;;
          persist_for: "24 hour"
          indexes: ["staff_id_last_five", "birthdate", "university", "university_id"]
  }
  dimension: ped_staff {
    type: string
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

  dimension: graduation_semester {
    type: string
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
    sql: ${TABLE}.staff_id_last_five ;;
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
      label: "Masked Match Detail"
      url: "https://nmpedpublic.cloud.looker.com/dashboards/485?University%20ID={{ epp_completers_match.university_id._value }}&University={{ epp_completers_match.university._value }}"
          }
    link: {
      label: "Match Detail"
      url: "https://nmpedpublic.cloud.looker.com/dashboards/261?University%20ID={{ epp_completers_match.university_id._value }}&University={{ epp_completers_match.university._value }}"
    }
    }

  dimension: university_id_masked {
    type: string
    primary_key: yes
    sql: 'xxxxxx' + right(${TABLE}.university_id, 3) ;;
    link: {
      label: "Masked Match Detail"
      url: "https://nmpedpublic.cloud.looker.com/dashboards/485?University%20ID={{ epp_completers_match.university_id._value }}&University={{ epp_completers_match.university._value }}"
    }
    link: {
      label: "Match Detail"
      url: "https://nmpedpublic.cloud.looker.com/dashboards/261?University%20ID={{ epp_completers_match.university_id._value }}&University={{ epp_completers_match.university._value }}"
    }
    }


  measure: ped_staff_count {
    type: sum
    sql: case when ${ped_staff}='Yes' then 1 else 0 end ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
