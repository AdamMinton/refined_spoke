include: "/views_managed/*.lkml"                # include all views in the views/ folder in this project
include: "//refined_hub/explores/*.lkml"

explore: users {
  extends: [users_hub]
  group_label: "Refined Managed"

}

explore: events {
  extends: [events_hub]
  group_label: "Refined Managed"

}
