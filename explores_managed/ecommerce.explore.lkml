include: "/views_managed/*.lkml"                # include all views in the views/ folder in this project
include: "//refined_hub/explores/*.lkml"


explore: users {
  extends: [users_hub]
  group_label: "Refined Managed"

  join: user_order_facts {
    type: left_outer
    sql_on: ${users.id} = ${user_order_facts.user_id} ;;
    relationship: one_to_one
  }
}


explore: events {
  extends: [events_hub]
  group_label: "Refined Managed"

}
