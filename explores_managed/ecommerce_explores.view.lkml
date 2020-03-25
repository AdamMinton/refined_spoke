include: "/views_managed/*.lkml"                # include all views in the views/ folder in this project
include: "//refined_hub/explores/*.lkml"

explore: +order_items {
  sql_always_where: 1=1 ;;
}
