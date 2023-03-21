view: school_principal {

   derived_table: {
     sql: select * from
             (select sas.district_key, sas.location_key, sas.school_year, sas.staff_snapshot_date, sas.staff_id, sas.assignment_code, sas.assignment, sas.assignment_category, sas.staff_name, ss.staff_email_addr,
              rank () over (partition by sas.district_code, sas.location_id, sas.school_year, sas.staff_snapshot_date order by assignment_category desc, assignment desc) principal_rank
                 from stars.staff_assignment_snapshot sas
                      inner join stars.staff_snapshot ss on sas.staff_id=ss.staff_id and sas.staff_snapshot_date=ss.snapshot_date
                 where (assignment_category= 'Principal' or (assignment_category='Administrator' and assignment='Superintendent'))) x
        where principal_rank=1 ;;
      datagroup_trigger: ped_epp_default_datagroup
      indexes: ["district_key", "location_key", "school_year", "staff_snapshot_date", "staff_id"]
   }

   dimension: district_key {
      hidden: yes
      type: number
      sql: ${TABLE}.district_key ;;
   }

    dimension: location_key {
      hidden: yes
      type: number
      sql: ${TABLE}.location_key ;;
    }

    dimension: school_year {
      hidden: yes
      type: date
      sql: ${TABLE}.school_year ;;
    }

    dimension: staff_snapshot_date {
      hidden: yes
      type: date
      sql: ${TABLE}.staff_snapshot_date ;;
    }

    dimension: staff_id {
      hidden: yes
      type: string
      sql: ${TABLE}.staff_id ;;
    }

    dimension: assignment_code {
      hidden: yes
      type: number
      sql: ${TABLE}.assignment_code ;;
    }

    dimension: principal_assignment {
      hidden: no
      type: string
      sql: ${TABLE}.assignment ;;
    }

    dimension: principal_name {
      hidden: no
      type: string
      sql: ${TABLE}.staff_name ;;
    }

  dimension: principal_email {
    hidden: no
    type: string
    sql: ${TABLE}.staff_email_addr ;;
  }

  dimension: assignment_category {
      hidden: yes
      type: string
      sql: ${TABLE}.assignment_category ;;
    }

  }
