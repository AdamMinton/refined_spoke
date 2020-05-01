connection: "thelook"

# Option 1 - Start from Hub Only
# include: "//refined_hub/explores/*.lkml"
# Use this if only want to use the hub to build this one-off analysis

# Option 2 - Start from Hub and Managed Views
# include: "/views_managed/*.view.lkml"
# Use this to include only the managed views from this spoke

# Option 3 - Start from All Managed LookML
# include: "/explores_managed/*.lkml"
# Use this to work off of the completed managed spoke.

# Option 4 - Include only the necessary Explore file
include: "/explores_managed/ecommerce_order_items.view.lkml"

# Always do this
include: "/ecommerce_one_off_analysis/*.lkml"
#this adds all new refinements contained in this one-off analysis folder

# Note: Use Model Sets to restrict this model's explores to only a subset of team members
# Note: Including explore folders will also include all views necessary to build those explores


explore: +order_items {
  join: crazy_ndt {
    sql_on: ${order_items.user_id} = ${crazy_ndt.user_id} ;;
    relationship: many_to_one
    type: inner
  }
}
