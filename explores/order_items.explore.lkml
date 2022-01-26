include: "//refined_hub/explores/order_items.explore"
include: "/views/order_items.view"

#Option you can utilize a naming standard for hub explores that are only intended to be extended
explore: order_items {
  extends: [hub_order_items]
  group_label: "Refined Managed"

}
