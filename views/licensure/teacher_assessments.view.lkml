view: teacher_assessments {
  sql_table_name: licensure.teacher_assessments ;;

  dimension: cert_num {
    type: string
    sql: ${TABLE}.certNum ;;
  }

  dimension: exam_code {
    type: string
    sql: ${TABLE}.examCode ;;
  }

  dimension_group: exam {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.examDate ;;
  }

  dimension: exam_desc {
    type: string
    sql: ${TABLE}.examDesc ;;
  }

  dimension: exam_pass_fail {
    type: string
    sql: ${TABLE}.examPassFail ;;
  }

  dimension: exam_score {
    type: number
    sql: ${TABLE}.examScore ;;
  }

  dimension: exam_vendor_code {
    type: string
    hidden: yes
    sql: ${TABLE}.examVendorCode ;;
  }

  dimension: exam_vendor_name {
    type: string
    sql: ${TABLE}.examVendorName ;;
  }

  dimension: first_name {
    type: string
    hidden: yes
    sql: ${TABLE}.firstName ;;
  }

  dimension: last_name {
    type: string
    hidden: yes
    sql: ${TABLE}.lastName ;;
  }

  dimension: mi {
    type: string
    hidden: yes
    sql: ${TABLE}.MI ;;
  }

  dimension: staff_id {
    type: string
    hidden: yes
    sql: ${TABLE}.staffID ;;
  }

  dimension: staff_id_last_five {
    type: string
    sql: RIGHT(${TABLE}.STAFFID, 5) ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name, exam_vendor_name]
  }
}
