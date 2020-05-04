include: "//refined_hub/explores/*.lkml"
include: "/views_managed/*.lkml"

explore: order_items {
  group_label: "Refined Managed"
  extends: [order_items_hub]
  sql_always_where: 1=1 ;;
  join: user_order_facts {
    type: inner
    sql_on: ${order_items.user_id} = ${user_order_facts.user_id};;
    relationship: many_to_one
  }
}
