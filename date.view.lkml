view: date {
  sql_table_name: public.date ;;

  dimension: businessday {
    type: number
    sql: ${TABLE}.businessday ;;
  }

  dimension: datekey {
    type: number
    sql: ${TABLE}.datekey ;;
  }

  dimension: dayabbrev {
    type: string
    sql: ${TABLE}.dayabbrev ;;
  }

  dimension: dayname {
    type: string
    sql: ${TABLE}.dayname ;;
  }

  dimension: daynuminmonth {
    type: number
    sql: ${TABLE}.daynuminmonth ;;
  }

  dimension: dayofweek {
    type: number
    sql: ${TABLE}.dayofweek ;;
  }

  dimension: fiscalmonth {
    type: number
    sql: ${TABLE}.fiscalmonth ;;
  }

  dimension: fiscalquarter {
    type: number
    sql: ${TABLE}.fiscalquarter ;;
  }

  dimension: fiscalyear {
    type: number
    sql: ${TABLE}.fiscalyear ;;
  }

  dimension_group: fulldate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fulldate ;;
  }

  dimension: lastdayinmonthflag {
    type: string
    sql: ${TABLE}.lastdayinmonthflag ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: monthabbrev {
    type: string
    sql: ${TABLE}.monthabbrev ;;
  }

  dimension: monthname {
    type: string
    sql: ${TABLE}.monthname ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.quarter ;;
  }

  dimension_group: samedayyearagodate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.samedayyearagodate ;;
  }

  dimension_group: weekbegindate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.weekbegindate ;;
  }

  dimension: weekbegindatekey {
    type: number
    sql: ${TABLE}.weekbegindatekey ;;
  }

  dimension: weekdayflag {
    type: string
    sql: ${TABLE}.weekdayflag ;;
  }

  dimension: weeknuminyear {
    type: number
    sql: ${TABLE}.weeknuminyear ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: yearmo {
    type: string
    sql: ${TABLE}.yearmo;;
  }

  measure: count {
    type: count_distinct
    drill_fields: [dayname, monthname]
  }
}
