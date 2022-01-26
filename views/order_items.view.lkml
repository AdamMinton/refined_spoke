include: "//refined_hub/views/order_items.view.lkml"

view: +order_items {

  #new dimensions and measures can be defined that are unique to this departments version of the explore
  dimension: is_complete {
    type: string
    sql: ${status} = 'Complete' ;;
  }
 }
