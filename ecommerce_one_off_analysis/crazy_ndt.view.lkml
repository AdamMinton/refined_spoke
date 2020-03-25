view: crazy_ndt {
  derived_table: {
    explore_source: order_items {
      column: user_id {}
      column: lifetime_revenue {field: order_items.total_revenue}
    }
  }
  dimension: user_id {}
  dimension: lifetime_revenue {}
  }
