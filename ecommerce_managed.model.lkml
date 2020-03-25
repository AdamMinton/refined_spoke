connection: "thelook"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "//refined_hub/explores/*.lkml"
# include: "//refined_hub/views/*.lkml"
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: +order_items {
  sql_always_where: 1=1 ;;
}
