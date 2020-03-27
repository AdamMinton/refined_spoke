include: "//refined_hub/explores/*.lkml"

explore: order_items {
  extends: [order_items_hub]
  sql_always_where: 1=1 ;;
}
