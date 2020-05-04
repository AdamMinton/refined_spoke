# The order items view is modified in a way only necessary for the NDT, so the refinement was included here
include: "/views_managed/order_items.view.lkml"

view: +order_items {
  measure: min_created_date_raw  {
    hidden:yes
    type:date_raw
    sql: min(${created_raw}) ;;
  }
  measure: max_created_date_raw  {
    hidden:yes
    type:date_raw
    sql: max(${created_raw}) ;;
  }
}

view: user_order_facts {
  view_label: "Users"
  derived_table: {
    explore_source: order_items {
      column: user_id {}
      column: lifetime_revenue {field: order_items.total_revenue}
      column: lifetime_order_count {field:order_items.count_orders}
      column: first_order_created_date { field: order_items.min_created_date_raw  }
      column: latest_order_created_date { field: order_items.max_created_date_raw  }

    }
  }
  dimension: user_id {
    hidden: yes
    primary_key: yes
  }
  dimension: lifetime_revenue {}
  dimension: lifetime_order_count {}
  dimension_group: first_order {
    type: time
    timeframes: [date,week,month,year]
    sql: ${TABLE}.first_order_created_date ;;
  }
  dimension_group: most_recent_order {
    type: time
    timeframes: [date,week,month,year]
    sql: ${TABLE}.latest_order_created_date ;;
  }
}
