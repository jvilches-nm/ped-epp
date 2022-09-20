view: school_principal {

   derived_table: {
     sql: select * from
             (select district_key, location_key, school_year, staff_snapshot_date, staff_id, assignment_code, assignment, assignment_category, staff_name,
              rank () over (partition by district_code, location_id, school_year, staff_snapshot_date order by assignment_category desc, assignment desc) principal_rank
               from stars.staff_assignment_snapshot where (assignment_category= 'Principal' or (assignment_category='Administrator' and assignment='Superintendent'))) x
               where principal_rank=1 ;;
      persist_for: "24 hour"
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

    dimension: assignment_category {
      hidden: yes
      type: string
      sql: ${TABLE}.assignment_category ;;
    }

  }
